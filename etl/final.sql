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
  `work_type` VARCHAR(20),
  PRIMARY KEY (`WorkId`));

CREATE TABLE IF NOT EXISTS `cw`.`stroke_prediction_dataset` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `gender` INT NOT NULL,
  `age` INT NOT NULL,
  `hypertension` INT NOT NULL,
  `heart_disease` INT NOT NULL,
  `ever_married` INT NOT NULL,
  `work_type` INT NOT NULL,
  `Residence_type` INT NOT NULL,
  `avg_glucose_level` INT NOT NULL,
  `bmi` INT NOT NULL,
  `stroke` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `gender`
    FOREIGN KEY (`gender`)
    REFERENCES `cw`.`gen` (`GenId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `marriage`
    FOREIGN KEY (`ever_married`)
    REFERENCES `cw`.`mar` (`MarId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `residence`
    FOREIGN KEY (`Residence_type`)
    REFERENCES `cw`.`res` (`ResId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT work
    FOREIGN KEY (`work_type`)
    REFERENCES `cw`.`work` (`WorkId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)