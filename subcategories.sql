CREATE TABLE subcategories (
	id int not null,
	title VARCHAR(40) not null,
	description TEXT,
	category_id int references categories(id) not null,
	primary key (id, category_id)
);
