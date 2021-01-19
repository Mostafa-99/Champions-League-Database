using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Windows.Forms;

namespace Project
{
    public class Controller
    {
        DBManager dbMan;
        public Controller()
        {
            dbMan = new DBManager();
        }

      
        public void TerminateConnection()
        {
            dbMan.CloseConnection();
        }


        public int InsertNewUser(string UserName, string Password, int Age, string Gender,string UserType,string Nationality)
        {
            string StoredProcedureName = StoredProcedures.Add_new_user;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@UserName", UserName);
            Parameters.Add("@Password", Password);
            Parameters.Add("@Age", Age);
            Parameters.Add("@Gender", Gender);
            Parameters.Add("@UserType", UserType);
            Parameters.Add("@Nationality", Nationality);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        
        public int InsertNewAdmin(string UserName)
        {
            string StoredProcedureName = StoredProcedures.Add_new_admin;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@UserName", UserName);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }
        public DataTable SearchPlayerByName(string Fname)
        {
            String StoredProcedureName = StoredProcedures.SearchByPlayerName;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@player_name", Fname);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public DataTable SearchForTeam(string Tname)
        {
            String StoredProcedureName = StoredProcedures.SearchForTeam;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Tname",Tname);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public int AddFavTeam(string UserName,string Team)
        {
            string StoredProcedureName = StoredProcedures.AddFavTeam;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@UserName", UserName);
            Parameters.Add("@TName", Team);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }
        public int ChangePassWord(string UserName, string newpassword)
        {
            string StoredProcedureName = StoredProcedures.ChangePassword;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@UserName", UserName);
            Parameters.Add("@newPassword", newpassword);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }
        public DataTable Standings (string Group)
        {
            String StoredProcedureName = StoredProcedures.Standings;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Groupin", Group);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public DataTable GetFavTeam(string Uname)
        {
            String StoredProcedureName = StoredProcedures.GetFavTeam;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Uname", Uname);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        
        public DataTable FavTeamUpComingM(string year ,string month,string day,string FTeam)
        {
            String StoredProcedureName = StoredProcedures.FavTeamUpComingM;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@year_in",year);
            Parameters.Add("@month_in", month);
            Parameters.Add("@day_in",day);
            Parameters.Add("@team_in", FTeam);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public DataTable Results(string year, string month, string day, string FTeam)
        {
            String StoredProcedureName = StoredProcedures.Results;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@year_in", year);
            Parameters.Add("@month_in", month);
            Parameters.Add("@day_in", day);
            Parameters.Add("@team_in", FTeam);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public int DeleteFavTeam(string UserName)
        {
            string StoredProcedureName = StoredProcedures.DeleteFavTeam;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Uname", UserName);
           
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        //new
        public DataTable TeamPlayers(string Team)
        {
            String StoredProcedureName = StoredProcedures.TeamPlayers;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Team", Team);
            
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        public DataTable CheckPassWord(string UserName, string password, string usertype)
        {
            string StoredProcedureName = StoredProcedures.CheckPassword;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@Username", UserName);
            Parameters.Add("@Password", password);
            Parameters.Add("@UserType", usertype);

            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        //-----------------------------------------------
       
    }
}
