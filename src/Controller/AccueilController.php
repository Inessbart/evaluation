<?php

namespace App\Controller;

use App\Repository\ProduitsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccueilController extends AbstractController
{
    /**
     * @Route("/", name="accueil")
     */
    public function index(): Response
    {
        return $this->render('accueil/index.html.twig', [
            'controller_name' => 'AccueilController',
        ]);
    }

    /**
     * @Route("accueil", name="show_product")
     */
    public function showProduits(ProduitsRepository $produitsRepository): Response
    {
        $produits = $produitsRepository->findAll();

        if(!$produits){
            throw $this->createNotFoundException("Aucun produit dans la bdd");
        }

        return $this->render('accueil/index.html.twig',[
            'produits'=> $produits,
        ]);
    }
}
