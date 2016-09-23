CREATE TABLE posts (
	id BIGSERIAL primary key,
	content text not null,
	timestamp timestamp without time zone default (now() at time zone 'utc') not null,
	edited_timestamp timestamp without time zone default (now() at time zone'utc') not null,
	thread_id int not null references threads(id),
	user_id int not null references users(id)
)

