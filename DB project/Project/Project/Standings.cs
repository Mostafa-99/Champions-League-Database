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
    public partial class Standings : Form
    {
        Controller controllerobj = new Controller();

        public Standings()
        {
            InitializeComponent();
            dataGridView1.Visible = false;
            label2.Text = UserNamePassWord.UserName;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = controllerobj.Standings(comboBox1.Text);
            if(dt==null)
            {
                
                dataGridView1.Visible = false;
                dataGridView1.Refresh();
                MessageBox.Show("No Teams in the group", "Error", MessageBoxButtons.OK);
                return;
            }
            else
            {
                dataGridView1.Visible = true;
            dt.DefaultView.Sort = "Points DESC";
            dataGridView1.DataSource = dt;
            dataGridView1.Refresh();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
           // UserNamePassWord.UserName = "";
            //UserNamePassWord.PassWord = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            Welcome_to_UCL welcome_To_UCL = new Welcome_to_UCL();
            welcome_To_UCL.Show();
        }

        private void Standings_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
