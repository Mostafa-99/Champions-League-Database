use UEFAChampionsLeague
go
CREATE PROCEDURE Create_New_Player @PlayerID int, @FName varchar(20), @LName varchar(20), @Age int, @MarketValue float, @Position varchar(3), @Nationality varchar(20), @Height int, @PreferredFoot varchar(1), @Technical int, @Attacking int, @Defence int, @Tactical int, @Creativity int, @Tname varchar(20)
AS
INSERT INTO Player (PlayerID, FName, LName, Age, MarketValue, Position, Nationality, Height, PreferredFoot, Technical, Attacking, Defence, Tactical, Creativity, Tname)
VALUES (@PlayerID, @FName, @LName, @Age, @MarketValue, @Position, @Nationality, @Height, @PreferredFoot, @Technical, @Attacking, @Defence, @Tactical, @Creativity, @Tname)
GO

CREATE PROCEDURE Edit_Player @PlayerID int, @Age int, @MarketValue float, @Position varchar(3), @Nationality varchar(20), @Height int, @PreferredFoot varchar(1), @Technical int, @Attacking int, @Defence int, @Tactical int, @Creativity int, @Tname varchar(20) 
AS
UPDATE Player
SET Age=@Age, MarketValue=@MarketValue, Position=@Position, Nationality=@Nationality, Height=@Height, PreferredFoot=@PreferredFoot, Technical=@Technical, Attacking=@Attacking, Defence=@Defence, Tactical=@Tactical, Creativity=@Creativity, Tname=@Tname
WHERE PlayerID = @PlayerID
GO