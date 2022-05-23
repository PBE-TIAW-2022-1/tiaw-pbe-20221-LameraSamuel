-- MySQL Script generated by MySQL Workbench
-- Fri Apr  8 17:17:11 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema iquest2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema iquest2
-- -----------------------------------------------------

USE `iquest2` ;

-- -----------------------------------------------------
-- Table `iquest2`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `iquest2`.`Login` (
  `Id_login` INT NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_login`));



-- -----------------------------------------------------
-- Table `iquest2`.`Area_atuacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `iquest`.`Area_atuacao` (
  `Id_descricao` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_descricao`));


-- -----------------------------------------------------
-- Table `iquest2`.`Pergunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `iquest2`.`Pergunta` (
  `Id_pergunta` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(45) NOT NULL,
  `Area_atuacao_Id_descricao` INT NOT NULL,
  PRIMARY KEY (`Id_pergunta`, `Area_atuacao_Id_descricao`),
  INDEX `fk_Pergunta_Area_atuacao1_idx` (`Area_atuacao_Id_descricao` ASC),
  CONSTRAINT `fk_Pergunta_Area_atuacao1`
    FOREIGN KEY (`Area_atuacao_Id_descricao`)
    REFERENCES `iquest2`.`Area_atuacao` (`Id_descricao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `iquest2`.`Opcao_para_marcar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `iquest2`.`Opcao_para_marcar` (
  `Id_opcao` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(45) NOT NULL,
  `Pergunta_Id_pergunta` INT NOT NULL,
  PRIMARY KEY (`Id_opcao`, `Pergunta_Id_pergunta`),
  INDEX `fk_Opcao_para_marcar_Pergunta_idx` (`Pergunta_Id_pergunta` ASC),
  CONSTRAINT `fk_Opcao_para_marcar_Pergunta`
    FOREIGN KEY (`Pergunta_Id_pergunta`)
    REFERENCES `iquest2`.`Pergunta` (`Id_pergunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `iquest2`.`Resposta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `iquest2`.`Resposta` (
  `Id_resposta` INT NOT NULL AUTO_INCREMENT,
  `Pergunta_Id_pergunta` INT NOT NULL,
  `Opcao_para_marcar_Id_opcao` INT NOT NULL,
  PRIMARY KEY (`Id_resposta`, `Pergunta_Id_pergunta`, `Opcao_para_marcar_Id_opcao`),
  INDEX `fk_Resposta_Pergunta1_idx` (`Pergunta_Id_pergunta` ASC),
  INDEX `fk_Resposta_Opcao_para_marcar1_idx` (`Opcao_para_marcar_Id_opcao` ASC),
  CONSTRAINT `fk_Resposta_Pergunta1`
    FOREIGN KEY (`Pergunta_Id_pergunta`)
    REFERENCES `iquest2`.`Pergunta` (`Id_pergunta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Resposta_Opcao_para_marcar1`
    FOREIGN KEY (`Opcao_para_marcar_Id_opcao`)
    REFERENCES `iquest2`.`Opcao_para_marcar` (`Id_opcao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
