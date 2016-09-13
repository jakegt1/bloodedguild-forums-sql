CREATE VIEW users_post_counts AS
	SELECT users.*, COUNT(*), groups.name FROM
	users, posts, groups
	WHERE users.id = posts.user_id
	GROUP BY users.id, groups.name
