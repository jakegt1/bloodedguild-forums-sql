CREATE TABLE users(
	id BIGSERIAL primary key,
	f_name varchar(20) not null,
	l_name varchar(20) not null,
	username varchar(30) not null,
	password_hash varchar(256) not null,
	email varchar(50) not null,
	group_id int references groups(id)
);
