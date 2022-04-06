<?php

namespace App\Controller;

use App\Entity\Travailler;
use App\Repository\TravaillerRepository;
use App\Repository\VisiteurRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    #[Route('/ajoutMain', name: 'ajoutMain')]
    public function ajout(): Response
    {
        return $this->render('home/ajout.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
    #[Route('/listeMain', name: 'listeMain')]
    public function liste(): Response
    {
        return $this->render('home/liste.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
    #[Route('/Statistiques', name: 'Statistiques')]
    public function Stats(TravaillerRepository $TravaillerRepository,VisiteurRepository $visiteurRepository): Response
    {
        $travauxParRegion= $TravaillerRepository ->TravauxParRegion();

        $visiteurParAn = $visiteurRepository->VisiteurParAn();
        //Date Embauche Total

        return $this->render('home/stats.html.twig', [
            'controller_name' => 'HomeController',
            'travauxParRegion'=>$travauxParRegion,
            'visiteursParAn'=>$visiteurParAn,
        ]);
    }
}
