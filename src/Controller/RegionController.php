<?php

namespace App\Controller;

use App\Entity\Region;
use App\Form\RegionType;
use App\Repository\RegionRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/region')]
class RegionController extends AbstractController
{
    #[Route('/', name: 'region_index', methods: ['GET'])]
    public function index(RegionRepository $regionRepository): Response
    {

        $regionAll = $regionRepository->findBySecteur();

        return $this->render('region/index.html.twig', [
            'regions' => $regionAll,
        ]);
    }

    #[Route('/new', name: 'region_new', methods: ['GET','POST'])]
    public function new(Request $request, RegionRepository $regionRepository): Response
    {


        $nameSecteur = $regionRepository -> NameSecteur();

        $region= new Region();

        if ($request->request->get("region")){
            $region= new Region();

            $region->setCodeSecteur($request->request->get("code_secteur"));
            $region->setNomRegion($request->request->get("region")["nom_region"]);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($region);
            $entityManager->flush();

            return $this->redirectToRoute('region_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('region/new.html.twig', [
            //'form' => $form,
            'nameSecteur' => $nameSecteur,
            'region' => $region,
        ]);

    }

    #[Route('/{id}', name: 'region_show', methods: ['GET'])]
    public function show(Region $region): Response
    {
        return $this->render('region/show.html.twig', [
            'region' => $region,
        ]);
    }

    #[Route('/{id}/edit', name: 'region_edit', methods: ['GET','POST'])]
    public function edit(Request $request, Region $region, RegionRepository $regionRepository): Response
    {
        $nameSecteur = $regionRepository -> NameSecteur();

        


        if ($request->request->get("region")){


            $region->setCodeSecteur($request->request->get("code_secteur"));
            $region->setNomRegion($request->request->get("region")["nom_region"]);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($region);
            $entityManager->flush();

            return $this->redirectToRoute('region_index', [], Response::HTTP_SEE_OTHER);
        }
        /**     $form = $this->createForm(RegionType::class, $region);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('region_index', [], Response::HTTP_SEE_OTHER);
        }
**/
        return $this->renderForm('region/edit.html.twig', [
            'region' => $region,
            //'form' => $form,
            'nameSecteur' => $nameSecteur,
        ]);
    }

   /** #[Route('/{id}', name: 'region_delete', methods: ['POST'])]
    public function delete(Request $request, Region $region): Response
    {
        if ($this->isCsrfTokenValid('delete'.$region->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($region);
            $entityManager->flush();
        }

        return $this->redirectToRoute('region_index', [], Response::HTTP_SEE_OTHER);
    } */
}
