CREATE TABLE posts (
	id int not null,
	content text not null,
	thread_id int not null REFERENCES threads(id),
	PRIMARY KEY (id, thread_id)
)

