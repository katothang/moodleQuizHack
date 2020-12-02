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
            this.label2 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.Chọn = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnAuto = new System.Windows.Forms.Button();
            this.btnLoadLinkOnTap = new System.Windows.Forms.Button();
            this.btnLogin = new System.Windows.Forms.Button();
            this.tbPass = new System.Windows.Forms.TextBox();
            this.tbUserName = new System.Windows.Forms.TextBox();
            this.tbUrl = new System.Windows.Forms.TextBox();
            this.btnGo = new System.Windows.Forms.Button();
            this.btnTest = new System.Windows.Forms.Button();
            this.panelSetting.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
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
            this.panelSetting.Controls.Add(this.btnTest);
            this.panelSetting.Controls.Add(this.btnGo);
            this.panelSetting.Controls.Add(this.tbUrl);
            this.panelSetting.Controls.Add(this.label2);
            this.panelSetting.Controls.Add(this.numericUpDown1);
            this.panelSetting.Controls.Add(this.label1);
            this.panelSetting.Controls.Add(this.Chọn);
            this.panelSetting.Controls.Add(this.textBox1);
            this.panelSetting.Controls.Add(this.btnAuto);
            this.panelSetting.Controls.Add(this.btnLoadLinkOnTap);
            this.panelSetting.Controls.Add(this.btnLogin);
            this.panelSetting.Controls.Add(this.tbPass);
            this.panelSetting.Controls.Add(this.tbUserName);
            this.panelSetting.Location = new System.Drawing.Point(699, 13);
            this.panelSetting.Name = "panelSetting";
            this.panelSetting.Size = new System.Drawing.Size(355, 425);
            this.panelSetting.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 250);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "chọn số lần làm lại";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(13, 269);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(120, 20);
            this.numericUpDown1.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 78);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(133, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Chọn thư mục xuất đáp án";
            // 
            // Chọn
            // 
            this.Chọn.Location = new System.Drawing.Point(149, 94);
            this.Chọn.Name = "Chọn";
            this.Chọn.Size = new System.Drawing.Size(75, 23);
            this.Chọn.TabIndex = 6;
            this.Chọn.Text = "Chọn Folder";
            this.Chọn.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(13, 96);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(130, 20);
            this.textBox1.TabIndex = 5;
            // 
            // btnAuto
            // 
            this.btnAuto.Location = new System.Drawing.Point(149, 266);
            this.btnAuto.Name = "btnAuto";
            this.btnAuto.Size = new System.Drawing.Size(117, 23);
            this.btnAuto.TabIndex = 4;
            this.btnAuto.Text = "Auto làm Bài";
            this.btnAuto.UseVisualStyleBackColor = true;
            this.btnAuto.Click += new System.EventHandler(this.btnAuto_Click);
            // 
            // btnLoadLinkOnTap
            // 
            this.btnLoadLinkOnTap.Location = new System.Drawing.Point(13, 214);
            this.btnLoadLinkOnTap.Name = "btnLoadLinkOnTap";
            this.btnLoadLinkOnTap.Size = new System.Drawing.Size(111, 23);
            this.btnLoadLinkOnTap.TabIndex = 3;
            this.btnLoadLinkOnTap.Text = "Load Link Ôn Tập";
            this.btnLoadLinkOnTap.UseVisualStyleBackColor = true;
            this.btnLoadLinkOnTap.Click += new System.EventHandler(this.btnLoadLinkOnTap_Click);
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
            // tbUrl
            // 
            this.tbUrl.Location = new System.Drawing.Point(16, 136);
            this.tbUrl.Name = "tbUrl";
            this.tbUrl.Size = new System.Drawing.Size(255, 20);
            this.tbUrl.TabIndex = 10;
            // 
            // btnGo
            // 
            this.btnGo.Location = new System.Drawing.Point(277, 133);
            this.btnGo.Name = "btnGo";
            this.btnGo.Size = new System.Drawing.Size(75, 23);
            this.btnGo.TabIndex = 11;
            this.btnGo.Text = "go";
            this.btnGo.UseVisualStyleBackColor = true;
            this.btnGo.Click += new System.EventHandler(this.btnGo_Click);
            // 
            // btnTest
            // 
            this.btnTest.Location = new System.Drawing.Point(35, 371);
            this.btnTest.Name = "btnTest";
            this.btnTest.Size = new System.Drawing.Size(75, 23);
            this.btnTest.TabIndex = 12;
            this.btnTest.Text = "Test";
            this.btnTest.UseVisualStyleBackColor = true;
            this.btnTest.Click += new System.EventHandler(this.btnTest_Click);
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
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelHome;
        private System.Windows.Forms.Panel panelSetting;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.TextBox tbPass;
        private System.Windows.Forms.TextBox tbUserName;
        private System.Windows.Forms.Button btnLoadLinkOnTap;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Chọn;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btnAuto;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Button btnGo;
        private System.Windows.Forms.TextBox tbUrl;
        private System.Windows.Forms.Button btnTest;
    }
}

