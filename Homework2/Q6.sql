-- MySQLWorkbench 

CREATE DATABASE Q6_database;

CREATE TABLE `Q6_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q6_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '95', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q6_database`.`channel` (
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
    REFERENCES `Q6_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q6_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');

-- video

CREATE TABLE `Q6_database`.`video` (
  `video_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_type` VARCHAR(45) NULL,
  PRIMARY KEY (`video_id`),
  INDEX `channel_id_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `channel_id`
    FOREIGN KEY (`channel_id`)
    REFERENCES `Q6_database`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('1', '1', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('2', '1', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('3', '1', 'E');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('4', '2', 'E');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('5', '3', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('6', '4', 'E');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('7', '4', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('8', '5', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('9', '1', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('10', '1', 'E');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('11', '6', 'I');
INSERT INTO `Q6_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('12', '6', 'E');

-- metadata

CREATE TABLE `Q6_database`.`metadata` (
  `vid_id_met` INT NOT NULL,
  `url` VARCHAR(45) NULL,
  `thumbnails` VARCHAR(45) NULL,
  `title` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `duration` INT NULL,
  `upload_date` DATE NULL,
  `description` VARCHAR(45) NULL,
  `chan_id_fk` INT NOT NULL,
  PRIMARY KEY (`vid_id_met`, `chan_id_fk`),
  CONSTRAINT `vid_id_met`
    FOREIGN KEY (`vid_id_met`)
    REFERENCES `Q6_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('1', 'www.abc.com', 'abc.GIF', 'ABC', 'I', '15', '2023-01-05', 'video1', '1');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('2', 'www.bcd.com', 'bcd.GIF', 'BCD', 'I', '20', '2023-01-09', 'video2', '1');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('3', 'www.cde.com', 'cde.GIF', 'CDE', 'E', '25', '2023-01-15', 'video3', '1');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('4', 'www.def.com', 'def.GIF', 'DEF', 'E', '30', '2023-01-20', 'video4', '2');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('5', 'www.efg.com', 'efg.GIF', 'EFG', 'E', '24', '2023-01-25', 'video5', '3');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('6', 'www.fgh.com', 'fgh.GIF', 'FGH', 'I', '40', '2023-02-15', 'video6', '4');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('7', 'www.ghi.com', 'ghi.GIF', 'GHI', 'I', '45', '2023-01-29', 'video7', '4');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('8', 'www.hij.com', 'hij.GIF', 'HIJ', 'I', '50', '2022-12-12', 'video8', '5');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('9', 'www.jkl.com', 'jkl.GIF', 'JKL', 'I', '10', '2023-01-23', 'video9', '1');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('10', 'www.klm.com', 'klm.GIF', 'KLM', 'E', '10', '2023-01-30', 'video10', '1');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('11', 'www.lmn.com', 'lmn.GIF', 'LMN', 'I', '14', '2021-01-23', 'video11', '6');
INSERT INTO `Q6_database`.`metadata` (`vid_id_met`, `url`, `thumbnails`, `title`, `category`, `duration`, `upload_date`, `description`, `chan_id_fk`) VALUES ('12', 'www.mno.com', 'mno.GIF', 'MNO', 'E', '20', '2020-01-30', 'video12', '6');

-- Q6.sql
SELECT distinct creator_name, channel_name, subscriber_count
FROM Q6_database.users
JOIN Q6_database.channel 
ON users.user_id = channel.user_id
JOIN Q6_database.video
ON channel.channel_id = video.channel_id
JOIN Q6_database.metadata
ON video.video_id = metadata.vid_id_met
WHERE users.user_address = 'USA' and chan_id_fk in
(SELECT chan_id_fk
FROM Q6_database.metadata
WHERE YEAR(upload_date) = 2023 AND MONTH(upload_date) = 1
GROUP BY chan_id_fk
HAVING count(distinct week(upload_date)) >= 5);


/*
The query returns the creator_name, his/her channel name and the subscriber count based on the condition that he should be residing in use "AND"
chan_id_fk is fetched by the subquery which gives the output from metadata table where year of upload is 2023, month is 1 and
distinct week being lesser than or equal to 5 which comes under january month. Each week atleast one video is posted is tested using the 
distinct week(upload_date) being greater than or equal to 5.
*/
