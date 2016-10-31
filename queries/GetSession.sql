SELECT
	id session,
	login
FROM
	Session
WHERE
	cookie = @sessioncookie AND NOW() BETWEEN Session.begin AND IFNULL(Session.end, '9999-12-31')
LIMIT 1;