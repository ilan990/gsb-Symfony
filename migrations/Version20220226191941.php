<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220226191941 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE travailler (id INT AUTO_INCREMENT NOT NULL, id_vis INT NOT NULL, date_embauche DATE NOT NULL, id_region INT NOT NULL, role_tra VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('DROP INDEX labo_code ON visiteur');
        $this->addSql('DROP INDEX code_secteur ON visiteur');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE travailler');
        $this->addSql('CREATE INDEX labo_code ON visiteur (labo_code)');
        $this->addSql('CREATE INDEX code_secteur ON visiteur (code_secteur)');
    }
}
