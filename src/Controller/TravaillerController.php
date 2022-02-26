<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TravaillerController extends AbstractController
{
    #[Route('/travailler', name: 'travailler')]
    public function index(): Response
    {
        return $this->render('travailler/index.html.twig', [
            'controller_name' => 'TravaillerController',
        ]);
    }
}
