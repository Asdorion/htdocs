<?php

namespace App\Entity;

use App\Repository\CityRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CityRepository::class)]
class City
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 35)]
    private $Name;

    #[ORM\ManyToOne(targetEntity: country::class, inversedBy: 'cities')]
    #[ORM\JoinColumn(nullable: false)]
    private $CountryCode;

    #[ORM\Column(type: 'string', length: 20)]
    private $District;

    #[ORM\Column(type: 'integer')]
    private $Population;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->Name;
    }

    public function setName(string $Name): self
    {
        $this->Name = $Name;

        return $this;
    }

    public function getCountryCode(): ?country
    {
        return $this->CountryCode;
    }

    public function setCountryCode(?country $CountryCode): self
    {
        $this->CountryCode = $CountryCode;

        return $this;
    }

    public function getDistrict(): ?string
    {
        return $this->District;
    }

    public function setDistrict(string $District): self
    {
        $this->District = $District;

        return $this;
    }

    public function getPopulation(): ?int
    {
        return $this->Population;
    }

    public function setPopulation(int $Population): self
    {
        $this->Population = $Population;

        return $this;
    }
}
