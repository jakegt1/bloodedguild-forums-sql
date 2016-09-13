CREATE TABLE users(
	id BIGSERIAL primary key,
	f_name varchar(20) not null,
	l_name varchar(20) not null,
	username citext not null,
	password_hash varchar(256) not null,
	email varchar(50) not null,
	avatar varchar(256) default 'i.imgur.com/ZhMHYZD.gif' not null,
	group_id int references groups(id) not null
);
