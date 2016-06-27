-- MySQL Script generated by MySQL Workbench
-- 06/27/16 16:51:35
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema iChange
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `iChange` ;

-- -----------------------------------------------------
-- Schema iChange
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `iChange` DEFAULT CHARACTER SET utf8 ;
USE `iChange` ;

-- -----------------------------------------------------
-- Table `iChange`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `iChange`.`users` ;

CREATE TABLE IF NOT EXISTS `iChange`.`users` (
  `usrID` INT GENERATED ALWAYS AS () VIRTUAL,
  `usrName` VARCHAR(35) NOT NULL,
  `usrPass` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`usrID`),
  UNIQUE INDEX `usrID_UNIQUE` (`usrID` ASC),
  UNIQUE INDEX `usrName_UNIQUE` (`usrName` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `iChange`.`basic`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `iChange`.`basic` ;

CREATE TABLE IF NOT EXISTS `iChange`.`basic` (
  `ID` INT GENERATED ALWAYS AS () VIRTUAL,
  `usrID` INT NOT NULL,
  `accept` TINYINT(1) NOT NULL DEFAULT TRUE,
  `notiPref` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `iChange`.`progress`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `iChange`.`progress` ;

CREATE TABLE IF NOT EXISTS `iChange`.`progress` (
  `ID` INT GENERATED ALWAYS AS () VIRTUAL,
  `colour` VARCHAR(10) NOT NULL DEFAULT 'Blue',
  `day` INT NOT NULL DEFAULT 1,
  `completed` TINYINT(1) NOT NULL DEFAULT 0,
  `usrID` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO admin;
 DROP USER admin;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'admin' IDENTIFIED BY 'Ichange2016';

GRANT ALL ON `iChange`.* TO 'admin';
GRANT SELECT ON TABLE `iChange`.* TO 'admin';
GRANT SELECT, INSERT, TRIGGER ON TABLE `iChange`.* TO 'admin';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `iChange`.* TO 'admin';
GRANT EXECUTE ON ROUTINE `iChange`.* TO 'admin';
SET SQL_MODE = '';
GRANT USAGE ON *.* TO write;
 DROP USER write;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'write' IDENTIFIED BY 'Iwrite2016';

GRANT SELECT, INSERT, TRIGGER ON TABLE `iChange`.* TO 'write';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `iChange`.* TO 'write';
GRANT EXECUTE ON ROUTINE `iChange`.* TO 'write';
SET SQL_MODE = '';
GRANT USAGE ON *.* TO read;
 DROP USER read;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'read' IDENTIFIED BY 'Iread2016';

GRANT SELECT ON TABLE `iChange`.* TO 'read';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
