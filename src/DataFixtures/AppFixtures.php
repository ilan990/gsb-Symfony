<?php

namespace App\DataFixtures;

// src/DataFixtures/AppFixtures.php
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;


class AppFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    // ...
    public function load(ObjectManager $manager)
    {
        $tabUser=['ilan_assouline@hotmail.fr'];
        foreach ($tabUser as $mail) {
            $user = new User();
            $user->setEmail($mail);

            //On hash le password 'azerty'
            $password = $this->hasher->hashPassword($user, 'azerty');
            $user->setPassword($password);

            //On envoie en base de données
            $manager->persist($user);
            $manager->flush();
        }
    }
}

