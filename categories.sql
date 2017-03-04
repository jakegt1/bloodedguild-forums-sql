CREATE TABLE categories (
	id BIGSERIAL primary key,
	title VARCHAR(64) not null,
	description TEXT,
	restricted BOOLEAN default false
);
