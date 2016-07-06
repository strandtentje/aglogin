SELECT
    Login.id login,
    "" AS username,
    username AS loggedinusername
FROM 
	Login
WHERE
	username = @username AND
    password = SHA2(CONCAT(@password, salt), 512);
    