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
    public partial class Welcome_to_UCL : Form
    {
        Controller controllerobj = new Controller();
        public Welcome_to_UCL()
        {
            InitializeComponent();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Search search = new Search();
            search.Show();
            this.Close();
        }

        private void UserName_Click(object sender, EventArgs e)
        {

        }

        private void Welcome_to_UCL_Load(object sender, EventArgs e)
        {
            UserName.Text = UserNamePassWord.UserName;
        }

        private void button8_Click(object sender, EventArgs e)
        {
            this.Close();
            UserNamePassWord.UserName = "";
            UserNamePassWord.PassWord = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            EditProfile editProfile = new EditProfile();
            editProfile.Show();
            this.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Standings standings = new Standings();
            standings.Show();
            this.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Favourite_team favourite_Team = new Favourite_team();
            favourite_Team.Show();
            this.Close();
        }

        private void UnFollowTeam_Click(object sender, EventArgs e)
        {
             
           int r =controllerobj.DeleteFavTeam(UserNamePassWord.UserName);
            if(r==0)
            {
                MessageBox.Show("Failed", "Error", MessageBoxButtons.OK);
                return;
            }
            else
            {
                MessageBox.Show("Team Removed ", "Removed", MessageBoxButtons.OK);
            }
        }
    }
}
