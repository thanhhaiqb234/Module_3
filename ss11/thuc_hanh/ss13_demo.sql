create database demoo;
use demoo;

create table users(
id int(3) not null auto_increment primary key,
name varchar(120) not null ,
email varchar(220) not null,
country varchar(120) not null
);

insert into users (name,email,country) value ('Đinh Than Hải','thanhhai@gmail.com','Việt Nam');
insert into users (name,email,country) value ('Phạm Công Nam','congnam@gmail.com','Việt Nam');

DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
 SELECT users.name, users.email, users.country
 FROM users
 where users.id = user_id;
 END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(IN user_name varchar(50),IN user_email varchar(50),IN user_country varchar(50))
BEGIN
 INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
 END$$
DELIMITER ;