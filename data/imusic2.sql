-- MySQL Script generated by MySQL Workbench
-- 06/12/15 22:19:29
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`singer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`singer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  `birthday` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `album` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `singer_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_song_singer1_idx` (`singer_id` ASC),
  CONSTRAINT `fk_song_singer1`
    FOREIGN KEY (`singer_id`)
    REFERENCES `mydb`.`singer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `passwd` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `mail` VARCHAR(45) NULL,
  `photo` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song_list` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_song_list_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_song_list_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`follow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`follow` (
  `user_id` INT NOT NULL,
  `follower_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `follower_id`),
  INDEX `fk_users_has_users_users1_idx` (`follower_id` ASC),
  INDEX `fk_users_has_users_users_idx` (`user_id` ASC),
  CONSTRAINT `fk_users_has_users_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_users_users1`
    FOREIGN KEY (`follower_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_like_singer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_like_singer` (
  `user_id` INT NOT NULL,
  `singer_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `singer_id`),
  INDEX `fk_user_has_singer_singer1_idx` (`singer_id` ASC),
  INDEX `fk_user_has_singer_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_singer_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_singer_singer1`
    FOREIGN KEY (`singer_id`)
    REFERENCES `mydb`.`singer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_like_song_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_like_song_list` (
  `user_id` INT NOT NULL,
  `song_list_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `song_list_id`),
  INDEX `fk_user_has_song_list_song_list1_idx` (`song_list_id` ASC),
  INDEX `fk_user_has_song_list_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_song_list_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_song_list_song_list1`
    FOREIGN KEY (`song_list_id`)
    REFERENCES `mydb`.`song_list` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song_list_has_song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song_list_has_song` (
  `song_list_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`song_list_id`, `song_id`),
  INDEX `fk_song_list_has_song_song1_idx` (`song_id` ASC),
  INDEX `fk_song_list_has_song_song_list1_idx` (`song_list_id` ASC),
  CONSTRAINT `fk_song_list_has_song_song_list1`
    FOREIGN KEY (`song_list_id`)
    REFERENCES `mydb`.`song_list` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_song_list_has_song_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `mydb`.`song` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_comment_song`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_comment_song` (
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  `content` TEXT NULL,
  PRIMARY KEY (`user_id`, `song_id`),
  INDEX `fk_user_has_song_song1_idx` (`song_id` ASC),
  INDEX `fk_user_has_song_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_song_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_song_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `mydb`.`song` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user_like_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_like_category` (
  `user_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `category_id`),
  INDEX `fk_user_has_category_category1_idx` (`category_id` ASC),
  INDEX `fk_user_has_category_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_user_has_category_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_category_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `mydb`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`song_has_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`song_has_category` (
  `song_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  PRIMARY KEY (`song_id`, `category_id`),
  INDEX `fk_song_has_category_category1_idx` (`category_id` ASC),
  INDEX `fk_song_has_category_song1_idx` (`song_id` ASC),
  CONSTRAINT `fk_song_has_category_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `mydb`.`song` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_song_has_category_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `mydb`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;