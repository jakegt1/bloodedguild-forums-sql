CREATE TABLE threads (
	id BIGSERIAL primary key,
	title VARCHAR(256) not null,
	timestamp timestamp without time zone default (now() at time zone 'utc') not null,
	locked boolean DEFAULT false not null,
	subcategory_id int not null,
	user_id int not null REFERENCES users(id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories (id)
);
