using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Project
{
    public partial class Favourite_team : Form
    {
        Controller controllerobj = new Controller();
        public Favourite_team()
        {
            InitializeComponent();
        }

        private void Favourite_team_Load(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            string day = now.Day.ToString();
            string month = now.Month.ToString();
            string year = now.Year.ToString();//system time

            DataTable dt = controllerobj.GetFavTeam(UserNamePassWord.UserName);
            textBox1.Text = dt.Rows[0][0].ToString();//fav team

            dt = controllerobj.FavTeamUpComingM(year, month, day, textBox1.Text);
            UpcomingMatches.DataSource = dt;
            UpcomingMatches.Refresh();//loading upcoming matched

            dt = controllerobj.Results(year, month, day, textBox1.Text);
            Results.DataSource = dt;
            Results.Refresh();//loading results

            //loading team members
            dt = controllerobj.TeamPlayers(textBox1.Text);
            dataGridView2.DataSource = dt;
            dataGridView2.Refresh();//loading Players
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void UpcomingMatches_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

      

        private void Results_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
