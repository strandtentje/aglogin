SELECT 
	Login.id login,
	Login.username username
FROM 
	Session JOIN Login ON
		Session.login = Login.id
WHERE
	Session.id = @session AND
	Session.begin <= NOW() AND
	(Session.end IS NULL OR NOW() < Session.end)
LIMIT 1;