-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introdb2-63206
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introdb2-63206
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introdb2-63206` DEFAULT CHARACTER SET utf8 ;
USE `introdb2-63206` ;

-- -----------------------------------------------------
-- Table `introdb2-63206`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb2-63206`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb2-63206`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb2-63206`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb2-63206`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb2-63206`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` FLOAT(8,2) NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_productos_marcas_idx` (`idMarca` ASC) VISIBLE,
  INDEX `fk_productos_categorias1_idx` (`idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_productos_marcas`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introdb2-63206`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introdb2-63206`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
