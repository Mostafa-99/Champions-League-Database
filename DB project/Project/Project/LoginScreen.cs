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
    public partial class LoginScreen : Form
    {
        Controller controllerobj = new Controller();
        public LoginScreen()
        {
            InitializeComponent();
        }

        private void LoginScreen_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            Sign_Up signup = new Sign_Up();
            signup.Show();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            int r = -1;
            if(comboBox1.Text=="Predictor")
            {
               
                Predictor predictor = new Predictor();
                predictor.Show();
               // this.Close();
            }
            else if(comboBox1.Text=="Admin")
            {
                Welcome_admin welcome_Admin = new Welcome_admin();
                welcome_Admin.Show();
            }
            else if(comboBox1.Text=="Fan")
            {
                //new
                DataTable db= controllerobj.CheckPassWord(UserName.Text, PassWord.Text, comboBox1.Text);
                if (db == null)
                {
                    MessageBox.Show("Wrong UserName or PassWord", "Error", MessageBoxButtons.OK);
                    return;
                }
                else
                {
                    UserNamePassWord.UserName = UserName.Text;
                    UserNamePassWord.PassWord = PassWord.Text;
                    Welcome_to_UCL welcome_To_UCL = new Welcome_to_UCL();
                    welcome_To_UCL.Show();
                }
            }
            else if(comboBox1.Text=="Scout")
            {

            }
        }

        private void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        private void PassWord_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
