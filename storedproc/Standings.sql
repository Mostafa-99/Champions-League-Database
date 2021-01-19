use UEFAChampionsLeague
go

CREATE PROCEDURE [dbo].[Standings] @Groupin  varchar(1)
AS
BEGIN
	SELECT TeamName,Wins,Draws,Losses,Points=((Wins*3)+(Draws*1))
	FROM Team
	WHERE [Group]=@Groupin
END
GO