use UEFAChampionsLeague
go
CREATE PROCEDURE Create_Match @Year int , @Month int, @Day int, @HostScore int, @GuestScore int, @Type varchar(20), @SName varchar(30), @HostName varchar(20), @GuestName varchar(20), @RefID int, @FinalWinner varchar(20) = NULL
AS
INSERT INTO Match ( Year , Month , Day , HostScore , GuestScore , Type, SName , HostName , GuestName , RefID, FinalWinner)
VALUES (@Year , @Month , @Day , @HostScore , @GuestScore , @Type, @SName , @HostName , @GuestName , @RefID, @FinalWinner)
GO

CREATE PROCEDURE Count_Of_Matches
AS
SELECT COUNT(*) FROM Match
GO