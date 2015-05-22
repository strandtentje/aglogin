SELECT
	id session,
	login
FROM
	Session
WHERE
	cookie = @session;