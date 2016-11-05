SELECT
	id session,
	login,
	(NOW() BETWEEN Session.begin AND IFNULL(Session.end, '9999-12-31')) AS isvalid	
FROM
	Session
WHERE
	cookie = @sessioncookie
ORDER BY 
	(NOW() BETWEEN Session.begin AND IFNULL(Session.end, '9999-12-31'))
LIMIT 1