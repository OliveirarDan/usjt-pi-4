	-- MySQL Script generated by MySQL Workbench
-- Fri Sep 29 14:53:46 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema usjt-pi-4
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `usjt-pi-4` ;

-- -----------------------------------------------------
-- Schema usjt-pi-4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `usjt-pi-4` DEFAULT CHARACTER SET utf8 ;
USE `usjt-pi-4` ;

-- -----------------------------------------------------
-- Table `usjt-pi-4`.`tbl_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usjt-pi-4`.`tbl_usuario` ;

CREATE TABLE IF NOT EXISTS `usjt-pi-4`.`tbl_usuario` (
  `Id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `sobrenome` VARCHAR(150) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `foto_perfil` VARCHAR(150) NULL,
  PRIMARY KEY (`Id_usuario`),
  UNIQUE INDEX `Id_usuario_UNIQUE` (`Id_usuario` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usjt-pi-4`.`tbl_categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usjt-pi-4`.`tbl_categoria` ;

CREATE TABLE IF NOT EXISTS `usjt-pi-4`.`tbl_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `id_categoria_UNIQUE` (`id_categoria` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usjt-pi-4`.`tbl_estabelecimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usjt-pi-4`.`tbl_estabelecimento` ;

CREATE TABLE IF NOT EXISTS `usjt-pi-4`.`tbl_estabelecimento` (
  `id_estabelecimento` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(150) NOT NULL,
  `lat` FLOAT(10,6) NOT NULL,
  `lng` FLOAT(10,6) NOT NULL,
  `horario_funcionamento` VARCHAR(150) NULL,
  `telefone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `site` VARCHAR(150) NULL,
  `tbl_categoria_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_estabelecimento`, `tbl_categoria_id_categoria`),
  UNIQUE INDEX `id_estabelecimento_UNIQUE` (`id_estabelecimento` ASC),
  INDEX `fk_tbl_estabelecimento_tbl_categoria_idx` (`tbl_categoria_id_categoria` ASC),
  CONSTRAINT `fk_tbl_estabelecimento_tbl_categoria`
    FOREIGN KEY (`tbl_categoria_id_categoria`)
    REFERENCES `usjt-pi-4`.`tbl_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `usjt-pi-4`.`tbl_avaliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usjt-pi-4`.`tbl_avaliacao` ;

CREATE TABLE IF NOT EXISTS `usjt-pi-4`.`tbl_avaliacao` (
  `id_avaliacao` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nota_acesso_cadeirante` INT NULL,
  `nota_sanitario_cadeirante` INT NULL,
  `nota_instrucao_braile` INT NULL,
  `nota_sinalizacao_piso` INT NULL,
  `media_nota` DECIMAL NULL,
  `comentario` VARCHAR(300) NULL,
  `tbl_usuario_Id_usuario` INT NOT NULL,
  `tbl_estabelecimento_id_estabelecimento` INT UNSIGNED NOT NULL,
  `tbl_estabelecimento_tbl_categoria_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_avaliacao`, `tbl_usuario_Id_usuario`, `tbl_estabelecimento_id_estabelecimento`, `tbl_estabelecimento_tbl_categoria_id_categoria`),
  UNIQUE INDEX `id_avaliacao_UNIQUE` (`id_avaliacao` ASC),
  INDEX `fk_tbl_avaliacao_tbl_usuario1_idx` (`tbl_usuario_Id_usuario` ASC),
  INDEX `fk_tbl_avaliacao_tbl_estabelecimento1_idx` (`tbl_estabelecimento_id_estabelecimento` ASC, `tbl_estabelecimento_tbl_categoria_id_categoria` ASC),
  CONSTRAINT `fk_tbl_avaliacao_tbl_usuario1`
    FOREIGN KEY (`tbl_usuario_Id_usuario`)
    REFERENCES `usjt-pi-4`.`tbl_usuario` (`Id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_avaliacao_tbl_estabelecimento1`
    FOREIGN KEY (`tbl_estabelecimento_id_estabelecimento` , `tbl_estabelecimento_tbl_categoria_id_categoria`)
    REFERENCES `usjt-pi-4`.`tbl_estabelecimento` (`id_estabelecimento` , `tbl_categoria_id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
