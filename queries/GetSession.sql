SELECT
	id session,
	login
FROM
	Session
WHERE
	cookie = @sessioncookie AND
	Session.begin <= NOW() AND
	(Session.end IS NULL OR NOW() < Session.end)
LIMIT 1;