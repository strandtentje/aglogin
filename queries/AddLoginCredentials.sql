INSERT INTO Login(username, password, salt)
VALUES (
	@username, 
	SHA2(
		CONCAT(
			@password, 
			SUBSTRING(@session, 0, 20)), 
		512), 
	SUBSTRING(@session, 0, 20)
);

SELECT LAST_INSERT_ID() login;