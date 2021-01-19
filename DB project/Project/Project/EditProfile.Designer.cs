namespace Project
{
    partial class EditProfile
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
            this.label1 = new System.Windows.Forms.Label();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Change = new System.Windows.Forms.Button();
            this.Back = new System.Windows.Forms.Button();
            this.Logout = new System.Windows.Forms.Button();
            this.NametextBox = new System.Windows.Forms.TextBox();
            this.PassWordtextBox = new System.Windows.Forms.TextBox();
            this.RePassWordtextBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(46, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(46, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "New-PassWord";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(46, 77);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Re-Enter PassWord";
            // 
            // Change
            // 
            this.Change.Location = new System.Drawing.Point(198, 109);
            this.Change.Name = "Change";
            this.Change.Size = new System.Drawing.Size(75, 23);
            this.Change.TabIndex = 3;
            this.Change.Text = "Change";
            this.Change.UseVisualStyleBackColor = true;
            this.Change.Click += new System.EventHandler(this.Change_Click);
            // 
            // Back
            // 
            this.Back.Location = new System.Drawing.Point(198, 138);
            this.Back.Name = "Back";
            this.Back.Size = new System.Drawing.Size(75, 23);
            this.Back.TabIndex = 4;
            this.Back.Text = "Back";
            this.Back.UseVisualStyleBackColor = true;
            this.Back.Click += new System.EventHandler(this.Back_Click);
            // 
            // Logout
            // 
            this.Logout.Location = new System.Drawing.Point(669, 41);
            this.Logout.Name = "Logout";
            this.Logout.Size = new System.Drawing.Size(75, 23);
            this.Logout.TabIndex = 5;
            this.Logout.Text = "Logout";
            this.Logout.UseVisualStyleBackColor = true;
            this.Logout.Click += new System.EventHandler(this.Logout_Click);
            // 
            // NametextBox
            // 
            this.NametextBox.Location = new System.Drawing.Point(173, 18);
            this.NametextBox.Name = "NametextBox";
            this.NametextBox.ReadOnly = true;
            this.NametextBox.Size = new System.Drawing.Size(100, 20);
            this.NametextBox.TabIndex = 6;
            this.NametextBox.TextChanged += new System.EventHandler(this.NametextBox_TextChanged);
            // 
            // PassWordtextBox
            // 
            this.PassWordtextBox.Location = new System.Drawing.Point(173, 44);
            this.PassWordtextBox.Name = "PassWordtextBox";
            this.PassWordtextBox.Size = new System.Drawing.Size(100, 20);
            this.PassWordtextBox.TabIndex = 7;
            this.PassWordtextBox.TextChanged += new System.EventHandler(this.PassWordtextBox_TextChanged);
            // 
            // RePassWordtextBox
            // 
            this.RePassWordtextBox.Location = new System.Drawing.Point(173, 70);
            this.RePassWordtextBox.Name = "RePassWordtextBox";
            this.RePassWordtextBox.Size = new System.Drawing.Size(100, 20);
            this.RePassWordtextBox.TabIndex = 8;
            this.RePassWordtextBox.TextChanged += new System.EventHandler(this.RePassWordtextBox_TextChanged);
            // 
            // EditProfile
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.RePassWordtextBox);
            this.Controls.Add(this.PassWordtextBox);
            this.Controls.Add(this.NametextBox);
            this.Controls.Add(this.Logout);
            this.Controls.Add(this.Back);
            this.Controls.Add(this.Change);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "EditProfile";
            this.Text = "EditProfile";
            this.Load += new System.EventHandler(this.EditProfile_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button Change;
        private System.Windows.Forms.Button Back;
        private System.Windows.Forms.Button Logout;
        private System.Windows.Forms.TextBox NametextBox;
        private System.Windows.Forms.TextBox PassWordtextBox;
        private System.Windows.Forms.TextBox RePassWordtextBox;
    }
}