using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Project
{
    public class StoredProcedures
    {
        public static string Add_new_user= "Add_new_user";
        public static string Add_new_admin = "Add_new_admin";

        public static string Count_Of_Matches = "Count_Of_Matches";
        public static string Create_Match = "Create_Match";
        public static string Create_New_Player = "Create_New_Player";
        public static string Create_Team = "Create_Team";
        public static string Edit_Player = "Edit_Player";
        public static string Predictors_LeaderBoard = "Predictors_LeaderBoard";
        
        public static string Search_By_Name = "Search_By_Name";
        public static string Search_By_Position = "Search_By_Position";
        public static string Search_By_Rating = "Search_By_Rating";
        public static string Show_Managers = "Show_Managers";

        public static string Upcoming_Matches = "Upcoming_Matches";
       
        public static string SearchByPlayerName = "SearchByPlayerName";
        public static string SearchForTeam = "SearchForTeam";
        public static string AddFavTeam = "AddFavTeam";
        public static string ChangePassword = "ChangePassword";
        public static string Standings = "Standings";
        public static string GetFavTeam = "GetFavTeam";
        public static string FavTeamUpComingM = "Upcoming_Matches";
        public static string Results = "Results";
        public static string DeleteFavTeam = "DeleteFavTeam";


        //new
        public static string TeamPlayers = "TeamPlayers";
        public static string CheckPassword = "CheckPassword";
    }
}
