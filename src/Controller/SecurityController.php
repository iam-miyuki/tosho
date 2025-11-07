<?php

namespace App\Controller;

use Doctrine\ORM\EntityManager;
use App\Form\Security\EmailForm;
use App\Repository\UserRepository;
use App\Form\Security\ResetPwdForm;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class SecurityController extends AbstractController
{
    #[Route(path: '/login', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error,
        ]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
    
    #[Route(path: '/forget', name:'forget-pwd')]
    public function forgetPwd(
        Request $request,
        UserRepository $userRepository,
        EntityManagerInterface $em,
        MailerInterface $mailer
    ): Response {

        $emailForm = $this->createForm(EmailForm::class);
        $emailForm->handleRequest($request);

        if ($emailForm->isSubmitted() && $emailForm->isValid()) {
            $userMail = $emailForm->get('email')->getData();
            $user = $userRepository->findOneByEmail($userMail);

            if ($user) {
                // Générer un token unique
                $resetToken = bin2hex(random_bytes(32));
                $user->setResetToken($resetToken);
                $user->setResetTokenCreatedAt(new \DateTimeImmutable());

                $em->persist($user);
                $em->flush();

                // Générer le lien absolu
                $resetLink = $this->generateUrl(
                    'reset-pwd', 
                    ['token' => $resetToken], 
                    true
                );

                // Envoyer l'email
                $email = (new TemplatedEmail())
                    ->from('tosho@mail.com')
                    ->to($user->getEmail())
                    ->subject('Réinitialisation de votre mot de passe')
                    ->htmlTemplate('security/email.html.twig')
                    ->context([
                        'user' => $user,
                        'resetLink' => $resetLink,
                    ]);

                $mailer->send($email);

                $this->addFlash('success', 'Un email de réinitialisation a été envoyé.');
                return $this->redirectToRoute('app_login');
            }

            $this->addFlash('error', 'Adresse email non trouvée.');
        }

        return $this->render('security/forget.html.twig', [
            'emailForm' => $emailForm->createView()
        ]);
    }

    #[Route(path: '/reset/{token}', name:'reset-pwd')]
    public function resetPwd(
        string $token,
        Request $request,
        UserRepository $userRepository,
        UserPasswordHasherInterface $hasher,
        EntityManagerInterface $em
    ): Response {

        $user = $userRepository->findOneBy(['resetToken' => $token]);

        if (!$user) {
            $this->addFlash('error', 'Lien invalide ou expiré.');
            return $this->redirectToRoute('app_login');
        }

        // Vérifier si le token est encore valide (1h)
        if ($user->getResetTokenCreatedAt() < new \DateTimeImmutable('-1 hour')) {
            $this->addFlash('error', 'Le lien a expiré.');
            return $this->redirectToRoute('forget-pwd');
        }

        $resetForm = $this->createForm(ResetPwdForm::class);
        $resetForm->handleRequest($request);

        if ($resetForm->isSubmitted() && $resetForm->isValid()) {
            $newPwd = $resetForm->get('newPwd')->getData();
            $confirm = $resetForm->get('confirm')->getData();

            if ($newPwd !== $confirm) {
                $this->addFlash('error', 'Les mots de passe ne correspondent pas.');
            } else {
                $user->setPassword($hasher->hashPassword($user, $newPwd));
                $user->setResetToken(null);
                $user->setResetTokenCreatedAt(null);

                $em->flush();

                $this->addFlash('success', 'Mot de passe réinitialisé avec succès !');
                return $this->redirectToRoute('app_login');
            }
        }

        return $this->render('security/reset.html.twig', [
            'resetForm' => $resetForm->createView()
        ]);
    }
}
