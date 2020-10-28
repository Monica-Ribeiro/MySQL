-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema relacional
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema relacional
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relacional` DEFAULT CHARACTER SET utf8 ;
USE `relacional` ;

-- -----------------------------------------------------
-- Table `relacional`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacional`.`pessoa` (
  `id_pessoa` INT NOT NULL,
  `nome_pessoa` VARCHAR(45) NULL,
  PRIMARY KEY (`id_pessoa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relacional`.`carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacional`.`carro` (
  `id_carro` INT NOT NULL,
  `marca` VARCHAR(45) NULL,
  `ano` VARCHAR(45) NULL,
  `pessoa_id_pessoa` INT NOT NULL,
  PRIMARY KEY (`id_carro`, `pessoa_id_pessoa`),
  CONSTRAINT `fk_carro_pessoa`
    FOREIGN KEY (`pessoa_id_pessoa`)
    REFERENCES `relacional`.`pessoa` (`id_pessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
