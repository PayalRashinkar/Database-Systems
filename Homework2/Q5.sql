-- MySQLWorkbench 

CREATE DATABASE Q5_database;

CREATE TABLE `Q5_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`user_id`));

INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q5_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '60', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q5_database`.`channel` (
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
    REFERENCES `Q5_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q5_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');

-- video

CREATE TABLE `Q5_database`.`video` (
  `video_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_type` VARCHAR(45) NULL,
  PRIMARY KEY (`video_id`),
  INDEX `channel_id_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `channel_id`
    FOREIGN KEY (`channel_id`)
    REFERENCES `Q5_database`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('1', '1', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('2', '1', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('3', '1', 'E');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('4', '2', 'E');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('5', '3', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('6', '4', 'E');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('7', '4', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('8', '5', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('9', '1', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('10', '1', 'E');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('11', '6', 'I');
INSERT INTO `Q5_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('12', '6', 'E');
-- viewers

CREATE TABLE `Q5_database`.`viewers` (
  `video_id_v` INT NOT NULL,
  `viewer_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_title` VARCHAR(45) NULL,
  PRIMARY KEY (`viewer_id`, `video_id_v`),
  INDEX `video_id_v_idx` (`video_id_v` ASC) VISIBLE,
  CONSTRAINT `video_id_v`
    FOREIGN KEY (`video_id_v`)
    REFERENCES `Q5_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `viewer_id`
    FOREIGN KEY (`viewer_id`)
    REFERENCES `Q5_database`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('1', '1', '1', 'TS_1');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('2', '1', '1', 'TS_2');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '7', '1', 'TS_3');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '3', '1', 'TS_3');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '6', '1', 'TS_3');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('4', '2', '2', 'Vid_t_4');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('5', '3', '3', 'vid_t_5');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('6', '4', '4', 'vid_t_6');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('7', '6', '4', 'vid_t_7');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('8', '2', '5', 'vid_t_8');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('9', '8', '1', 'vid_t_9');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('10', '8', '1', 'vid_t_10');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('11', '3', '6', 'vid_t_11');
INSERT INTO `Q5_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('12', '4', '6', 'vid_t_12');

-- statistic

CREATE TABLE `Q5_database`.`statistic` (
  `vid_id_stat` INT NOT NULL,
  `vid_likes` INT NULL,
  `vid_dislikes` INT NULL,
  `view_count` INT NULL,
  `no_of_shares` INT NULL,
  `no_of_comments` INT NULL,
  PRIMARY KEY (`vid_id_stat`),
  CONSTRAINT `vid_id_stat`
    FOREIGN KEY (`vid_id_stat`)
    REFERENCES `Q5_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('1', '12', '2', '36', '2', '10');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('2', '10', '3', '20', '3', '20');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('3', '2', '1', '16', '4', '30');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('4', '8', '4', '24', '1', '40');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('5', '76', '6', '38', '7', '50');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('6', '22', '7', '44', '8', '60');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('7', '44', '8', '88', '45', '70');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('8', '26', '2', '52', '3', '23');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('9', '5', '1', '10', '4', '12');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('10', '10', '1', '2', '4', '14');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('11', '26', '2', '52', '10', '10');
INSERT INTO `Q5_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('12', '14', '2', '42', '12', '12');


-- Q5.sql
SELECT video_title, min(user_age) as viewer_min_age, max(user_age) as viewer_max_age from Q5_database.users, Q5_database.viewers WHERE viewer_id IN
(SELECT DISTINCT viewer_id from Q5_database.users, Q5_database.viewers WHERE video_title IN  
(SELECT video_title FROM Q5_database.viewers WHERE video_id_v =
(SELECT vid_id_stat FROM Q5_database.statistic WHERE no_of_comments =
(SELECT MAX(no_of_comments) FROM Q5_database.statistic
WHERE vid_id_stat IN (SELECT video_id_v from Q5_database.viewers
WHERE channel_id in (SELECT channel_id FROM Q5_database.channel
WHERE creator_name = 'Taylor_Swift')))))) AND video_title = (SELECT DISTINCT video_title FROM Q5_database.viewers WHERE video_id_v = (
SELECT vid_id_stat FROM Q5_database.statistic WHERE no_of_comments = (
SELECT MAX(no_of_comments) FROM Q5_database.statistic
WHERE vid_id_stat IN
(SELECT video_id_v from Q5_database.viewers
WHERE channel_id in (
SELECT channel_id FROM Q5_database.channel
WHERE creator_name = 'Taylor_Swift')))))
GROUP BY video_title;


 
/*
We display the minimum and maximum age of viewers who watched most commented video of taylor swift. The query works as follows:
At first we get the name of channel_id belonging to taylor swift from the inner most subquery. The result of this is used in 2nd inner most subquery where in we 
get the video_id_v belonging to that channel id from viewers table. Furthermore, using this as input condition we get the video_id_stat. Using this as condition we get the max number of
comments from statistic table. Using this as further condition, we get the video_title where video_id_v is got from above mentioned way.
Similarly we try to get the viewer_id from viewers table after getting the video_title and using it as condition to fetch the minimum and maximum age of viewers from users table and "AND"
both the condtion to validate the output as required.
In my example: Minimum age is Anoop's and maximum age is Latha's who watched the most commented video of Taylor Swift.
*/