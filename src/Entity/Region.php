<?php

namespace App\Entity;

use App\Repository\RegionRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=RegionRepository::class)
 */
class Region
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
    private $code_secteur;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nom_region;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCodeSecteur(): ?int
    {
        return $this->code_secteur;
    }

    public function setCodeSecteur(int $code_secteur): self
    {
        $this->code_secteur = $code_secteur;

        return $this;
    }

    public function getNomRegion(): ?string
    {
        return $this->nom_region;
    }

    public function setNomRegion(string $nom_region): self
    {
        $this->nom_region = $nom_region;

        return $this;
    }
}
