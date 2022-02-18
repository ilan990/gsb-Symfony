<?php

namespace App\Form;

use App\Entity\Labo;
use App\Entity\Secteur;
use App\Entity\Visiteur;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class Visiteur2Type extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom')
            ->add('prenom')
            ->add('adresse')
            ->add('codePostal')
            ->add('ville')
            ->add('dateEmbauche')
            ->add('codeSecteur', EntityType::class, [
                    'class' => Secteur::class,
                    'choice_value' => 'id',
                    'choice_label' => function (Secteur $sec) {
                        return $sec->getLibelle();
                    }
                ]
            )
            ->add('laboCode', EntityType::class, [
                    'class' => Labo::class,
                    'choice_value' => 'id',
                    'choice_label' => function (Labo $lab) {
                        return $lab->getNom();
                    }
                ]
            );}




    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Visiteur::class,
        ]);
    }
}
