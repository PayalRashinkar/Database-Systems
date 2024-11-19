-- MySQLWorkbench 

CREATE DATABASE Q1_database;

CREATE TABLE `Q1_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'Payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q1_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '95', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q1_database`.`channel` (
  `channel_id` INT NOT NULL,
  `user_id` INT NULL,
  `channel_name` VARCHAR(45) NULL,
  `subscriber_count` INT NULL,
  `channel_date` DATE NULL,
  `creator_email` VARCHAR(45) NULL DEFAULT NULL,
  `creator_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`channel_id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `Q1_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q1_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');


-- video

CREATE TABLE `Q1_database`.`video` (
  `video_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_type` VARCHAR(45) NULL,
  PRIMARY KEY (`video_id`),
  INDEX `channel_id_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `channel_id`
    FOREIGN KEY (`channel_id`)
    REFERENCES `Q1_database`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('1', '1', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('2', '1', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('3', '1', 'E');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('4', '2', 'E');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('5', '3', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('6', '4', 'E');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('7', '4', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('8', '5', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('9', '1', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('10', '1', 'E');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('11', '6', 'I');
INSERT INTO `Q1_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('12', '6', 'E');

CREATE TABLE `Q1_database`.`youtube_sponsor` (
  `sponsor_id` INT NOT NULL,
  `sponsor_name` VARCHAR(45) NULL,
  `sponsor_phone` VARCHAR(45) NULL,
  `sponsor_address` VARCHAR(45) NULL,
  `amount_sponsored` INT NULL,
  `video_id` INT NOT NULL,
  PRIMARY KEY (`sponsor_id`, `video_id`),
  INDEX `video_id_idx` (`video_id` ASC) VISIBLE,
  CONSTRAINT `video_id`
    FOREIGN KEY (`video_id`)
    REFERENCES `Q1_database`.`video`(`video_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q1_database`.`youtube_sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `amount_sponsored`, `video_id`) VALUES ("1", "Manjula", "5058101234", "Mysore", "1000", "3");
INSERT INTO `Q1_database`.`youtube_sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `amount_sponsored`, `video_id`) VALUES ("2", "Keerthi", "5058101236", "Bangalore", "1550", "4");
INSERT INTO `Q1_database`.`youtube_sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `amount_sponsored`, `video_id`) VALUES ("3", "shruthi", "5058101236", "Dharwad", "700", "5");
INSERT INTO `Q1_database`.`youtube_sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_phone`, `sponsor_address`, `amount_sponsored`, `video_id`) VALUES ('1', 'Manjula', '5058101234', "Mysore", '550', '2');

-- Q1.sql
SELECT sponsor_name, sponsor_phone, SUM(amount_sponsored) AS total_amount_sponsored FROM Q1_database.youtube_sponsor 
GROUP BY sponsor_name, sponsor_phone HAVING total_amount_sponsored = (SELECT SUM(amount_sponsored) as total_amount FROM Q1_database.youtube_sponsor 
GROUP BY sponsor_name, sponsor_phone HAVING SUM(amount_sponsored) ORDER BY SUM(amount_sponsored) DESC LIMIT 1);

/*
In the subquery, we get the highest amount sponsored by ordering the sum with the highest amount first and taking the first value with "desc limit 1".
Using this max amount as input to main query, we check the condition under having the total amount equal to the amount gotten from sub query and display the sponsorers 
name, phone and their max total amount sponsored. we use group by clause to group the values by name and phone and checking the condition in having clause.
*/

