CREATE TABLE subcategories (
	id BIGSERIAL primary key,
	title VARCHAR(40) not null,
	description TEXT,
	category_id int references categories(id) not null
);
