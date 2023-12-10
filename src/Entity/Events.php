<?php

namespace App\Entity;

use App\Repository\EventsRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: EventsRepository::class)]
class Events
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $events_name = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $events_datetime = null;

    #[ORM\Column(length: 255)]
    private ?string $events_description = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $events_image = null;

    #[ORM\Column]
    private ?int $events_capacity = null;

    #[ORM\Column(length: 255)]
    private ?string $events_email = null;

    #[ORM\Column(length: 255)]
    private ?string $events_phonenumber = null;

    // #[ORM\Column(length: 255)]
    // private ?string $events_address = null;

    #[ORM\Column(length: 255)]
    private ?string $events_url = null;

    #[ORM\Column(length: 255)]
    private ?string $events_type = null;

    #[ORM\Column(length: 255)]
    private ?string $location = null;

    #[ORM\Column(length: 255)]
    private ?string $street_name = null;

    #[ORM\Column]
    private ?int $street_number = null;

    #[ORM\Column(length: 255)]
    private ?string $zip_code = null;

    #[ORM\Column(length: 255)]
    private ?string $city = null;

    #[ORM\ManyToOne]
    private ?status $fk_status = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEventsName(): ?string
    {
        return $this->events_name;
    }

    public function setEventsName(string $events_name): static
    {
        $this->events_name = $events_name;

        return $this;
    }

    public function getEventsDatetime(): ?\DateTimeInterface
    {
        return $this->events_datetime;
    }

    public function setEventsDatetime(\DateTimeInterface $events_datetime): static
    {
        $this->events_datetime = $events_datetime;

        return $this;
    }

    public function getEventsDescription(): ?string
    {
        return $this->events_description;
    }

    public function setEventsDescription(string $events_description): static
    {
        $this->events_description = $events_description;

        return $this;
    }

    public function getEventsImage(): ?string
    {
        return $this->events_image;
    }

    public function setEventsImage(?string $events_image): static
    {
        $this->events_image = $events_image;

        return $this;
    }

    public function getEventsCapacity(): ?int
    {
        return $this->events_capacity;
    }

    public function setEventsCapacity(int $events_capacity): static
    {
        $this->events_capacity = $events_capacity;

        return $this;
    }

    public function getEventsEmail(): ?string
    {
        return $this->events_email;
    }

    public function setEventsEmail(string $events_email): static
    {
        $this->events_email = $events_email;

        return $this;
    }

    public function getEventsPhonenumber(): ?string
    {
        return $this->events_phonenumber;
    }

    public function setEventsPhonenumber(string $events_phonenumber): static
    {
        $this->events_phonenumber = $events_phonenumber;

        return $this;
    }

    // public function getEventsAddress(): ?string
    // {
    //     return $this->events_address;
    // }

    // public function setEventsAddress(string $events_address): static
    // {
    //     $this->events_address = $events_address;

    //     return $this;
    // }

    public function getEventsUrl(): ?string
    {
        return $this->events_url;
    }

    public function setEventsUrl(string $events_url): static
    {
        $this->events_url = $events_url;

        return $this;
    }

    public function getEventsType(): ?string
    {
        return $this->events_type;
    }

    public function setEventsType(string $events_type): static
    {
        $this->events_type = $events_type;

        return $this;
    }

    public function getLocation(): ?string
    {
        return $this->location;
    }

    public function setLocation(string $location): static
    {
        $this->location = $location;

        return $this;
    }

    public function getStreetName(): ?string
    {
        return $this->street_name;
    }

    public function setStreetName(string $street_name): static
    {
        $this->street_name = $street_name;

        return $this;
    }

    public function getStreetNumber(): ?int
    {
        return $this->street_number;
    }

    public function setStreetNumber(int $street_number): static
    {
        $this->street_number = $street_number;

        return $this;
    }

    public function getZipCode(): ?string
    {
        return $this->zip_code;
    }

    public function setZipCode(string $zip_code): static
    {
        $this->zip_code = $zip_code;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(string $city): static
    {
        $this->city = $city;

        return $this;
    }

    public function getFkStatus(): ?status
    {
        return $this->fk_status;
    }

    public function setFkStatus(?status $fk_status): static
    {
        $this->fk_status = $fk_status;

        return $this;
    }
}
