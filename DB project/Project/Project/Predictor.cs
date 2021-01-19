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
    public partial class Predictor : Form
    {
        public Predictor()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Predict_matches predict_Matches = new Predict_matches();
            predict_Matches.Show();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Leader_board leader_Board = new Leader_board();
            leader_Board.Show();
            this.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Predictor_Load(object sender, EventArgs e)
        {
            LoginScreen a;
            
        }
    }
}
