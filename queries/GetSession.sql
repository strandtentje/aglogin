SELECT
	id session,
	login
FROM
	Session
WHERE
	cookie = @session AND
	Session.begin <= NOW() AND
	NOW() < Session.end;