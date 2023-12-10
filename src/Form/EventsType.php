<?php

namespace App\Form;

use App\Entity\Events;
use App\Entity\status;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;



use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('events_name', null, [
                'attr' => ['class' => 'form-control', "id" => "CreateForm", "placeholder" => " Please type the event's name"],
                'label' => 'Name'
            ])
            ->add('events_datetime', null, [
                'attr' => ['class' => 'form-control'],
                'widget' => "single_text",
                'label' => 'Date'
            ])
            ->add('events_description', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'Description'
            ])
            ->add('location', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'location'


            ])
            ->add('street_name', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'street name'


            ])
            ->add('street_number', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'Street number'


            ])
            ->add('zip_code', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'Zip-Code'


            ])
            ->add('city', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's name!"],
                'label' => 'City'


            ])
            ->add('events_capacity', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter maximum number of people's capacity!"],
                'label' => 'Capacity'
            ])
            ->add('events_email', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the organizer's email address!"],
                'label' => 'Contact email'
            ])
            ->add('events_phonenumber', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the organizer's contact number!"],
                'label' => 'Contact tel. number'
            ])
            ->add('events_url', null, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's link or website!"],
                'label' => 'URL'
            ])
            ->add('events_type', ChoiceType::class, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's link or website!"],
                'label' => 'Type of the event',
                'choices' => [
                    'Music' => 'Music',
                    'Sports' => 'Sports',
                    'Educational' => 'Educational',
                    'Leisure' => 'Leisure',
                    'Festival' => 'Festival'
                ],
            ])
            ->add('fk_status', EntityType::class, [
                'class' => status::class,
                'choice_label' => 'name',
                'label' => 'Status',

                'attr' => ['class' => 'form-control', "placeholder" => " Please enter the event's status!"],
            ])
            ->add('events_image', FileType::class, [
                'attr' => ['class' => 'form-control', "placeholder" => " Please upload a file here!"],
                'label' => 'Picture',

                // unmapped means that this field is not associated to any entity property
                'mapped' => false,

                // make it optional so you don't have to re-upload the PDF file
                // every time you edit the Product details
                'required' => false,

                // unmapped fields can't define their validation using annotations
                // in the associated entity, so you can use the PHP constraint classes
                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpg',
                            'image/jpeg'
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image document',
                    ])
                ],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
