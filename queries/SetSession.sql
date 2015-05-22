INSERT INTO Session(cookie, begin) VALUES(@session, NOW());
SELECT LAST_INSERT_ID() session;