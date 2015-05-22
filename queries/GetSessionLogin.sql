SELECT 
	Login.id login,
	Login.username
FROM 
	Session JOIN Login ON
		Session.login = Login.id
WHERE
	Session.id = @session;