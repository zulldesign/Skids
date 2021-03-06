DECLARE @sql nvarchar(max);
DECLARE @serverUserSid varbinary(85) ;

-- IF the current user is the same as the specified one, skip user creation
IF suser_sname() <> @userName
	BEGIN
		IF @SqlAzure = 1 
			BEGIN
				SELECT @serverUsersid = sid FROM sys.sql_logins WHERE name = @Username;
				IF @serverUsersid is null
					BEGIN
						-- SQL can't create a SQL USER with other statements.
						SET @scriptToExecute = 'CREATE LOGIN ' + quotename(@Username) + ' WITH PASSWORD = ' + quotename(@Password, '''') + ';';
						RETURN;
					END
				SELECT @serverUserSid = sid FROM sys.sql_logins WHERE name = @Username;
			END
		ELSE
			BEGIN
				SELECT @serverUsersid = sid FROM sys.syslogins WHERE name = @Username;
				IF @serverUsersid is null
					BEGIN
						IF @IntegratedSecurity = 0
							BEGIN
								SET @sql = 'CREATE LOGIN ' + quotename(@Username) + ' WITH PASSWORD = ' + quotename(@Password, '''') + ', DEFAULT_DATABASE = ' + quotename(@DatabaseName) + ';'
							END
						ELSE 
							BEGIN 
								SET @sql = 'CREATE LOGIN ' + quotename(@Username) + ' FROM WINDOWS WITH DEFAULT_DATABASE = ' + quotename(@DatabaseName) + ';'
							END
						exec sp_executesql @sql
					END
				SELECT @serverUserSid = sid FROM sys.syslogins WHERE name = @Username;
			END
	END
ELSE
	BEGIN
		SELECT @serverUserSid = suser_sid();
	END

SET @serverUserSid_out = @serverUserSid; 