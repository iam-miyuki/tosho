<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class StaticController extends AbstractController
{
    #[Route('/', name: 'tosho_home')]
    public function index(): Response
    {
        return $this->render('static/home.html.twig');
    }
    #[Route('/privacy', name: 'privacy')]
    public function privacy(): Response
    {
        return $this->render('static/privacy.html.twig');
    }
    #[Route('/mentions', name: 'mentions')]
    public function mentions(): Response
    {
        return $this->render('static/mentions.html.twig');
    }
    #[Route('/cookies', name: 'cookies')]
    public function cookies(): Response
    {
        return $this->render('static/cookies.html.twig');
    }
}
