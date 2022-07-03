CREATE DATABASE if not exists socialmedia;

use socialmedia;

drop table if exists posts;
drop table if exists comments;
drop table if exists users;

CREATE TABLE users (
	id int(11) not null auto_increment,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	email varchar(50) not null,	
	user_name varchar(30) not null,
	password varchar(20) not null,
	primary key (id)
);

CREATE TABLE posts (
	id int(11) not null auto_increment,
	user_id int(11) not null,
	content text not null,
	time_created datetime not null,
	primary key(id),
	foreign key (user_id) references users(id)
);

CREATE TABLE comments (
	user_id int(11) not null,
	post_id int(11) not null,
	content text not null,
	time_created datetime not null,
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)
);