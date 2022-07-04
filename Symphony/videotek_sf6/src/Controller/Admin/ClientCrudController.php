<?php

namespace App\Controller\Admin;

use App\Entity\Client;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ClientCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Client::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            TextField::new('nom_client', 'Nom'),
            TextField::new('prenom_client', 'Prénom'),
            TextField::new('adresse_client', 'Adresse'),
            IntegerField::new('cp_client', 'Code Postal'),
            TextField::new('ville_client', 'Ville'),
            TextField::new('login_client', 'Login'),
            TextField::new('pwd_client', 'Mot de passe')
        ];
    }
    
}
