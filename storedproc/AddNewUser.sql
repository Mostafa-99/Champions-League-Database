use UEFAChampionsLeague
go
CREATE PROCEDURE Add_new_user @UserName varchar(30), @Password varchar(15), @Age int, @Gender varchar(1), @UserType varchar(9), @Nationality varchar(20)
AS
INSERT INTO [User] (UserName,Password,Age,Gender,UserType,Nationality)
VALUES (@UserName,@Password,@Age,@Gender,@UserType,@Nationality)
GO