-- MySQLWorkbench 

CREATE DATABASE Q2_database;

-- youtube users 

CREATE TABLE `Q2_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));


INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q2_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '95', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q2_database`.`channel` (
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
    REFERENCES `Q2_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q2_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');

-- video

CREATE TABLE `Q2_database`.`video` (
  `video_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_type` VARCHAR(45) NULL,
  PRIMARY KEY (`video_id`),
  INDEX `channel_id_idx` (`channel_id` ASC) VISIBLE,
  CONSTRAINT `channel_id`
    FOREIGN KEY (`channel_id`)
    REFERENCES `Q2_database`.`channel` (`channel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('1', '1', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('2', '1', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('3', '1', 'E');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('4', '2', 'E');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('5', '3', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('6', '4', 'E');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('7', '4', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('8', '5', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('9', '1', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('10', '1', 'E');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('11', '6', 'I');
INSERT INTO `Q2_database`.`video` (`video_id`, `channel_id`, `video_type`) VALUES ('12', '6', 'E');

-- viewers
CREATE TABLE `Q2_database`.`viewers` (
  `video_id_v` INT NOT NULL,
  `viewer_id` INT NOT NULL,
  `channel_id` INT NULL,
  `video_title` VARCHAR(45) NULL,
  PRIMARY KEY (`viewer_id`, `video_id_v`),
  INDEX `video_id_v_idx` (`video_id_v` ASC) VISIBLE,
  CONSTRAINT `video_id_v`
    FOREIGN KEY (`video_id_v`)
    REFERENCES `Q2_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `viewer_id`
    FOREIGN KEY (`viewer_id`)
    REFERENCES `Q2_database`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('1', '1', '1', 'TS_1');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('2', '1', '1', 'TS_2');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '7', '1', 'TS_3');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '3', '1', 'TS_3');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('3', '6', '1', 'TS_3');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('4', '2', '2', 'Vid_t_4');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('5', '3', '3', 'vid_t_5');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('6', '4', '4', 'vid_t_6');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('7', '6', '4', 'vid_t_7');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('8', '2', '5', 'vid_t_8');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('9', '8', '1', 'vid_t_9');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('10', '8', '1', 'vid_t_10');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('11', '3', '6', 'vid_t_11');
INSERT INTO `Q2_database`.`viewers` (`video_id_v`, `viewer_id`, `channel_id`, `video_title`) VALUES ('12', '4', '6', 'vid_t_12');

-- statistic
CREATE TABLE `Q2_database`.`statistic` (
  `vid_id_stat` INT NOT NULL,
  `vid_likes` INT NULL,
  `vid_dislikes` INT NULL,
  `view_count` INT NULL,
  `no_of_shares` INT NULL,
  `no_of_comments` INT NULL,
  PRIMARY KEY (`vid_id_stat`),
  CONSTRAINT `vid_id_stat`
    FOREIGN KEY (`vid_id_stat`)
    REFERENCES `Q2_database`.`video` (`video_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('1', '12', '2', '36', '2', '10');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('2', '10', '3', '20', '3', '20');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('3', '2', '1', '16', '4', '30');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('4', '8', '4', '24', '1', '40');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('5', '76', '6', '38', '7', '50');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('6', '22', '7', '44', '8', '60');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('7', '44', '8', '88', '45', '70');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('8', '26', '2', '52', '3', '23');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('9', '5', '1', '10', '4', '12');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('10', '10', '1', '2', '4', '14');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('11', '26', '2', '52', '10', '10');
INSERT INTO `Q2_database`.`statistic` (`vid_id_stat`, `vid_likes`, `vid_dislikes`, `view_count`, `no_of_shares`, `no_of_comments`) VALUES ('12', '14', '2', '42', '12', '12');

-- Q2.sql
SELECT video_title, channel_name, vid_likes/view_count AS ratio 
FROM Q2_database.channel
join Q2_database.video
on channel.channel_id = video.channel_id
join Q2_database.statistic
on video.video_id = statistic.vid_id_stat
join Q2_database.viewers
on video.video_id = viewers.video_id_v
WHERE vid_id_stat in 
(select vid_id_stat 
from Q2_database.statistic
join Q2_database.viewers
on viewers.video_id_v = statistic.vid_id_stat
where video.channel_id = 
(SELECT channel_id 
from Q2_database.channel
join Q2_database.users
on users.user_id = channel.user_id
where users.user_name = "Marvel_Entertainment"))
order by video_title;

/*
This query displays video_title, channel_name, vid_likes/view_count AS ratio by joining the tables. At first the bottom most subquery returns the channel_id of user whose user_name is 
Marvel_Entertainment. The 2nd subquery gives the video_id belonging to this channel_id. Based on the result of video_id and the condition satisfying the video_id, from video, viewers and 
statistics table, we join the table using join clause and output the required columns mentioned above.
*/

