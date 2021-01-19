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
    public partial class EditProfile : Form
    {
        Controller controllerobj = new Controller();
        public EditProfile()
        {
            InitializeComponent();
        }

        private void EditProfile_Load(object sender, EventArgs e)
        {
            NametextBox.Text = UserNamePassWord.UserName;
        }

        private void NametextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void PassWordtextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void RePassWordtextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void Change_Click(object sender, EventArgs e)
        {
            int r = 0;
            if(PassWordtextBox.Text==RePassWordtextBox.Text)
            {
                r = controllerobj.ChangePassWord(NametextBox.Text, PassWordtextBox.Text);
            }
            else
            {
                MessageBox.Show("Please re-enter password", "Error in password", MessageBoxButtons.OK);
                return;
            }
            MessageBox.Show("Password changed successfully", "Password changed", MessageBoxButtons.OK);
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

        }
    }
}
