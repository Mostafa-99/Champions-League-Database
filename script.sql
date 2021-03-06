USE [master]
GO
/****** Object:  Database [UEFAChampionsLeague]    Script Date: 22/12/2019 10:48:26 ******/
CREATE DATABASE [UEFAChampionsLeague]

GO

Use [UEFAChampionsLeague]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booked_A](
	[UName] [varchar](30) NOT NULL,
	[MID] [int] NOT NULL,
	[NoOfTickest] [int] NULL,
	[Class] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UName] ASC,
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[TName] [varchar](20) NOT NULL,
	[TYear] [int] NOT NULL,
	[NoOfGoals] [int] NOT NULL,
	[NoOfWins] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerID] [int] NOT NULL,
	[FName] [varchar](20) NOT NULL,
	[LName] [varchar](20) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[Wins] [int] NOT NULL,
	[Loses] [int] NOT NULL,
	[Draws] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[MatchID] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Day] [int] NOT NULL,
	[HostScore] [int] NULL,
	[GuestScore] [int] NULL,
	[Type] [varchar](20) NOT NULL,
	[FinalWinner] [varchar](20) NULL,
	[SName] [varchar](30) NOT NULL,
	[HostName] [varchar](20) NOT NULL,
	[GuestName] [varchar](20) NOT NULL,
	[RefID] [int] NOT NULL,
 CONSTRAINT [PK__Match__4218C83783A6B7A3] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[PlayerID] [int] NOT NULL,
	[FName] [varchar](20) NOT NULL,
	[LName] [varchar](20) NOT NULL,
	[Age] [int] NOT NULL,
	[MarketValue] [float] NOT NULL,
	[Position] [varchar](3) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[Height] [int] NOT NULL,
	[PreferredFoot] [varchar](1) NOT NULL,
	[Technical] [int] NOT NULL,
	[Attacking] [int] NOT NULL,
	[Defence] [int] NOT NULL,
	[Tactical] [int] NOT NULL,
	[Creativity] [int] NOT NULL,
	[VotesNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plays_A]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plays_A](
	[PID] [int] NOT NULL,
	[MID] [int] NOT NULL,
	[Goals] [int] NOT NULL,
	[Assists] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC,
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plays_For_A]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plays_For_A](
	[PID] [int] NOT NULL,
	[TName] [varchar](20) NOT NULL,
	[StartDate] [varchar](10) NOT NULL,
	[EndDate] [varchar](10) NOT NULL,
	[PlayerNum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC,
	[TName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predict]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predict](
	[UName] [varchar](30) NOT NULL,
	[MID] [int] NOT NULL,
	[HostPredictedResult] [int] NOT NULL,
	[GuestPredictedResult] [int] NOT NULL,
	[Score] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UName] ASC,
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Punished_In]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Punished_In](
	[MID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[NoOfMatches] [int] NOT NULL,
	[NoOfYellowCards] [int] NOT NULL,
	[RedCard] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC,
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referee]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[RefereeID] [int] NOT NULL,
	[FName] [varchar](20) NOT NULL,
	[LName] [varchar](20) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RefereeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[Name] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsors]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsors](
	[TMName] [varchar](20) NOT NULL,
	[SPName] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TMName] ASC,
	[SPName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadium]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadium](
	[StadiumName] [varchar](30) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[Country] [varchar](20) NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK__Stadium__A15453D437FB247F] PRIMARY KEY CLUSTERED 
