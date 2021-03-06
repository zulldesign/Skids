DECLARE @serverUserName as nvarchar(max);
DECLARE @databaseUserName as nvarchar(max);

DECLARE @sql nvarchar(max); 

set @serverUserName = @userName; 

IF NOT EXISTS
	(SELECT name
		FROM sys.database_principals
		WHERE sid = @serverUsersid)
	BEGIN
		SET @sql = 'CREATE USER ' + quotename(@serverUserName) + ' FOR LOGIN ' + quotename(@Username) + ';'
		IF @SqlAzure = 1
			BEGIN
				-- SQL can't create a SQL USER with other statements.
				SET @scriptToExecute = @sql; 
				RETURN
			END

		EXEC (@sql) 

		SET @databaseUserName = @serverUserName;
	END
ELSE
	BEGIN
		SELECT @databaseUserName = name
		FROM sys.database_principals
		WHERE sid = @serverUsersid
	END


EXEC sp_addrolemember 'db_datareader', 'magelia_user';
EXEC sp_addrolemember 'db_datawriter', 'magelia_user';
IF NOT EXISTS (
	SELECT 1
	FROM sys.database_role_members as rm
		JOIN sys.database_principals as p ON rm.role_principal_id = p.principal_id
		JOIN sys.database_principals as m ON rm.member_principal_id = m.principal_id
	WHERE m.name = @databaseUserName and p.name = 'db_owner'
)
	BEGIN
		EXEC sp_addrolemember 'magelia_user', @databaseUserName;
	END
