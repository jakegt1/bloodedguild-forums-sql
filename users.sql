-- Create enum for user ranks
-- Remember to cast type when comparing enums in query
-- TODO Use string or use int? int might be better when ordering ranks
CREATE TYPE rank AS ENUM ('normie', 'moderator', 'admin');

CREATE TABLE users(
	id BIGSERIAL primary key,
	f_name varchar(20) not null,
	l_name varchar(20) not null,
	username varchar(30) not null,
	password_hash varchar(256) not null,
	email varchar(50) not null,
	user_rank rank not null
);
