<?php

namespace App\Controller;

use App\Entity\Travailler;
use App\Form\TravaillerType;
use App\Repository\TravaillerRepository;
use DateTime;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/travailler')]
class TravaillerController extends AbstractController
{
    #[Route('/', name: 'travailler_index', methods: ['GET'])]
    public function index(TravaillerRepository $travaillerRepository): Response
    {
        return $this->render('travailler/index.html.twig', [
            'travaillers' => $travaillerRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'travailler_new', methods: ['GET','POST'])]
    public function new(Request $request, TravaillerRepository $TravaillerRepository): Response
    {

        $travaillerNomVisiteur= $TravaillerRepository -> TravaillerNameVisiteur();
        $travaillerNomRegion= $TravaillerRepository ->TravaillerNameRegion();
        $travailler = new Travailler();

            if ($request->request->get("travailler")) {

                $travailler = new Travailler();

                $travailler->setIdVis($request->request->get("code_visiteur"));
                $theDate    = new \DateTime($request->request->get("travailler")["dateEmbauche"]["year"] .'-'.$request->request->get("travailler")["dateEmbauche"]["month"] . '-' . $request->request->get("travailler")["dateEmbauche"]["day"]);

                $travailler->setDateEmbauche(date_format($theDate, 'Y-d-m'));
                $travailler->setIdRegion($request->request->get("code_region"));
                $travailler->setRoleTra($request->request->get("travailler")["role_tra"]);
                $entityManager = $this->getDoctrine()->getManager();
                $entityManager->persist($travailler);
                $entityManager->flush();
            }
        return $this->renderForm('travailler/new.html.twig', [
            'travailler' => $travailler,
            'visiteur'=>$travaillerNomVisiteur,
            'region'=>$travaillerNomRegion,

        ]);



    }

    #[Route('/{id}', name: 'travailler_show', methods: ['GET'])]
    public function show(Travailler $travailler): Response
    {
        return $this->render('travailler/show.html.twig', [
            'travailler' => $travailler,
        ]);
    }

    #[Route('/{id}/edit', name: 'travailler_edit', methods: ['GET','POST'])]
    public function edit(Request $request, Travailler $travailler): Response
    {
        $form = $this->createForm(TravaillerType::class, $travailler);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('travailler_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('travailler/edit.html.twig', [
            'travailler' => $travailler,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'travailler_delete', methods: ['POST'])]
    public function delete(Request $request, Travailler $travailler): Response
    {
        if ($this->isCsrfTokenValid('delete'.$travailler->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($travailler);
            $entityManager->flush();
        }

        return $this->redirectToRoute('travailler_index', [], Response::HTTP_SEE_OTHER);
    }
}
