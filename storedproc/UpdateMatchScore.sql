CREATE PROCEDURE Update_Match_Score @MatchID int, @HostScore int, @GuestScore int, @FinalWinner varchar(20)
AS
UPDATE Match
SET HostScore = @HostScore, GuestScore = @GuestScore, FinalWinner = @FinalWinner
WHERE 
MatchID = @MatchID
GO