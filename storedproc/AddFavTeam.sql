USE [UEFAChampionsLeague]
GO

Create PROCEDURE [dbo].[AddFavTeam] @UserName Varchar(30),@TName varchar(20)
AS
insert into Favourite_Team values (@UserName,@TName)
