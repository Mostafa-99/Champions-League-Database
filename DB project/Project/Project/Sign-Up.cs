using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace Project
{
    public partial class Sign_Up : Form
    {
       Controller controllerobj = new Controller();
        public Sign_Up()
        {
            InitializeComponent();
            
        }

   

        private void button2_Click(object sender, EventArgs e)
        {
            int r = 0;
            if (Convert.ToInt32(Agetextbox.Text) <= 10)
            {
                MessageBox.Show("You should be more than 10 years", "Error", MessageBoxButtons.OK);
                return;
            }
            else
            {
                string input = Passwordtextbox.Text;
                string output;
                int r2=input.GetHashCode();

              //  using System.Security.Cryptography;
                string Password= Enccoder


                r = controllerobj.InsertNewUser(Usernametextbox.Text.ToString(), r2.ToString(), Convert.ToInt32(Agetextbox.Text), Gendercombobox.Text, Usertypecombobox.Text, Nationalitytextbox.Text.ToString());
            }
            if(r==0)
            {
                MessageBox.Show("User name is already taken", "Error", MessageBoxButtons.OK);
                return;
            }
            else
            {
                MessageBox.Show("Signed Up successfully", "Message", MessageBoxButtons.OK);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        static int HashFunction2(string s, string[] array)
        {
            long total = 0;
            char[] c;
            c = s.ToCharArray();

            // Horner's rule for generating a polynomial  
            // of 11 using ASCII values of the characters 
            for (int k = 0; k <= c.GetUpperBound(0); k++)

                total += 11 * total + (int)c[k];

            total = total % array.GetUpperBound(0);

            if (total < 0)
                total += array.GetUpperBound(0);

            return (int)total;
        }

        private void Passwordtextbox_TextChanged(object sender, EventArgs e)
        {

        }

        private void ReEntertextbox_TextChanged(object sender, EventArgs e)
        {

        }

        private void Usernametextbox_TextChanged(object sender, EventArgs e)
        {

        }

        private void Usertypecombobox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Agetextbox_TextChanged(object sender, EventArgs e)
        {

        }

        private void Sign_Up_Load(object sender, EventArgs e)
        {

        }

        private void Nationalitytextbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
