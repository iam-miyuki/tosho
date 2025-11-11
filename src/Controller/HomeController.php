<?php

namespace App\Controller;

use App\Enum\LoanStatusEnum;
use App\Repository\LoanRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route(path: '/home')]
#[IsGranted('ROLE_USER')]
final class HomeController extends AbstractController
{
    #[Route('/', name: 'librarien_home')]
    public function index(
        LoanRepository $loanRepository
    ): Response
    {
        $activeLoans = $loanRepository->findAllByStatus(LoanStatusEnum::inProgress);
        $overdueLoans = $loanRepository->findAllByStatus(LoanStatusEnum::overdue);
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'activeLoans'=>$activeLoans,
            'overdueLoans'=>$overdueLoans
        ]);
    }
}
