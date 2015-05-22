SELECT
    Login.id login
FROM 
	Login
WHERE
	username = @username AND
    password = SHA2(CONCAT(@password, salt), 512);
    