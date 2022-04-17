<?php

namespace App\DataFixtures;

// src/DataFixtures/AppFixtures.php
use App\Entity\Labo;
use App\Entity\Region;
use App\Entity\Secteur;
use App\Entity\Travailler;
use App\Entity\User;
use App\Entity\Visiteur;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;



class DataFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    // ...
    public function load(ObjectManager $manager)
    {
        $secteur =["NORD","SUD","EST","OUEST","PARIS CENTRE"];
        $saveSecteur =[];
        $s=0;
        foreach($secteur as $vSecteur)
        {
            $secteur= new Secteur();
        $secteur->setLibelle($vSecteur);
        $manager->persist($secteur);
        $manager->flush();
        $saveSecteur[$s] = $secteur->getId();
        $s++;
    }
        $faker = Factory::create('fr_FR');

        //Region
        $saveRegion=[];
        for($e=0;$e<= 11;$e++){
            $region = new Region();
            $posSecteur=random_int(0,count($saveSecteur)-1);
            $region->setCodeSecteur($saveSecteur[$posSecteur]);
            $region->setNomRegion($faker->region());
            $manager->persist($region);
            $manager->flush();
            $saveRegion[$e] = $region->getId();
        }

        //Labo
        $saveLabo=[];
        for($i=0;$i<= 50;$i++){
            $labo = new Labo();

            $labo->setNom($faker->company());
            $labo->setChefVente($faker->name);
            $manager->persist($labo);
            $manager->flush();
            $saveLabo[$i] = $labo->getId();
        }

        //visiteur
        $saveVisiteur=[];
        for($i=0;$i<= 50;$i++){
            $visiteur = new Visiteur();
            $visiteur->setNom($faker->firstName());
            $visiteur->setPrenom($faker->lastName());

                $add = $faker->streetAddress();

            $visiteur->setAdresse($add);
            $visiteur->setCodePostal(random_int(10000,99999));
            $visiteur->setVille($faker->city());
            $visiteur->setDateEmbauche($faker->dateTimeBetween('2009/01/01',  '2021/04/26'));
            $posSecteur = random_int(0,(count($saveSecteur)-1));
            $visiteur->setCodeSecteur($saveSecteur[$posSecteur]);
            $posLabo=random_int(0,(count($saveLabo)-1));
            $visiteur->setLaboCode($saveLabo[$posLabo]);
            $manager->persist($visiteur);
            $manager->flush();
            $saveVisiteur[$i] = $visiteur->getId();
        }

        //Travailler

        for($i=0;$i<= 50;$i++){
            $travailler = new Travailler();
            $posRegion = random_int(0,(count($saveRegion) - 1));
            $travailler->setIdRegion($saveRegion[$posRegion]);
            $posVisiteur= random_int(0,(count($saveVisiteur) - 1));
            $travailler->setIdVis($saveVisiteur[$posVisiteur]);
            $travailler->setDateEmbauche($faker->dateTime);
            $travailler->setRoleTra($faker->jobTitle());
            $manager->persist($travailler);
            $manager->flush();
        }
    }

}


