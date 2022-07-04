<?php

namespace App\Entity;

use App\Repository\CountrylanguageRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CountrylanguageRepository::class)]
class Countrylanguage
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'string', length: 3)]
    private $CountryCode;

    #[ORM\Column(type: 'string', length: 30)]
    private $Language;

    #[ORM\Column(type: 'string', length: 1)]
    private $IsOfficial;

    #[ORM\Column(type: 'float')]
    private $Percentage;

    public function getCountryCode(): ?string
    {
        return $this->CountryCode;
    }

    public function getLanguage(): ?string
    {
        return $this->Language;
    }

    public function setLanguage(string $Language): self
    {
        $this->Language = $Language;

        return $this;
    }

    public function getIsOfficial(): ?string
    {
        return $this->IsOfficial;
    }

    public function setIsOfficial(string $IsOfficial): self
    {
        $this->IsOfficial = $IsOfficial;

        return $this;
    }

    public function getPercentage(): ?float
    {
        return $this->Percentage;
    }

    public function setPercentage(float $Percentage): self
    {
        $this->Percentage = $Percentage;

        return $this;
    }
}
