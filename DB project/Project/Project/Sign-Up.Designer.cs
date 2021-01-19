namespace Project
{
    partial class Sign_Up
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Usertypecombobox = new System.Windows.Forms.ComboBox();
            this.Usernametextbox = new System.Windows.Forms.TextBox();
            this.Passwordtextbox = new System.Windows.Forms.TextBox();
            this.ReEntertextbox = new System.Windows.Forms.TextBox();
            this.Agetextbox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.Gendercombobox = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.Nationalitytextbox = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // Usertypecombobox
            // 
            this.Usertypecombobox.AutoCompleteCustomSource.AddRange(new string[] {
            "Fan",
            "Predictor",
            "Scout"});
            this.Usertypecombobox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.Usertypecombobox.FormattingEnabled = true;
            this.Usertypecombobox.Items.AddRange(new object[] {
            "Fan",
            "Predictor",
            "Scout"});
            this.Usertypecombobox.Location = new System.Drawing.Point(224, 67);
            this.Usertypecombobox.Name = "Usertypecombobox";
            this.Usertypecombobox.Size = new System.Drawing.Size(100, 21);
            this.Usertypecombobox.TabIndex = 0;
            this.Usertypecombobox.SelectedIndexChanged += new System.EventHandler(this.Usertypecombobox_SelectedIndexChanged);
            // 
            // Usernametextbox
            // 
            this.Usernametextbox.Location = new System.Drawing.Point(224, 94);
            this.Usernametextbox.Name = "Usernametextbox";
            this.Usernametextbox.Size = new System.Drawing.Size(100, 20);
            this.Usernametextbox.TabIndex = 1;
            this.Usernametextbox.TextChanged += new System.EventHandler(this.Usernametextbox_TextChanged);
            // 
            // Passwordtextbox
            // 
            this.Passwordtextbox.Location = new System.Drawing.Point(224, 120);
            this.Passwordtextbox.Name = "Passwordtextbox";
            this.Passwordtextbox.PasswordChar = '*';
            this.Passwordtextbox.Size = new System.Drawing.Size(100, 20);
            this.Passwordtextbox.TabIndex = 2;
            this.Passwordtextbox.TextChanged += new System.EventHandler(this.Passwordtextbox_TextChanged);
            // 
            // ReEntertextbox
            // 
            this.ReEntertextbox.Location = new System.Drawing.Point(224, 146);
            this.ReEntertextbox.Name = "ReEntertextbox";
            this.ReEntertextbox.PasswordChar = '*';
            this.ReEntertextbox.Size = new System.Drawing.Size(100, 20);
            this.ReEntertextbox.TabIndex = 3;
            this.ReEntertextbox.TextChanged += new System.EventHandler(this.ReEntertextbox_TextChanged);
            // 
            // Agetextbox
            // 
            this.Agetextbox.Location = new System.Drawing.Point(224, 172);
            this.Agetextbox.Name = "Agetextbox";
            this.Agetextbox.Size = new System.Drawing.Size(100, 20);
            this.Agetextbox.TabIndex = 5;
            this.Agetextbox.TextChanged += new System.EventHandler(this.Agetextbox_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(148, 75);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "User type";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(148, 101);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "User name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(148, 127);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Password";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(148, 153);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(48, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "Re-enter";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(148, 179);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(26, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Age";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(149, 234);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(42, 13);
            this.label7.TabIndex = 13;
            this.label7.Text = "Gender";
            // 
            // Gendercombobox
            // 
            this.Gendercombobox.AutoCompleteCustomSource.AddRange(new string[] {
            "M",
            "F"});
            this.Gendercombobox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.Gendercombobox.FormattingEnabled = true;
            this.Gendercombobox.Items.AddRange(new object[] {
            "M",
            "F"});
            this.Gendercombobox.Location = new System.Drawing.Point(225, 226);
            this.Gendercombobox.Name = "Gendercombobox";
            this.Gendercombobox.Size = new System.Drawing.Size(100, 21);
            this.Gendercombobox.TabIndex = 14;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(249, 267);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 15;
            this.button1.Text = "Back";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(151, 267);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 16;
            this.button2.Text = "Create";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Nationalitytextbox
            // 
            this.Nationalitytextbox.Location = new System.Drawing.Point(224, 198);
            this.Nationalitytextbox.Name = "Nationalitytextbox";
            this.Nationalitytextbox.Size = new System.Drawing.Size(100, 20);
            this.Nationalitytextbox.TabIndex = 17;
            this.Nationalitytextbox.TextChanged += new System.EventHandler(this.Nationalitytextbox_TextChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(149, 205);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(56, 13);
            this.label8.TabIndex = 18;
            this.label8.Text = "Nationality";
            // 
            // Sign_Up
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(649, 386);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.Nationalitytextbox);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Gendercombobox);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Agetextbox);
            this.Controls.Add(this.ReEntertextbox);
            this.Controls.Add(this.Passwordtextbox);
            this.Controls.Add(this.Usernametextbox);
            this.Controls.Add(this.Usertypecombobox);
            this.Name = "Sign_Up";
            this.Text = "Sign_Up";
            this.Load += new System.EventHandler(this.Sign_Up_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox Usertypecombobox;
        private System.Windows.Forms.TextBox Usernametextbox;
        private System.Windows.Forms.TextBox Passwordtextbox;
        private System.Windows.Forms.TextBox ReEntertextbox;
        private System.Windows.Forms.TextBox Agetextbox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox Gendercombobox;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox Nationalitytextbox;
        private System.Windows.Forms.Label label8;
    }
}