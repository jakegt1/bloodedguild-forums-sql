CREATE VIEW users_post_counts AS
	SELECT users.*, COUNT(posts.id), groups.name FROM
	users
	LEFT JOIN posts on users.id = posts.user_id
	INNER JOIN groups on users.group_id = groups.id
	GROUP BY users.id, groups.name;

CREATE VIEW subcategories_thread_counts AS
	SELECT subcategories.*, count(threads.id) AS thread_count FROM
	subcategories
	LEFT JOIN threads ON subcategories.id = threads.subcategory_id
	GROUP BY subcategories.id;

CREATE VIEW subcategories_main AS
	select SC.id, P.thread_id, T.title, P.user_id, P.timestamp, U.username, U.avatar FROM
	posts AS P, subcategories_thread_counts as SC,
	threads AS T, users as U
	WHERE
	P.id in (
		SELECT MAX(posts.id) FROM
		posts, threads, subcategories
		WHERE subcategories.id = threads.subcategory_id
		AND posts.thread_id = threads.id
		group by subcategories.id)
	AND P.thread_id = T.id
	AND T.subcategory_id = SC.id
	AND P.user_id = U.id