(
	[StadiumName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamName] [varchar](20) NOT NULL,
	[FoundationYear] [int] NOT NULL,
	[MgrID] [int] NULL,
	[Group] [varchar](1) NULL,
	[STDName] [varchar](30) NOT NULL,
	[Wins] [int] NULL,
	[Losses] [int] NULL,
	[Draws] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournament](
	[TournamentYear] [int] NOT NULL,
	[FirstRank] [varchar](20) NOT NULL,
	[SecondRank] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TournamentYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/12/2019 10:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [varchar](30) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[UserType] [varchar](9) NOT NULL,
	[Nationality] [varchar](20) NOT NULL,
	[TeamName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Booked_A] ([UName], [MID], [NoOfTickest], [Class]) VALUES (N'aa', 1, 2, N'B')
INSERT [dbo].[Booked_A] ([UName], [MID], [NoOfTickest], [Class]) VALUES (N'aa', 2, 2, N'A')
INSERT [dbo].[Booked_A] ([UName], [MID], [NoOfTickest], [Class]) VALUES (N'emi2', 1, 3, N'A')
INSERT [dbo].[Booked_A] ([UName], [MID], [NoOfTickest], [Class]) VALUES (N'username', 1, 1, N'C')
INSERT [dbo].[Manager] ([ManagerID], [FName], [LName], [Nationality], [Wins], [Loses], [Draws]) VALUES (1, N'Ernesto', N'Valverde', N'spain', 20, 0, 0)
INSERT [dbo].[Manager] ([ManagerID], [FName], [LName], [Nationality], [Wins], [Loses], [Draws]) VALUES (2, N'jose', N'morinhou', N'port', 958, 52, 9)
INSERT [dbo].[Match] ([MatchID], [Year], [Month], [Day], [HostScore], [GuestScore], [Type], [FinalWinner], [SName], [HostName], [GuestName], [RefID]) VALUES (1, 2010, 2, 2, 0, 0, N'Final', N'RealMadrid', N'Dwe2a', N'RealMadrid', N'Barca', 1)
INSERT [dbo].[Match] ([MatchID], [Year], [Month], [Day], [HostScore], [GuestScore], [Type], [FinalWinner], [SName], [HostName], [GuestName], [RefID]) VALUES (2, 2020, 1, 1, 1, 1, N'Final', N'Draw', N'Dwe2a', N'RealMadrid', N'Barca', 1)
INSERT [dbo].[Match] ([MatchID], [Year], [Month], [Day], [HostScore], [GuestScore], [Type], [FinalWinner], [SName], [HostName], [GuestName], [RefID]) VALUES (3, 2020, 1, 5, 4, 0, N'f', N'Barca', N'Dwe2a', N'Barca', N'RealMadrid', 1)
INSERT [dbo].[Player] ([PlayerID], [FName], [LName], [Age], [MarketValue], [Position], [Nationality], [Height], [PreferredFoot], [Technical], [Attacking], [Defence], [Tactical], [Creativity], [VotesNo]) VALUES (1, N'Mostafa', N'Assem', 20, 1000000000, N'GK', N'Egy', 200, N'R', 3, 5, 8, 9, 1, NULL)
INSERT [dbo].[Player] ([PlayerID], [FName], [LName], [Age], [MarketValue], [Position], [Nationality], [Height], [PreferredFoot], [Technical], [Attacking], [Defence], [Tactical], [Creativity], [VotesNo]) VALUES (2, N'AA', N'AA', 20, 123123, N'GK', N'Egy', 202, N'L', 3, 5, 6, 8, 1, NULL)
INSERT [dbo].[Player] ([PlayerID], [FName], [LName], [Age], [MarketValue], [Position], [Nationality], [Height], [PreferredFoot], [Technical], [Attacking], [Defence], [Tactical], [Creativity], [VotesNo]) VALUES (4, N'leo', N'leo', 33, 12, N'FW', N'egy', 159, N'L', 59, 56, 15, 15, 15, 0)
INSERT [dbo].[Plays_For_A] ([PID], [TName], [StartDate], [EndDate], [PlayerNum]) VALUES (1, N'RealMadrid', N'2019-11-02', N'2019-10-03', 20)
INSERT [dbo].[Plays_For_A] ([PID], [TName], [StartDate], [EndDate], [PlayerNum]) VALUES (2, N'Barca', N'2011-11-01', N'2012-11-06', 2)
INSERT [dbo].[Plays_For_A] ([PID], [TName], [StartDate], [EndDate], [PlayerNum]) VALUES (4, N'RealMadrid', N'15', N'16', 22)
INSERT [dbo].[Predict] ([UName], [MID], [HostPredictedResult], [GuestPredictedResult], [Score]) VALUES (N'aa', 1, 3, 3, NULL)
INSERT [dbo].[Referee] ([RefereeID], [FName], [LName], [Nationality]) VALUES (1, N'Mostafa', N'Assem', N'Egy')
INSERT [dbo].[Referee] ([RefereeID], [FName], [LName], [Nationality]) VALUES (2, N'a', N's', N's')
INSERT [dbo].[Stadium] ([StadiumName], [City], [Country], [Capacity]) VALUES (N'Camp', N'Giza', N'Egy', 20)
INSERT [dbo].[Stadium] ([StadiumName], [City], [Country], [Capacity]) VALUES (N'CampNou', N'Barcelona', N'Spain', 20)
INSERT [dbo].[Stadium] ([StadiumName], [City], [Country], [Capacity]) VALUES (N'Dwe2a', N'Cairo', N'Egy', 20)
INSERT [dbo].[Team] ([TeamName], [FoundationYear], [MgrID], [Group], [STDName], [Wins], [Losses], [Draws]) VALUES (N'Barca', 1999, 1, N'A', N'Camp', 100, 50, 0)
INSERT [dbo].[Team] ([TeamName], [FoundationYear], [MgrID], [Group], [STDName], [Wins], [Losses], [Draws]) VALUES (N'RealMadrid', 1897, 1, N'A', N'Dwe2a', 10, 10, 10)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'aa', N'666', 20, N'M', N'Fan', N'Egy', N'RealMadrid')
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'abdelrahman', N'emam', 190, N'M', N'Predictor', N'egypt', NULL)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'Emi', N'444', 20, N'M', N'Fan', N'am', NULL)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'Emi2', N'444', -20, N'M', N'Admin', N'am', NULL)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'mahmoud', N'mahmoud', 20, N'M', N'Fan', N'egypt', NULL)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'UserName', N'12345', 20, N'M', N'Fan', N'egy', NULL)
INSERT [dbo].[User] ([UserName], [Password], [Age], [Gender], [UserType], [Nationality], [TeamName]) VALUES (N'ziad', N'ziad', 80, N'M', N'Predictor', N'egy', NULL)
ALTER TABLE [dbo].[Booked_A]  WITH CHECK ADD  CONSTRAINT [FK__Booked_A__MID__6754599E] FOREIGN KEY([MID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Booked_A] CHECK CONSTRAINT [FK__Booked_A__MID__6754599E]
GO
ALTER TABLE [dbo].[Booked_A]  WITH CHECK ADD FOREIGN KEY([UName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([TYear])
REFERENCES [dbo].[Tournament] ([TournamentYear])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK__Match__GuestName__44FF419A] FOREIGN KEY([GuestName])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK__Match__GuestName__44FF419A]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK__Match__HostName__440B1D61] FOREIGN KEY([HostName])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK__Match__HostName__440B1D61]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK__Match__RefID__45F365D3] FOREIGN KEY([RefID])
REFERENCES [dbo].[Referee] ([RefereeID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK__Match__RefID__45F365D3]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK__Match__SName__4316F928] FOREIGN KEY([SName])
REFERENCES [dbo].[Stadium] ([StadiumName])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK__Match__SName__4316F928]
GO
ALTER TABLE [dbo].[Plays_A]  WITH CHECK ADD  CONSTRAINT [FK__Plays_A__MID__5535A963] FOREIGN KEY([MID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Plays_A] CHECK CONSTRAINT [FK__Plays_A__MID__5535A963]
GO
ALTER TABLE [dbo].[Plays_A]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[Plays_For_A]  WITH CHECK ADD FOREIGN KEY([TName])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[Plays_For_A]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[Predict]  WITH CHECK ADD  CONSTRAINT [FK__Predict__MID__5FB337D6] FOREIGN KEY([MID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Predict] CHECK CONSTRAINT [FK__Predict__MID__5FB337D6]
GO
ALTER TABLE [dbo].[Predict]  WITH CHECK ADD FOREIGN KEY([UName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Punished_In]  WITH CHECK ADD  CONSTRAINT [FK__Punished_In__MID__59063A47] FOREIGN KEY([MID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Punished_In] CHECK CONSTRAINT [FK__Punished_In__MID__59063A47]
GO
ALTER TABLE [dbo].[Punished_In]  WITH CHECK ADD FOREIGN KEY([PID])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD FOREIGN KEY([SPName])
REFERENCES [dbo].[Sponsor] ([Name])
GO
ALTER TABLE [dbo].[Sponsors]  WITH CHECK ADD FOREIGN KEY([TMName])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD FOREIGN KEY([MgrID])
REFERENCES [dbo].[Manager] ([ManagerID])
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK__Team__STDName__3E52440B] FOREIGN KEY([STDName])
REFERENCES [dbo].[Stadium] ([StadiumName])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK__Team__STDName__3E52440B]
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD FOREIGN KEY([FirstRank])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD FOREIGN KEY([SecondRank])
REFERENCES [dbo].[Team] ([TeamName])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([TeamName])
REFERENCES [dbo].[Team] ([TeamName])
GO
/****** Object:  StoredProcedure [dbo].[Add_Manager]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_Manager] @ManagerID int ,@FName varchar(20),@LName varchar(20),@Nationality varchar(20),@Wins int,@Loses int,@Draws int 
as
begin
Insert into Manager(ManagerID,FName,LName,Nationality,Wins,Loses,Draws)
values (@ManagerID,@FName,@LName,@Nationality,@Wins,@Loses,@Draws)
end 
GO
/****** Object:  StoredProcedure [dbo].[Add_Match]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_Match] @MatchID int ,@Year int ,@Month int , @Day int ,@Type varchar(20),@SName varchar(30),@HostName varchar(20),@GuestName varchar(20),@RefID int 
As 
Begin
Insert into Match
(MatchID,Year,Month,Day,Type,SName,HostName,GuestName,RefID)
Values (@MatchID,@Year,@Month,@Day,@Type,@SName,@HostName,@GuestName,@RefID)
End
GO
/****** Object:  StoredProcedure [dbo].[Add_new_admin]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_new_admin] @UserName Varchar(30)
AS
UPDATE [User]
SET UserType = 'Admin'
WHERE
UserName = @UserName
GO
/****** Object:  StoredProcedure [dbo].[Add_New_Team]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Add_New_Team] @TeamName varchar(20),@FoundationYear int, @MgrID int,@Group varchar(1),@STDName varchar(30),@wins int,@Losses int ,@Draws int
As
begin
Insert Into Team (TeamName,FoundationYear,MgrID,[Group],STDName,Wins,Losses,Draws)
Values(@TeamName,@FoundationYear,@MgrID,@Group,@STDName,@wins,@Losses,@Draws)
end
GO
/****** Object:  StoredProcedure [dbo].[Add_new_user]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Add_new_user] @UserName varchar(30), @Password varchar(15), @Age int, @Gender varchar(1), @UserType varchar(9), @Nationality varchar(20)
AS
INSERT INTO [User] (UserName,Password,Age,Gender,UserType,Nationality)
VALUES (@UserName,@Password,@Age,@Gender,@UserType,@Nationality)
GO
/****** Object:  StoredProcedure [dbo].[Add_Referee]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Add_Referee] @RefereeID int ,@FName varchar(20),@LName varchar(20),@Nationality varchar(20)
As
Begin
Insert into Referee
(RefereeID,FName,LName,Nationality)
values (@RefereeID,@FName,@LName,@Nationality)
End 
GO
/****** Object:  StoredProcedure [dbo].[Add_Stadium]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Add_Stadium] @StadiumName varchar(30),@City varchar(20),@Country varchar(20),@Capacity int
As
Begin
Insert into Stadium
(StadiumName,City,Country,Capacity)
Values (@StadiumName,@City,@Country,@Capacity)
End
GO
/****** Object:  StoredProcedure [dbo].[AddFavTeam]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[AddFavTeam] @UserName Varchar(30),@TName varchar(20)
AS
update [User] 
set TeamName=@TName
where UserName=@UserName

GO
/****** Object:  StoredProcedure [dbo].[BOOK_MATCH]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BOOK_MATCH] @UName varchar(30),@MID int,@NoOfTickest int,@Class varchar(1)

AS
INSERT INTO Booked_A (UName,MID,NoOfTickest,Class)
values (@UName,@MID,@NoOfTickest,@Class)
GO
/****** Object:  StoredProcedure [dbo].[ChangePassword]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ChangePassword] @UserName Varchar(30),@newPassword varchar(15)
as
UPDATE [User]
set [Password]=@newPassword
where UserName=@UserName












GO
/****** Object:  StoredProcedure [dbo].[Check_Manager_Presence]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Check_Manager_Presence] @FName varchar(20),@LName varchar(20)
As
Begin
select Count(*)
From Manager
Where FName=@FName And LName=@LName
End
GO
/****** Object:  StoredProcedure [dbo].[Check_Match_Presence]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Check_Match_Presence] @HostName varchar(20),@GuestName varchar(20),@Year int ,@Month int ,@Day int 
As 
Begin 
Select Count(*)
From Match
where (HostName=@HostName ANd GuestName=@GuestName And [YEAR]=@Year ANd [Month]=@Month And [Day]=@Day)Or(HostName=@GuestName ANd GuestName=@HostName And [YEAR]=@Year ANd [Month]=@Month And [Day]=@Day)
End 
GO
/****** Object:  StoredProcedure [dbo].[Check_Player_Presence]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Check_Player_Presence] @FName varchar(20),@LName varchar(20),@TName varchar(20)
AS
BEGIN
select count(*)
from Player As P join Plays_For_A As PA on P.PlayerID=PA.PID 
where FName=@FName AND LName=@LName AND PA.TName=@TName
End
GO
/****** Object:  StoredProcedure [dbo].[Check_Referee_Presence]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Check_Referee_Presence] @FName varchar(20),@LName varchar(20)
As
Begin
Select Count(*)
From Referee 
Where FName=@FName And LName=@LName
End
GO
/****** Object:  StoredProcedure [dbo].[Check_Stadium_Presence]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Check_Stadium_Presence] @StadiumName varchar(30)
As
Begin
select Count(*)
From Stadium 
where StadiumName=@StadiumName
End
GO
/****** Object:  StoredProcedure [dbo].[Create_New_Player]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Create_New_Player] @PlayerID int, @FName varchar(20), @LName varchar(20), @Age int, @MarketValue float, @Position varchar(3), @Nationality varchar(20), @Height int, @PreferredFoot varchar(1), @Tactical int, @Attacking int, @Defence int, @Technical int, @Creativity int, @Tname varchar(20),@VotesNo int,@PlayerNo int,@StartDate varchar(10),@EndDate varchar(10)
AS
INSERT INTO Player 
(PlayerID, FName, LName, Age, MarketValue, Position, Nationality, Height, PreferredFoot, Tactical, Attacking, Defence, Technical, Creativity,VotesNo)
VALUES (@PlayerID, @FName, @LName, @Age, @MarketValue, @Position, @Nationality, @Height, @PreferredFoot, @Tactical, @Attacking, @Defence, @Technical, @Creativity,@VotesNo)
INSERT INTO Plays_For_A 
(TName,PID,StartDate,EndDate,PlayerNum)
VALUES (@Tname,@PlayerID,@StartDate,@EndDate,@PlayerNo)
GO
/****** Object:  StoredProcedure [dbo].[date_of_the_match]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[date_of_the_match] @hostname varchar(20) , @guestname varchar(20)
AS
BEGIN
	SELECT [Year] , [Month] , [Day]
	from [Match]
	where @hostname =HostName and @guestname = GuestName
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteFavTeam]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[DeleteFavTeam] @Uname varchar(30)
AS
BEGIN
	update [User] 
	set TeamName=NULL
	WHERE @Uname = UserName
END
GO
/****** Object:  StoredProcedure [dbo].[GET_A_TEAM_BY_TEAMNAME]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GET_A_TEAM_BY_TEAMNAME] @TeamName varchar(20)
As
Begin
select FoundationYear,MgrID,[Group],STDName,Wins,Losses,Draws
From Team
where TeamName=@TeamName
end 
GO
/****** Object:  StoredProcedure [dbo].[Get_Manager_By_ID]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Get_Manager_By_ID] @ManagerID int 
As
Begin
select FName As FirstName,LName As LastName,Nationality ,Wins,Loses,Draws
FROM Manager 
WHERE ManagerID=@ManagerID
end
GO
/****** Object:  StoredProcedure [dbo].[Get_Match_ID]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Match_ID] @HostName varchar(20),@GuestName varchar(20),@Year int, @Month int, @Day int
AS
SELECT MatchID FROM Match 
WHERE HostName = @HostName And GuestName = @GuestName AND Year = @Year AND Month = @Month AND Day = @Day
GO
/****** Object:  StoredProcedure [dbo].[Get_Match_Timing]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Get_Match_Timing] @HostName varchar(20),@GuestName varchar(20)
As
Begin
Select Year,Month,DAY 
From Match
Where HostName=@HostName And GuestName=@GuestName
End 
GO
/****** Object:  StoredProcedure [dbo].[Get_Max_ID_Of_Manager]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Get_Max_ID_Of_Manager] 
AS
BEGIN
SELECT MAX(M.ManagerID)
FROM Manager AS M
END 
GO
/****** Object:  StoredProcedure [dbo].[Get_Max_Of_Match_ID]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Max_Of_Match_ID] 
As
Begin 
Select Max(MatchID)
From [Match]
End
GO
/****** Object:  StoredProcedure [dbo].[Get_Max_Ref_Id]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_Max_Ref_Id] 
As
Begin
Select Max(RefereeID)
From Referee
End 
GO
/****** Object:  StoredProcedure [dbo].[GET_PLAYER_COUNTS]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_PLAYER_COUNTS]
AS
begin
SELECT MAX(PlayerID)
FROM Player
end
GO
/****** Object:  StoredProcedure [dbo].[Get_Player_Info_By_ID]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Get_Player_Info_By_ID] @PlayerID int 
As
Begin
select Age,MarketValue,Position,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,StartDate,EndDate,PlayerNum,PA.TName
From Player As P join Plays_For_A As PA on P.PlayerID=PA.PID
where P.PlayerID=@PlayerID
end
GO
/****** Object:  StoredProcedure [dbo].[GetFavTeam]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[GetFavTeam] @Uname varchar(30)
AS
BEGIN
	SELECT  TeamName 
	FROM [User]
	WHERE @Uname = UserName
	
END
GO
/****** Object:  StoredProcedure [dbo].[Player_in_a_team]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Player_in_a_team] @team_name varchar(20)

AS
BEGIN
	SELECT PlayerID , LName
	FROM Player as p1 join Plays_For_A as p2 on p1.PlayerID = p2.PID 
	WHERE @team_name = p2.TName 
END
GO
/****** Object:  StoredProcedure [dbo].[Predict_Match]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Predict_Match] @UName varchar(30), @MID int, @HostPredictedResult int, @GuestPredictedResult int, @Score int =NULL
AS
INSERT INTO Predict (UName,MID,HostPredictedResult,GuestPredictedResult,Score)
VALUES (@UName,@MID,@HostPredictedResult,@GuestPredictedResult,@Score)
GO
/****** Object:  StoredProcedure [dbo].[Predictors_LeaderBoard]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Predictors_LeaderBoard]
AS
SELECT UserName AS User_Name , Sum(Score) AS Score FROM ([User] JOIN Predict on UserName = UName)
GROUP BY UserName
GO
/****** Object:  StoredProcedure [dbo].[Results]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,MAhmoud Alaa>
-- Create date: <Create Date,,>
-- Description:	<fan func>
-- =============================================

----- func to return table of the upcoming matches for the chosen team 
CREATE PROCEDURE [dbo].[Results] @year_in int ,@month_in int , @day_in int , @team_in varchar(20)  

AS
BEGIN
	SELECT  HostName ,GuestName ,HostScore,GuestScore, [Year] , [Month] , [Day]
	FROM [Match]
	WHERE (@team_in = HostName or @team_in = GuestName) and ((@year_in > [Year]) or (@year_in = [Year] and @month_in > [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in >= [Day] ))
END
GO
/****** Object:  StoredProcedure [dbo].[Return_guest]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Return_guest] @HostName varchar(20)
AS
begin
select GuestName ,MatchID
from [Match]
where @HostName=HostName
end
GO
/****** Object:  StoredProcedure [dbo].[Return_teams]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Return_teams] 

AS
BEGIN
	SELECT TeamName as Team
	FROM Team
END
GO
/****** Object:  StoredProcedure [dbo].[Search_By_Name]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------
---------2 search players by name ---------------------------------------------------------
CREATE PROCEDURE [dbo].[Search_By_Name] @player_id int 
AS
BEGIN
	SELECT  PlayerID ,Age ,MarketValue,Position,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player join Plays_For_A on PlayerID=PID
	WHERE @player_id = PlayerID
END
GO
/****** Object:  StoredProcedure [dbo].[Search_By_Position]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_By_Position] @player_position varchar(3)
AS
BEGIN
	SELECT  FName as FirstName,LName as LastName  ,Age ,MarketValue,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player join Plays_For_A on PlayerID=PID
	WHERE @player_position = Position
END
GO
/****** Object:  StoredProcedure [dbo].[Search_By_Rating]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Search_By_Rating] @player_rating_technical int 
AS
BEGIN
	SELECT  FName as FirstName,LName as LastName  ,Age ,MarketValue,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,TName
	FROM Player join Plays_For_A on PlayerID=PID
	WHERE @player_rating_technical <= Technical
END
GO
/****** Object:  StoredProcedure [dbo].[SearchByPlayerName]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchByPlayerName] @player_name varchar(20)
AS
BEGIN
	SELECT  FName as FirstName,LName as LastName ,Age ,MarketValue,Position,Nationality,Height,PreferredFoot,Technical,Attacking,Defence,Tactical,Creativity,pa.TName , NoOfYellowCards , RedCard
	FROM (Player as p join Plays_For_A as pa on p.PlayerID=pa.PID) join Punished_In as pun on  p.PlayerID = pun.PID
	WHERE @player_name = LName
END
GO
/****** Object:  StoredProcedure [dbo].[SearchForTeam]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create PROCEDURE [dbo].[SearchForTeam] @Tname varchar(20)
AS
BEGIN
	SELECT  TeamName,FoundationYear,MgrID,[Group],STDName,Wins,Losses,Draws
	FROM Team 
	WHERE @Tname = TeamName
END
GO
/****** Object:  StoredProcedure [dbo].[Show_Managers]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------------------------------------------------------------
--------------------scouts proc--------------------------------------
--------1 show managers by name ----------------------------------
CREATE PROCEDURE [dbo].[Show_Managers] @man_id int 
AS
BEGIN
	SELECT  ManagerID ,FName ,LName,Nationality,Wins,Loses ,Draws 
	FROM Manager 
	WHERE @man_id = ManagerID
END
GO
/****** Object:  StoredProcedure [dbo].[Standings]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Standings] @Groupin  varchar(1)
AS
BEGIN
	SELECT TeamName,Wins,Draws,Losses,Points=((Wins*3)+(Draws*1))
	FROM Team
	WHERE [Group]=@Groupin
END
GO
/****** Object:  StoredProcedure [dbo].[Upcoming_Matches]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Upcoming_Matches] @year_in int ,@month_in int , @day_in int , @team_in varchar(20)  
AS
BEGIN
	SELECT  HostName ,GuestName ,SName as Stadium,r.FName as Referee_FirstName,r.LName as Referee_LastName,[Year] , [Month] , [Day]

	FROM [Match] as m join Referee as r on m.RefID=r.RefereeID 
	WHERE (@team_in = HostName or @team_in = GuestName) and ((@year_in < [Year]) or (@year_in = [Year] and @month_in < [Month]) or (@year_in = [Year] and @month_in = [Month] and @day_in <= [Day] ))
END
GO
/****** Object:  StoredProcedure [dbo].[Update_A_Player]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_A_Player] @PlayerID int, @FName varchar(20), @LName varchar(20), @Age int, @MarketValue float, @Position varchar(3), @Nationality varchar(20), @Height int, @PreferredFoot varchar(1), @Tactical int, @Attacking int, @Defence int, @Technical int, @Creativity int, @Tname varchar(20),@PlayerNo int,@StartDate varchar(10),@EndDate varchar(10)
AS
Update Player
set 
FName=@FName,
LName=@LName,
Age=@Age,
MarketValue=@MarketValue,
Position=@Position,
Nationality=@Nationality,
Height=@Height,
PreferredFoot=@PreferredFoot,
Tactical=@Tactical,
Attacking=@Attacking,
Defence=@Defence,
Technical=@Technical,
Creativity=@Creativity
where PlayerID=@PlayerID
Update Plays_For_A
set 
StartDate=@StartDate,
EndDate=@EndDate,
PlayerNum=@PlayerNo,
TName=@Tname
where PID=@PlayerID
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_A_TEAM]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_A_TEAM] @TeamName varchar(20),@FoundationYear int,@MgrID int,@Group varchar(1),@STDName varchar(30),@Wins int ,@Loses int ,@Draws int
As
begin
Update Team
Set FoundationYear=@FoundationYear,
MgrID=@MgrID,
[Group]=@Group,
STDName=@STDName,
Wins=@Wins,
Losses=@Loses,
Draws=@Draws
where TeamName=@TeamName
end

GO
/****** Object:  StoredProcedure [dbo].[Update_Manager_By_ID]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Update_Manager_By_ID] @ManagerID int ,@FName varchar(20),@LName Varchar (20),@Nationality varchar(20),@Wins int ,@Loses int ,@Draws int 
AS
Begin
update Manager 
set FName=@FName,
LName=@LName,
Nationality=@Nationality,
Wins=@Wins,
Loses=@Loses,
Draws=@Draws
where ManagerID=@ManagerID
end 
GO
/****** Object:  StoredProcedure [dbo].[Update_Match_Details]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Update_Match_Details] @MatchID int ,@HostScore int ,@GuestScore int ,@FinalWinner varchar(20)
As
Begin 
Update Match
Set 
HostScore=@HostScore,
GuestScore=@GuestScore,
FinalWinner=@FinalWinner
Where MatchID=@MatchID
End 
GO
/****** Object:  StoredProcedure [dbo].[Vote_Plus]    Script Date: 22/12/2019 10:48:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Vote_Plus] @player_id int


AS
BEGIN
declare @test int;
set @test = 1 
	UPDATE Player
SET VotesNo = VotesNo + @test
WHERE @player_id = PlayerID
END
GO
USE [master]
GO
ALTER DATABASE [UEFAChampionsLeague] SET  READ_WRITE 
GO
