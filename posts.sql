CREATE TABLE posts (
	id int not null,
	content text not null,
	thread_id int not null references threads(id),
	user_id int not null references users(id),
	primary key (id, thread_id)
)

