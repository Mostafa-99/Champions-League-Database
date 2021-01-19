Create Database UEFAChampionsLeague 
Go
use UEFAChampionsLeague
Go
Create Table Stadium 
(
StadiumName varchar (30),
Primary Key (StadiumName),
City varchar(20) not null,
Country Varchar (20) not null
)
----------------------------------------------------------------
Create Table Manager 
(
ManagerID int,
Primary Key (ManagerID),
FName varchar(20) not null,
LName varchar (20) not null,
Nationality varchar(20) not null,
Wins int not null,
Loses int not null,
Draws int not null,
)
--------------------------------------------------------------------
create Table Referee
(
RefereeID int,
Primary Key (RefereeID),
FName varchar (20) not null,
LName varchar (20) not null,
Nationality varchar(20) not null
)
--------------------------------------------------------------------
create Table Team
(
TeamName varchar(20),
Primary Key (TeamName),
FoundationYear int not null,
MgrID int,
Foreign Key (MgrID) references Manager,
STDName varchar(30) not null,
Foreign Key (STDName) references Stadium 
)
---------------------------------------------------------------------
Create Table Player 
(
PlayerID int,
Primary Key (PlayerID),
FName varchar(20) not null,
LName varchar(20) not null,
Age int not null,
MarketValue float not null,
Position varchar(3) not null,
Nationality varchar(20) not null,
Height int not null,
PreferredFoot varchar(1) not null,
Technical int not null,
Attacking int not null,
Defence int not null,
Tactical int not null,
Creativity int not null,
TName varchar(20) not null,
Foreign Key (TName) references Team
)
------------------------------------------------------------------------
create Table [Match]
(
MatchID int,
Primary Key (MatchID),
[Year] int not null,
[Month] int not null,
[Day] int not null,
HostScore int not null,
GuestScore int not null,
[Type] varchar(20) not null,
FinalWinner varchar(20),
SName varchar (30) not null,
Foreign Key (SName) references Stadium,
HostName varchar(20) not null,
GuestName varchar (20) not null,
Foreign Key (HostName) references Team,
Foreign Key (GuestName) references Team,
RefID int not null,
Foreign key (RefID) references Referee
)
---------------------------------------------------------------------------------------
Create Table Tournament
(
TournamentYear int,
Primary Key (TournamentYear),
FirstRank varchar (20) not null,
SecondRank varchar (20) not null,
Foreign Key (FirstRank) References Team,
Foreign Key (SecondRank) References Team
)
----------------------------------------------------------------------------------------
Create Table History 
(
TName varchar(20) not null,
TYear int not null,
Foreign Key (TYear) references Tournament, 
NoOfGoals int not null,
NoOfWins int not null
)
------------------------------------------------------------------------
Create Table Sponsor 
(
[Name] varchar(30), 
Primary Key ([Name])
)
-------------------------------------------------------------------------
create Table Sponsors 
(
TMName varchar(20),
SPName varchar(30),
Foreign Key (TMName) references Team, 
Foreign Key (SPName) references Sponsor,
Primary Key (TMName,SPName)
)
----------------------------------------------------------------
Create Table Plays_A 
(
PID int,
MID int,
Foreign Key(PID) references Player,
Foreign Key(MID) references [Match],
Primary Key (PID,MID),
Goals int not null,
Assists int not null
)
----------------------------------------------------------------------
Create Table Punished_In
(
MID int,
PID int,
foreign Key (PID) references Player,
foreign Key (MID) references [Match],
Primary Key (MID,PID),
NoOfMatches int not null,
NoOfYellowCards int not null,
RedCard int not null 
)
-----------------------------------------------------------------------
Create Table [User]
(
UserName varchar(30),
Primary Key (UserName),
[Password] varchar (15) not null,
Age int not null,
Gender varchar(1) not null,
UserType varchar(9) not null,
Nationality varchar(20) not null,
)
-------------------------------------------------------------
create Table Edit_A
(
UName varchar(30),
MID int,
foreign key (UName) references [User],
foreign key (MID) references [Match],
DateOfUpdate varchar(10) not null,
Primary Key (UName,MID,DateOfUpdate)
)
------------------------------------------------------------------------------
Create Table Predict
(
UName varchar(30),
MID int,
Foreign Key (UName) references [User],
Foreign Key (MID) references [Match],
primary key (UName,MID),
HostPredictedResult int not null,
GuestPredictedResult int not null,
Score int
)
----------------------------------------------------------
Create Table Plays_For_A
(
PID int,
TName varchar(20),
foreign key (PID) references Player,
foreign key (TName) references Team,
Primary Key (PID,TName),
StartDate varchar(10) not null,
EndDate varchar(10) not null,
PlayerNum int not null
)