-- MySQLWorkbench 

CREATE DATABASE Q3_database;

-- users
CREATE TABLE `Q3_database`.`users` (
  `user_id` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_age` INT NOT NULL,
  `user_address` VARCHAR(45) NOT NULL,
  `u_is_creator` VARCHAR(45) NOT NULL,
  `u_is_consumer` VARCHAR(45) NOT NULL,
  `user_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_id`));

INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('1', 'Payal', '30', 'INDIA', 'No', 'Yes', 'abc@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('2', 'Aishu', '37', 'LONDON', 'No', 'Yes', 'bcd@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('3', 'Anoop', '28', 'AUSTRALIA', 'No', 'Yes', 'cde@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('4', 'Taylor_Swift', '40', 'USA', 'Yes', 'Yes', 'efg@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('5', 'Rihanna', '45', 'USA', 'Yes', 'Yes', 'fgh@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('6', 'Shaan', '50', 'USA', 'Yes', 'Yes', 'ghi@gmail.co');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('7', 'Latha', '70', 'USA', 'Yes', 'Yes', 'hij@gmail.com');
INSERT INTO `Q3_database`.`users` (`user_id`, `user_name`, `user_age`, `user_address`, `u_is_creator`, `u_is_consumer`, `user_email`) VALUES ('8', 'Marvel_Entertainment', '95', 'JAPAN', 'Yes', 'Yes', 'def@gmail.com');

-- channel

CREATE TABLE `Q3_database`.`channel` (
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
    REFERENCES `Q3_database`.`users`(`user_id`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION);


INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('1', '4', 'Taylor_swift_chan', '1000', '2023-01-01', 'efg@gmail.com', 'Taylor_Swift');
INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('2', '5', 'Rihanna_chan', '2000', '2022-12-12', 'fgh@gmail.com', 'Rihanna');
INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('3', '6', 'Shaan_chan_1', '500', '2021-02-03', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('4', '6', 'Shaan_chan_2', '700', '2020-12-04', 'ghi@gmail.com', 'Shaan');
INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('5', '7', 'Latha_chan', '900', '1992-04-17', 'hij@gmail.com', 'Latha');
INSERT INTO `Q3_database`.`channel` (`channel_id`, `user_id`, `channel_name`, `subscriber_count`, `channel_date`, `creator_email`, `creator_name`) VALUES ('6', '8', 'marvel_1', '95', '1998-01-13', 'def@gmail.com', 'Marvel_Entertainment');

-- subscription
CREATE TABLE `Q3_database`.`subscription` (
  `channel_id` INT NOT NULL,
  `subscription_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`channel_id`));

INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('1', 'PAID');
INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('2', 'PAID');
INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('3', 'UNPAID');
INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('4', 'PAID');
INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('5', 'UNPAID');
INSERT INTO `Q3_database`.`subscription` (`channel_id`, `subscription_type`) VALUES ('6', 'UNPAID');

-- Q3.sql
SELECT DISTINCT Q3_database.channel.user_id, Q3_database.channel.creator_email, Q3_database.channel.channel_name, Q3_database.channel.subscriber_count 
FROM Q3_database.channel
RIGHT JOIN Q3_database.subscription ON 
Q3_database.channel.channel_id IN (SELECT channel_id FROM Q3_database.subscription WHERE subscription_type = 'PAID')
WHERE subscriber_count > 100 and channel_date = '2023-01-01';


/*
The subquery returns the channel_id of paid subscription type from subscription table whose subscriber count is greater than 100 and channel_date = '2023-01-01'. Using this as a condition 
for right join using ON operator, we join channel and subscription table which further provides us with required unique user/s with the total number of paid subscribers greater than 100 for 
their channel/s created on 01.01.2023. 
*/

