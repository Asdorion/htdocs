<?php

namespace App\Controller\Admin;

use App\Entity\Client;
use App\Entity\Film;
use App\Entity\Personne;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    public function __construct(private AdminUrlGenerator $adminGenerator)
    {}


    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        $url = $this->adminGenerator
            ->setController(FilmCrudController::class)
            ->generateUrl();

        return $this->redirect($url);


    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Videotek Sf6');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
        
        yield MenuItem::section('Films');
        yield MenuItem::subMenu('Actions', 'fas fa-bars')->setSubItems([
              MenuItem::linkToCrud('Ajouter un Film', 'fas fa-plus', Film::class)->setAction(Crud::PAGE_NEW),
              MenuItem::linkToCrud('Voir les Films', 'fas fa-eye', Film::class)
        ]);

        yield MenuItem::section('Réalisateurs');
        yield MenuItem::subMenu('Actions', 'fas fa-bars')->setSubItems([
              MenuItem::linkToCrud('Ajouter un Réalisateur', 'fas fa-plus', Personne::class)->setAction(Crud::PAGE_NEW),
              MenuItem::linkToCrud('Voir les Réalisateurs', 'fas fa-eye', Personne::class)
        ]);

        yield MenuItem::section('Clients');
        yield MenuItem::subMenu('Actions', 'fas fa-bars')->setSubItems([
              MenuItem::linkToCrud('Ajouter un Client', 'fas fa-plus', Client::class)->setAction(Crud::PAGE_NEW),
              MenuItem::linkToCrud('Voir les Clients', 'fas fa-eye', Client::class)
        ]);
    }
}
