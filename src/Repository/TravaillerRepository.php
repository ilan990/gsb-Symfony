<?php

namespace App\Repository;

use App\Entity\Travailler;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query\ResultSetMapping;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Travailler|null find($id, $lockMode = null, $lockVersion = null)
 * @method Travailler|null findOneBy(array $criteria, array $orderBy = null)
 * @method Travailler[]    findAll()
 * @method Travailler[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TravaillerRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Travailler::class);
    }

    // /**
    //  * @return Travailler[] Returns an array of Travailler objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */
    public function TravaillerNameVisiteur(){
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            dql:'select v.nom,v.prenom,v.id from
            App\Entity\Visiteur AS v'
        );
        return $query->getResult();
    }
    public function TravaillerNameRegion(){
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            dql:'select r.nom_region,r.id from
            App\Entity\Region AS r'
        );
        return $query->getResult();
    }
    public function TravaillerListeNom(){
        //SELECT nom,prenom,region.nom_region FROM `visiteur`
        //INNER JOIN travailler on id_vis=visiteur.id
        //INNER JOIN Region on travailler.id_region = region.id
        $entityManager = $this->getEntityManager()->getConnection();
        $query = '
        SELECT travailler.id, nom,prenom,travailler.date_embauche,region.nom_region,travailler.role_tra FROM `visiteur`
        INNER JOIN travailler on id_vis=visiteur.id
        INNER JOIN Region on travailler.id_region = region.id
        ';
        $stmt=$entityManager->prepare($query);
        $rest=$stmt->executeQuery();
        return $rest->fetchAllAssociative();
    }
    /*
    public function findOneBySomeField($value): ?Travailler
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
