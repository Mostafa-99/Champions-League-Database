use UEFAChampionsLeague
go
create procedure [dbo].[ChangePassword] @UserName Varchar(30),@newPassword varchar(15)
as
UPDATE [User]
set [Password]=@newPassword
where UserName=@UserName












