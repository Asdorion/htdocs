<?php

namespace App\Entity;

use App\Repository\CountryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CountryRepository::class)]
class Country
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'string', length: 3)]
    private $Code;

    #[ORM\Column(type: 'string', length: 52)]
    private $Name;

    #[ORM\Column(type: 'string', length: 255)]
    private $Continent;

    #[ORM\Column(type: 'string', length: 26)]
    private $Region;

    #[ORM\Column(type: 'float')]
    private $SurfaceArea;

    #[ORM\Column(type: 'integer', nullable: true)]
    private $IndepYear;

    #[ORM\Column(type: 'integer')]
    private $Population;

    #[ORM\Column(type: 'float', nullable: true)]
    private $LifeExpectancy;

    #[ORM\Column(type: 'float', nullable: true)]
    private $GNP;

    #[ORM\Column(type: 'float', nullable: true)]
    private $GNPOld;

    #[ORM\Column(type: 'string', length: 45)]
    private $LocalName;

    #[ORM\Column(type: 'string', length: 45)]
    private $GovernmentForm;

    #[ORM\Column(type: 'string', length: 60, nullable: true)]
    private $HeadOfState;

    #[ORM\Column(type: 'integer', nullable: true)]
    private $Capital;

    #[ORM\Column(type: 'string', length: 2)]
    private $Code2;

    #[ORM\OneToMany(mappedBy: 'CountryCode', targetEntity: City::class)]
    private $cities;

    public function __construct()
    {
        $this->cities = new ArrayCollection();
    }

    public function getCode(): ?string
    {
        return $this->Code;
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

    public function getContinent(): ?string
    {
        return $this->Continent;
    }

    public function setContinent(string $Continent): self
    {
        $this->Continent = $Continent;

        return $this;
    }

    public function getRegion(): ?string
    {
        return $this->Region;
    }

    public function setRegion(string $Region): self
    {
        $this->Region = $Region;

        return $this;
    }

    public function getSurfaceArea(): ?float
    {
        return $this->SurfaceArea;
    }

    public function setSurfaceArea(float $SurfaceArea): self
    {
        $this->SurfaceArea = $SurfaceArea;

        return $this;
    }

    public function getIndepYear(): ?int
    {
        return $this->IndepYear;
    }

    public function setIndepYear(?int $IndepYear): self
    {
        $this->IndepYear = $IndepYear;

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

    public function getLifeExpectancy(): ?float
    {
        return $this->LifeExpectancy;
    }

    public function setLifeExpectancy(?float $LifeExpectancy): self
    {
        $this->LifeExpectancy = $LifeExpectancy;

        return $this;
    }

    public function getGNP(): ?float
    {
        return $this->GNP;
    }

    public function setGNP(?float $GNP): self
    {
        $this->GNP = $GNP;

        return $this;
    }

    public function getGNPOld(): ?float
    {
        return $this->GNPOld;
    }

    public function setGNPOld(?float $GNPOld): self
    {
        $this->GNPOld = $GNPOld;

        return $this;
    }

    public function getLocalName(): ?string
    {
        return $this->LocalName;
    }

    public function setLocalName(string $LocalName): self
    {
        $this->LocalName = $LocalName;

        return $this;
    }

    public function getGovernmentForm(): ?string
    {
        return $this->GovernmentForm;
    }

    public function setGovernmentForm(string $GovernmentForm): self
    {
        $this->GovernmentForm = $GovernmentForm;

        return $this;
    }

    public function getHeadOfState(): ?string
    {
        return $this->HeadOfState;
    }

    public function setHeadOfState(string $HeadOfState): self
    {
        $this->HeadOfState = $HeadOfState;

        return $this;
    }

    public function getCapital(): ?int
    {
        return $this->Capital;
    }

    public function setCapital(?int $Capital): self
    {
        $this->Capital = $Capital;

        return $this;
    }

    public function getCode2(): ?string
    {
        return $this->Code2;
    }

    public function setCode2(string $Code2): self
    {
        $this->Code2 = $Code2;

        return $this;
    }

    /**
     * @return Collection<int, City>
     */
    public function getCities(): Collection
    {
        return $this->cities;
    }

    public function addCity(City $city): self
    {
        if (!$this->cities->contains($city)) {
            $this->cities[] = $city;
            $city->setCountryCode($this);
        }

        return $this;
    }

    public function removeCity(City $city): self
    {
        if ($this->cities->removeElement($city)) {
            // set the owning side to null (unless already changed)
            if ($city->getCountryCode() === $this) {
                $city->setCountryCode(null);
            }
        }

        return $this;
    }
}
