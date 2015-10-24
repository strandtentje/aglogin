INSERT INTO Session(cookie, begin) VALUES(@sessioncookie, NOW());
SELECT LAST_INSERT_ID() session;