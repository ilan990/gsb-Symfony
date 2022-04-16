<?php

namespace App\Controller;

use App\Entity\Visiteur;
use App\Form\Visiteur2Type;
use App\Repository\VisiteurRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/visiteur')]
class VisiteurController extends AbstractController
{
    #[Route('/', name: 'visiteur_index', methods: ['GET'])]
    public function index(VisiteurRepository $visiteurRepository): Response
    {
        $visitorAll = $visiteurRepository->findByLabAndSecteur();
        return $this->render('visiteur/index.html.twig', [
            'visiteurs' => $visitorAll,
        ]);
    }

    #[Route('/new', name: 'visiteur_new', methods: ['GET','POST'])]
    public function new(Request $request,VisiteurRepository $visiteurRepository): Response
    {
        $nameSecteur = $visiteurRepository->NameSec();
        $nameLabo = $visiteurRepository->NameLab();
        $visiteur = new Visiteur();

        if ($request->request->get("visiteur2")) {
            $visiteur = new Visiteur();
            $visiteur->setNom($request->request->get('visiteur2')['nom']);
            $visiteur->setPrenom($request->request->get('visiteur2')['prenom']);
            $visiteur->setAdresse($request->request->get('visiteur2')['adresse']);
            $visiteur->setCodePostal($request->request->get('visiteur2')['codePostal']);
            $visiteur->setVille($request->request->get('visiteur2')['ville']);
            $theDate    = \DateTime::createFromFormat('Y-m-d',$request->request->get("visiteur2")["dateEmbauche"]['date']["year"] .'-'.$request->request->get("visiteur2")["dateEmbauche"]['date']["month"] . '-' . $request->request->get("visiteur2")["dateEmbauche"]['date']["day"]);
            $visiteur->setDateEmbauche($theDate);
            $visiteur->setCodeSecteur($request->request->get('code_secteur'));
            $visiteur->setLaboCode($request->request->get('code_labo'));
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($visiteur);
            $entityManager->flush();

            return $this->redirectToRoute('visiteur_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('visiteur/new.html.twig', [
            'visiteur' => $visiteur,
            "nameSecteur"=>$nameSecteur,
            'nameLabo'=>$nameLabo,
        ]);
    }

    #[Route('/{id}', name: 'visiteur_show', methods: ['GET'])]
    public function show(Visiteur $visiteur): Response
    {
        return $this->render('visiteur/show.html.twig', [
            'visiteur' => $visiteur,
        ]);
    }

    #[Route('/{id}/edit', name: 'visiteur_edit', methods: ['GET','POST'])]
    public function edit(Request $request, Visiteur $visiteur): Response
    {
        $form = $this->createForm(Visiteur2Type::class, $visiteur);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('visiteur_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('visiteur/edit.html.twig', [
            'visiteur' => $visiteur,
            'form' => $form,
        ]);
    }

   /** #[Route('/{id}', name: 'visiteur_delete', methods: ['POST'])]
    public function delete(Request $request, Visiteur $visiteur): Response
    {
        if ($this->isCsrfTokenValid('delete'.$visiteur->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($visiteur);
            $entityManager->flush();
        }

        return $this->redirectToRoute('visiteur_index', [], Response::HTTP_SEE_OTHER);
    }*/
}
