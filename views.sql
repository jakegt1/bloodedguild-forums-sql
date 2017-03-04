CREATE VIEW users_post_counts AS
	SELECT users.*, COUNT(posts.id), groups.name, groups.privilege FROM
	users
	LEFT JOIN posts on users.id = posts.user_id
	INNER JOIN groups on users.group_id = groups.id
	GROUP BY users.id, groups.name, groups.privilege;

CREATE VIEW threads_post_counts AS
    SELECT threads.*, count(posts.id) FROM
    threads
    LEFT JOIN posts ON threads.id = posts.thread_id
    GROUP BY threads.id;

CREATE VIEW subcategories_thread_counts AS
    SELECT SC.*, sum(COALESCE( T.count, 0 )) from
    subcategories as SC
    LEFT JOIN threads_post_counts as T on SC.id = T.subcategory_id
    GROUP BY SC.id;

CREATE VIEW subcategories_main AS
	select SC.id, P.thread_id, T.title, P.user_id, P.timestamp, U.username, U.avatar, U.name FROM
	posts AS P, subcategories_thread_counts as SC,
	threads AS T, users_post_counts as U
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
