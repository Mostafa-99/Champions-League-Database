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
    public partial class Welcome_admin : Form
    {
        public Welcome_admin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Add_new_admins add_New_Admins = new Add_new_admins();
            add_New_Admins.Show();
            this.Close();
        }

        private void button10_Click(object sender, EventArgs e)
        {

        }
    }
}
