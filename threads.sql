CREATE TABLE threads (
	id BIGSERIAL primary key,
	title VARCHAR(64) not null,
	timestamp timestamp not null,
	locked boolean not null,
	subcategory_id int not null,
	category_id int not null,
	FOREIGN KEY (subcategory_id, category_id) REFERENCES subcategories (id, category_id)
);
