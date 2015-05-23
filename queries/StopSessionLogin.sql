UPDATE Session
SET end=NOW()
WHERE id=@session;