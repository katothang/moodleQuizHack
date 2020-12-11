namespace GetAnswer
{
    partial class Home
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
            this.panelHome = new System.Windows.Forms.Panel();
            this.panelSetting = new System.Windows.Forms.Panel();
            this.btnGo = new System.Windows.Forms.Button();
            this.tbUrl = new System.Windows.Forms.TextBox();
            this.btnLogin = new System.Windows.Forms.Button();
            this.tbPass = new System.Windows.Forms.TextBox();
            this.tbUserName = new System.Windows.Forms.TextBox();
            this.cburlCourse = new System.Windows.Forms.ComboBox();
            this.panelSetting.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelHome
            // 
            this.panelHome.Location = new System.Drawing.Point(13, 12);
            this.panelHome.Name = "panelHome";
            this.panelHome.Size = new System.Drawing.Size(679, 426);
            this.panelHome.TabIndex = 0;
            // 
            // panelSetting
            // 
            this.panelSetting.Controls.Add(this.cburlCourse);
            this.panelSetting.Controls.Add(this.btnGo);
            this.panelSetting.Controls.Add(this.tbUrl);
            this.panelSetting.Controls.Add(this.btnLogin);
            this.panelSetting.Controls.Add(this.tbPass);
            this.panelSetting.Controls.Add(this.tbUserName);
            this.panelSetting.Location = new System.Drawing.Point(699, 13);
            this.panelSetting.Name = "panelSetting";
            this.panelSetting.Size = new System.Drawing.Size(355, 425);
            this.panelSetting.TabIndex = 1;
            // 
            // btnGo
            // 
            this.btnGo.Location = new System.Drawing.Point(274, 71);
            this.btnGo.Name = "btnGo";
            this.btnGo.Size = new System.Drawing.Size(75, 23);
            this.btnGo.TabIndex = 11;
            this.btnGo.Text = "go";
            this.btnGo.UseVisualStyleBackColor = true;
            this.btnGo.Click += new System.EventHandler(this.btnGo_Click);
            // 
            // tbUrl
            // 
            this.tbUrl.Location = new System.Drawing.Point(13, 71);
            this.tbUrl.Name = "tbUrl";
            this.tbUrl.Size = new System.Drawing.Size(255, 20);
            this.tbUrl.TabIndex = 10;
            // 
            // btnLogin
            // 
            this.btnLogin.Location = new System.Drawing.Point(204, 18);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(75, 23);
            this.btnLogin.TabIndex = 2;
            this.btnLogin.Text = "Login";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // tbPass
            // 
            this.tbPass.Location = new System.Drawing.Point(13, 45);
            this.tbPass.Name = "tbPass";
            this.tbPass.Size = new System.Drawing.Size(155, 20);
            this.tbPass.TabIndex = 1;
            this.tbPass.Text = "Trada90@";
            this.tbPass.UseSystemPasswordChar = true;
            // 
            // tbUserName
            // 
            this.tbUserName.Location = new System.Drawing.Point(13, 18);
            this.tbUserName.Name = "tbUserName";
            this.tbUserName.Size = new System.Drawing.Size(155, 20);
            this.tbUserName.TabIndex = 0;
            this.tbUserName.Text = "trahuongkuti@gmail.com";
            // 
            // cburlCourse
            // 
            this.cburlCourse.FormattingEnabled = true;
            this.cburlCourse.Location = new System.Drawing.Point(13, 121);
            this.cburlCourse.Name = "cburlCourse";
            this.cburlCourse.Size = new System.Drawing.Size(179, 21);
            this.cburlCourse.TabIndex = 12;
            // 
            // Home
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1066, 450);
            this.Controls.Add(this.panelSetting);
            this.Controls.Add(this.panelHome);
            this.Name = "Home";
            this.Text = "Form1";
            this.Resize += new System.EventHandler(this.Home_Resize);
            this.panelSetting.ResumeLayout(false);
            this.panelSetting.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelHome;
        private System.Windows.Forms.Panel panelSetting;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.TextBox tbPass;
        private System.Windows.Forms.TextBox tbUserName;
        private System.Windows.Forms.Button btnGo;
        private System.Windows.Forms.TextBox tbUrl;
        private System.Windows.Forms.ComboBox cburlCourse;
    }
}

