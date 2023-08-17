-- Granting privileges to a user
GRANT SELECT ON student6161 TO user_name;

-- Revoking privileges from a user
REVOKE SELECT ON student6161 FROM user_name;

-- Committing a transaction
COMMIT;

-- Rolling back a transaction
ROLLBACK;

-- Setting a savepoint
SAVEPOINT my_savepoint;
