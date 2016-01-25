INSERT INTO Login(username, passwordhash)
VALUES (
	@username, @passwordhash
);

SELECT LAST_INSERT_ID() login;