namespace Project
{
    partial class Search
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
            this.Searchby = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Searchbutton = new System.Windows.Forms.Button();
            this.Name = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.Back = new System.Windows.Forms.Button();
            this.Logout = new System.Windows.Forms.Button();
            this.Follow = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Username = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // Searchby
            // 
            this.Searchby.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.Searchby.FormattingEnabled = true;
            this.Searchby.Items.AddRange(new object[] {
            "Team",
            "Player"});
            this.Searchby.Location = new System.Drawing.Point(118, 36);
            this.Searchby.Name = "Searchby";
            this.Searchby.Size = new System.Drawing.Size(121, 21);
            this.Searchby.TabIndex = 0;
            this.Searchby.SelectedIndexChanged += new System.EventHandler(this.Searchby_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(44, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Search by";
            // 
            // Searchbutton
            // 
            this.Searchbutton.Location = new System.Drawing.Point(164, 87);
            this.Searchbutton.Name = "Searchbutton";
            this.Searchbutton.Size = new System.Drawing.Size(75, 23);
            this.Searchbutton.TabIndex = 2;
            this.Searchbutton.Text = "Search";
            this.Searchbutton.UseVisualStyleBackColor = true;
            this.Searchbutton.Click += new System.EventHandler(this.Searchbutton_Click_1);
            this.Searchbutton.MouseClick += new System.Windows.Forms.MouseEventHandler(this.Searchbutton_MouseClick);
            // 
            // Name
            // 
            this.Name.Location = new System.Drawing.Point(139, 63);
            this.Name.Name = "Name";
            this.Name.Size = new System.Drawing.Size(100, 20);
            this.Name.TabIndex = 3;
            this.Name.TextChanged += new System.EventHandler(this.Name_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(44, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Name";
            // 
            // Back
            // 
            this.Back.Location = new System.Drawing.Point(670, 316);
            this.Back.Name = "Back";
            this.Back.Size = new System.Drawing.Size(75, 23);
            this.Back.TabIndex = 5;
            this.Back.Text = "Back";
            this.Back.UseVisualStyleBackColor = true;
            this.Back.Click += new System.EventHandler(this.Back_Click);
            // 
            // Logout
            // 
            this.Logout.Location = new System.Drawing.Point(670, 34);
            this.Logout.Name = "Logout";
            this.Logout.Size = new System.Drawing.Size(75, 23);
            this.Logout.TabIndex = 6;
            this.Logout.Text = "Logout";
            this.Logout.UseVisualStyleBackColor = true;
            this.Logout.Click += new System.EventHandler(this.Logout_Click);
            // 
            // Follow
            // 
            this.Follow.Location = new System.Drawing.Point(462, 316);
            this.Follow.Name = "Follow";
            this.Follow.Size = new System.Drawing.Size(75, 23);
            this.Follow.TabIndex = 7;
            this.Follow.Text = "Follow";
            this.Follow.UseVisualStyleBackColor = true;
            this.Follow.Click += new System.EventHandler(this.Follow_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(47, 125);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(698, 150);
            this.dataGridView1.TabIndex = 8;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // Username
            // 
            this.Username.AutoSize = true;
            this.Username.Location = new System.Drawing.Point(690, 9);
            this.Username.Name = "Username";
            this.Username.Size = new System.Drawing.Size(53, 13);
            this.Username.TabIndex = 9;
            this.Username.Text = "username";
            this.Username.Click += new System.EventHandler(this.Username_Click);
            // 
            // Search
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Username);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.Follow);
            this.Controls.Add(this.Logout);
            this.Controls.Add(this.Back);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.Name);
            this.Controls.Add(this.Searchbutton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Searchby);
            
            this.Text = "Search";
            this.Load += new System.EventHandler(this.Search_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox Searchby;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Searchbutton;
        private System.Windows.Forms.TextBox Name;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button Back;
        private System.Windows.Forms.Button Logout;
        private System.Windows.Forms.Button Follow;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label Username;
    }
}