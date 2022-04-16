<?php

namespace App\Entity;

use App\Repository\TravaillerRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=TravaillerRepository::class)
 */
class Travailler
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $id_vis;

    /**
     * @ORM\Column(type="date")
     */
    private $dateEmbauche;

    /**
     * @ORM\Column(type="integer")
     */
    private $id_region;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $role_tra;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdVis(): ?int
    {
        return $this->id_vis;
    }

    public function setIdVis(int $id_vis): self
    {
        $this->id_vis = $id_vis;

        return $this;
    }

    public function getDateEmbauche(): ?\DateTimeInterface
    {
        return $this->dateEmbauche;
    }

    public function setDateEmbauche(\DateTimeInterface $dateEmbauche): self
    {
        $this->dateEmbauche = $dateEmbauche;

        return $this;
    }

    public function getIdRegion(): ?int
    {
        return $this->id_region;
    }

    public function setIdRegion(int $id_region): self
    {
        $this->id_region = $id_region;

        return $this;
    }

    public function getRoleTra(): ?string
    {
        return $this->role_tra;
    }

    public function setRoleTra(string $role_tra): self
    {
        $this->role_tra = $role_tra;

        return $this;
    }
}
