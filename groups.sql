CREATE TABLE groups(
	id BIGSERIAL primary key,
	name varchar(20),
    privilege int DEFAULT 0
)
