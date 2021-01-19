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
    public partial class Search : Form
    {
        Controller controllerobj = new Controller();
        public Search()
        {
            InitializeComponent();
            Follow.Visible = false;
            dataGridView1.Visible = false;
        }



        private void Search_Load(object sender, EventArgs e)
        {
            Username.Text = UserNamePassWord.UserName;
        }

        private void Follow_Click(object sender, EventArgs e)
        {
            int r=0;
            try
            { 
              r= controllerobj.AddFavTeam(UserNamePassWord.UserName, Name.Text);
            }
            catch
            {
                MessageBox.Show("Error in Following", "Error", MessageBoxButtons.OK);
                return;
            }
            if (r == 1)
            {
                MessageBox.Show("Team Followed succesfully", "Team Followed", MessageBoxButtons.OK);
            }
            else
            {
                MessageBox.Show("You are following a team please unfollow and retry", "Error in Following", MessageBoxButtons.OK);
            }
        }

        private void Searchbutton_Click_1(object sender, EventArgs e)
        {
           
            if (Name.Text == "")
            {
                MessageBox.Show("Please enter the name", "Error in name", MessageBoxButtons.OK);
                return;
            }
            DataTable dt;
            if (Searchby.Text == "Team")
            {
                
               
                dt = controllerobj.SearchForTeam(Name.Text);
               
                if (dt == null)
                {
                    MessageBox.Show("Team name not exist", "Error in team name", MessageBoxButtons.OK);
                   
                    return;
                }
                else
                {
                    Follow.Visible = true;
                    dataGridView1.Visible = true;
                    dataGridView1.DataSource = dt;
                    dataGridView1.Refresh();
                }

            }
            else if (Searchby.Text == "Player")
            {
                dt = controllerobj.SearchPlayerByName(Name.Text);
                Follow.Visible = false;
                if (dt == null)
                {
                    MessageBox.Show("Player name not exist", "Error in player name", MessageBoxButtons.OK);
                    return;
                }
                else
                {
                    dataGridView1.Visible = true;
                    dataGridView1.DataSource = dt;
                    dataGridView1.Refresh();
                }

            }
        }

        private void Back_Click(object sender, EventArgs e)
        {
            this.Close();
            Welcome_to_UCL welcome_To_UCL = new Welcome_to_UCL();
            welcome_To_UCL.Show();
        }

        private void Logout_Click(object sender, EventArgs e)
        {
            this.Close();
            //UserNamePassWord.UserName = "";
           // UserNamePassWord.PassWord = "";
        }

        private void Name_TextChanged(object sender, EventArgs e)
        {

        }

        private void Searchby_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Searchbutton_MouseClick(object sender, MouseEventArgs e)
        {

        }

        private void Username_Click(object sender, EventArgs e)
        {

        }
    }
}
