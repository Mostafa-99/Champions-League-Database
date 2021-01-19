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
    public partial class Add_new_admins : Form
    {
        Controller controllerobj = new Controller();
        public Add_new_admins()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            controllerobj.InsertNewAdmin(textBox1.Text);
        }

        private void Add_new_admins_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            Welcome_admin welcome_Admin = new Welcome_admin();
            welcome_Admin.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
