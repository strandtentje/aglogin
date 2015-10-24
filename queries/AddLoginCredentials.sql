INSERT INTO Login(username, password, salt)
VALUES (
	@username, 
	SHA2(CONCAT(@password, LEFT(@sessioncookie, 20)), 512), 
	LEFT(@sessioncookie, 20)
);

SELECT LAST_INSERT_ID() login;