use UEFAChampionsLeague
go
CREATE PROCEDURE Add_new_admin @UserName Varchar(30)
AS
UPDATE [User]
SET UserType = 'Admin'
WHERE
UserName = @UserName
GO