use UEFAChampionsLeague
go
CREATE PROCEDURE Create_Team @TeamName varchar(20), @FoundationYear int, @MgrID int, @STDName varchar(30)
AS
INSERT INTO Team (TeamName,FoundationYear,MgrID,STDName)
VALUES (@TeamName,@FoundationYear,@MgrID,@STDName)
GO
