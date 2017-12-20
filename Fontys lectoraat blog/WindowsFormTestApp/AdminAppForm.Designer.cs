namespace WindowsFormTestApp
{
    partial class AdminAppForm
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
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.TbSurname = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tbFirstname = new System.Windows.Forms.TextBox();
            this.tbInitials = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.TbPassword = new System.Windows.Forms.TextBox();
            this.TbUsername = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnNewLector = new System.Windows.Forms.Button();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.tbProjecttag = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.tbBlogTag = new System.Windows.Forms.TextBox();
            this.btnBlogTag = new System.Windows.Forms.Button();
            this.tabControl1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Location = new System.Drawing.Point(34, 63);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(711, 503);
            this.tabControl1.TabIndex = 1;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            // 
            // tabPage1
            // 
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(703, 474);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Create Admin";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.TbSurname);
            this.tabPage2.Controls.Add(this.label5);
            this.tabPage2.Controls.Add(this.tbFirstname);
            this.tabPage2.Controls.Add(this.tbInitials);
            this.tabPage2.Controls.Add(this.label3);
            this.tabPage2.Controls.Add(this.label4);
            this.tabPage2.Controls.Add(this.TbPassword);
            this.tabPage2.Controls.Add(this.TbUsername);
            this.tabPage2.Controls.Add(this.label2);
            this.tabPage2.Controls.Add(this.label1);
            this.tabPage2.Controls.Add(this.BtnNewLector);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(703, 474);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Create Lector";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // TbSurname
            // 
            this.TbSurname.Location = new System.Drawing.Point(276, 173);
            this.TbSurname.Name = "TbSurname";
            this.TbSurname.Size = new System.Drawing.Size(100, 22);
            this.TbSurname.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(186, 176);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(65, 17);
            this.label5.TabIndex = 9;
            this.label5.Text = "Surname";
            // 
            // tbFirstname
            // 
            this.tbFirstname.Location = new System.Drawing.Point(276, 145);
            this.tbFirstname.Name = "tbFirstname";
            this.tbFirstname.Size = new System.Drawing.Size(100, 22);
            this.tbFirstname.TabIndex = 8;
            // 
            // tbInitials
            // 
            this.tbInitials.Location = new System.Drawing.Point(276, 117);
            this.tbInitials.Name = "tbInitials";
            this.tbInitials.Size = new System.Drawing.Size(100, 22);
            this.tbInitials.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(188, 148);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(70, 17);
            this.label3.TabIndex = 6;
            this.label3.Text = "Firstname";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(188, 122);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 17);
            this.label4.TabIndex = 5;
            this.label4.Text = "Initials";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // TbPassword
            // 
            this.TbPassword.Location = new System.Drawing.Point(262, 294);
            this.TbPassword.Name = "TbPassword";
            this.TbPassword.Size = new System.Drawing.Size(100, 22);
            this.TbPassword.TabIndex = 4;
            // 
            // TbUsername
            // 
            this.TbUsername.Location = new System.Drawing.Point(262, 266);
            this.TbUsername.Name = "TbUsername";
            this.TbUsername.Size = new System.Drawing.Size(100, 22);
            this.TbUsername.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(172, 297);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Password ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(172, 264);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "UserName";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // BtnNewLector
            // 
            this.BtnNewLector.Location = new System.Drawing.Point(506, 421);
            this.BtnNewLector.Name = "BtnNewLector";
            this.BtnNewLector.Size = new System.Drawing.Size(153, 23);
            this.BtnNewLector.TabIndex = 0;
            this.BtnNewLector.Text = "New Lector";
            this.BtnNewLector.UseVisualStyleBackColor = true;
            this.BtnNewLector.Click += new System.EventHandler(this.BtnNewLector_Click);
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 25);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(703, 474);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Create Student";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.tbBlogTag);
            this.tabPage4.Controls.Add(this.btnBlogTag);
            this.tabPage4.Controls.Add(this.tbProjecttag);
            this.tabPage4.Controls.Add(this.button1);
            this.tabPage4.Location = new System.Drawing.Point(4, 25);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(703, 474);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Tags";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // tbProjecttag
            // 
            this.tbProjecttag.Location = new System.Drawing.Point(309, 157);
            this.tbProjecttag.Name = "tbProjecttag";
            this.tbProjecttag.Size = new System.Drawing.Size(160, 22);
            this.tbProjecttag.TabIndex = 0;
            this.tbProjecttag.TextChanged += new System.EventHandler(this.tbProjecttag_TextChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(475, 157);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(149, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "Add projecttag";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tbBlogTag
            // 
            this.tbBlogTag.Location = new System.Drawing.Point(194, 226);
            this.tbBlogTag.Name = "tbBlogTag";
            this.tbBlogTag.Size = new System.Drawing.Size(160, 22);
            this.tbBlogTag.TabIndex = 2;
            // 
            // btnBlogTag
            // 
            this.btnBlogTag.Location = new System.Drawing.Point(360, 226);
            this.btnBlogTag.Name = "btnBlogTag";
            this.btnBlogTag.Size = new System.Drawing.Size(149, 23);
            this.btnBlogTag.TabIndex = 3;
            this.btnBlogTag.Text = "Add blogtag";
            this.btnBlogTag.UseVisualStyleBackColor = true;
            this.btnBlogTag.Click += new System.EventHandler(this.btnBlogTag_Click);
            // 
            // AdminAppForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(818, 546);
            this.Controls.Add(this.tabControl1);
            this.Name = "AdminAppForm";
            this.Text = "Form1";
            this.tabControl1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button BtnNewLector;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TbPassword;
        private System.Windows.Forms.TextBox TbUsername;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox tbProjecttag;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TextBox tbFirstname;
        private System.Windows.Forms.TextBox tbInitials;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox TbSurname;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbBlogTag;
        private System.Windows.Forms.Button btnBlogTag;
    }
}

