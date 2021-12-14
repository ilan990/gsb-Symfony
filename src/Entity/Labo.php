<?php

namespace App\Entity;

use App\Repository\LaboRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=LaboRepository::class)
 */
class Labo
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $chefVente;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getChefVente(): ?string
    {
        return $this->chefVente;
    }

    public function setChefVente(string $chefVente): self
    {
        $this->chefVente = $chefVente;

        return $this;
    }
}
