-- MySQLWorkbench 

CREATE DATABASE Q4_database;

CREATE TABLE `Q4_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'Payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q4_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '95', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q4_database`.`channel` (
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
    REFERENCES `Q4_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q4_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');

-- video

CREATE TABLE `Q4_database`.`video` (
  `video_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_type` VARCHAR(45) NULL,
  PRIMARY KEY (`video_id`),
  INDEX `channel_id_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `channel_id`
    FOREIGN KEY (`channel_id`)
    REFERENCES `Q4_database`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('1', '1', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('2', '1', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('3', '1', 'E');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('4', '2', 'E');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('5', '3', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('6', '4', 'E');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('7', '4', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('8', '5', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('9', '1', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('10', '1', 'E');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('11', '6', 'I');
INSERT INTO `Q4_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('12', '6', 'E');

-- informational

CREATE TABLE `Q4_database`.`informational` (
  `vid_id_inf` INT NOT NULL,
  `keywords` VARCHAR(45) NULL,
  PRIMARY KEY (`vid_id_inf`),
  CONSTRAINT `vid_id_inf`
    FOREIGN KEY (`vid_id_inf`)
    REFERENCES `Q4_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q4_database`.`informational` (`vid_id_inf`, `keywords`) VALUES ('1', 'Technical');
INSERT INTO `Q4_database`.`informational` (`vid_id_inf`, `keywords`) VALUES ('2', 'Game Info');
INSERT INTO `Q4_database`.`informational` (`vid_id_inf`, `keywords`) VALUES ('5', 'Management');
INSERT INTO `Q4_database`.`informational` (`vid_id_inf`, `keywords`) VALUES ('7', 'Letter');
INSERT INTO `Q4_database`.`informational` (`vid_id_inf`, `keywords`) VALUES ('8', 'Dance');

-- comment 
CREATE TABLE `Q4_database`.`comment` (
  `comment_id` INT NOT NULL,
  `vid_com_id` INT NOT NULL,
  `comment_text` VARCHAR(45) NULL,
  `comment_likes` VARCHAR(45) NULL,
  `sentiments` INT NULL,
  `comment_date` DATE NULL,
  PRIMARY KEY (`comment_id`, `vid_com_id`),
  INDEX `video_id_idx` (`vid_com_id` ASC) VISIBLE,
  CONSTRAINT `vid_com_id`
    FOREIGN KEY (`vid_com_id`)
    REFERENCES `Q4_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('1', '1', 'Nice', '2', '70', '2023-01-01');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('2', '8', 'Good', '3', '80', '2023-01-02');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('3', '4', 'Bad', '1', '20', '2023-01-03');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('4', '2', 'Not great', '4', '30', '2023-01-04');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('5', '5', 'Looks ok', '4', '40', '2023-01-05');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('6', '7', 'Better', '5', '50', '2023-01-06');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('7', '6', 'Ugly', '3', '20', '2023-01-07');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('8', '3', 'Very Bad', '1', '10', '2023-01-08');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('9', '7', 'awesome', '30', '100', '2023-01-09');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('10', '2', 'normal', '8', '48', '2023-01-10');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('11', '9', 'worst', '10', '12', '2020-01-09');
INSERT INTO `Q4_database`.`comment` (`comment_id`, `vid_com_id`, `comment_text`, `comment_likes`, `sentiments`, `comment_date`) VALUES ('12', '10', 'better', '12', '14', '2020-02-09');

-- Q4.sql
SELECT keywords, AVG(sentiments) 
FROM Q4_database.informational
LEFT JOIN Q4_database.comment 
ON informational.vid_id_inf = comment.vid_com_id
GROUP BY keywords
ORDER BY AVG(sentiments) DESC;

/*
The query displays the keywords from informational table and average sentiments from comment table using the AVG and aggregate group by clause.
We join the table based on the condition of video_id and group the output on keywords and display them in decreasing order of their average sentiments using DESC command.
Example: average score of letter keyword is 100+50 = 150/2 = 75 in the output.
*/


