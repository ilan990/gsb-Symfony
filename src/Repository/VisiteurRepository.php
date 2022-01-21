<?php

namespace App\Repository;

use App\Entity\Visiteur;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Visiteur|null find($id, $lockMode = null, $lockVersion = null)
 * @method Visiteur|null findOneBy(array $criteria, array $orderBy = null)
 * @method Visiteur[]    findAll()
 * @method Visiteur[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class VisiteurRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Visiteur::class);
    }

    public function findByLabAndSecteur(){
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            dql:'select v, l.nom, s.libelle	
            from App\Entity\Visiteur AS v, App\Entity\Labo AS l, App\Entity\Secteur s
            Where v.codeSecteur = s.id And v.laboCode	= l.id'
        );

        return $query->getResult();
    }

    // /**
    //  * @return Visiteur[] Returns an array of Visiteur objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('v')
            ->andWhere('v.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('v.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Visiteur
    {
        return $this->createQueryBuilder('v')
            ->andWhere('v.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
    /*
     * Select * from Visiteur,labo,secteur where Visiteur.id_labo = labo.id AND Visiteur.id_secteur = secteur_id
     *
     *
     */
}
