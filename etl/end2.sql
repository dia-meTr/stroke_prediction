CREATE SCHEMA IF NOT EXISTS `cw`;
USE `cw` ;

CREATE TABLE IF NOT EXISTS `cw`.`gen` (
  `GenId` INT NOT NULL AUTO_INCREMENT,
  `gender` VARCHAR(10),
  PRIMARY KEY (`GenId`));

CREATE TABLE IF NOT EXISTS `cw`.`mar` (
  `MarId` INT NOT NULL AUTO_INCREMENT,
  `ever_married` VARCHAR(10),
  PRIMARY KEY (`MarId`));

CREATE TABLE IF NOT EXISTS `cw`.`res` (
  `ResId` INT NOT NULL AUTO_INCREMENT,
  `Residence_type` VARCHAR(10),
  PRIMARY KEY (`ResId`));

CREATE TABLE IF NOT EXISTS `cw`.`work` (
  `WorkId` INT NOT NULL AUTO_INCREMENT,
  `work_type` VARCHAR(10),
  PRIMARY KEY (`WorkId`));

CREATE TABLE IF NOT EXISTS `cw`.`stroke_prediction_dataset` (
  `id` INT,
  `gender` INT,
  `age` INT,
  `hypertension` INT,
  `heart_disease` INT,
  `ever_married` INT,
  `work_type` INT,
  `Residence_type` INT,
  `avg_glucose_level` INT,
  `bmi` INT,
  `stroke` INT,
  PRIMARY KEY (`id`),
  CONSTRAINT `gender`
    FOREIGN KEY (`gender`)
    REFERENCES `cw`.`gen` (`GenId`),
  CONSTRAINT `marriage`
    FOREIGN KEY (`ever_married`)
    REFERENCES `cw`.`mar` (`MarId`),
  CONSTRAINT `residence`
    FOREIGN KEY (`Residence_type`)
    REFERENCES `cw`.`res` (`ResId`),
  CONSTRAINT `work`
    FOREIGN KEY (`work_type`)
    REFERENCES `cw`.`work` (`WorkId`))