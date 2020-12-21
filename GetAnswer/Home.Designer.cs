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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panelHome = new System.Windows.Forms.Panel();
            this.panelSetting = new System.Windows.Forms.Panel();
            this.dtgv = new System.Windows.Forms.DataGridView();
            this.btnQuestion = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.nbCount = new System.Windows.Forms.NumericUpDown();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnGo = new System.Windows.Forms.Button();
            this.tbUrl = new System.Windows.Forms.TextBox();
            this.btnLogin = new System.Windows.Forms.Button();
            this.tbPass = new System.Windows.Forms.TextBox();
            this.tbUserName = new System.Windows.Forms.TextBox();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.panelSetting.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nbCount)).BeginInit();
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
            this.panelSetting.Controls.Add(this.dtgv);
            this.panelSetting.Controls.Add(this.btnQuestion);
            this.panelSetting.Controls.Add(this.label1);
            this.panelSetting.Controls.Add(this.nbCount);
            this.panelSetting.Controls.Add(this.btnStart);
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
            // dtgv
            // 
            this.dtgv.AllowUserToAddRows = false;
            this.dtgv.AllowUserToDeleteRows = false;
            this.dtgv.AllowUserToOrderColumns = true;
            this.dtgv.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtgv.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(51)))), ((int)(((byte)(51)))), ((int)(((byte)(51)))));
            this.dtgv.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleVertical;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.Orange;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtgv.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.dtgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgv.EnableHeadersVisualStyles = false;
            this.dtgv.Location = new System.Drawing.Point(3, 213);
            this.dtgv.Name = "dtgv";
            this.dtgv.ReadOnly = true;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(71)))), ((int)(((byte)(71)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.Orange;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtgv.RowHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dtgv.RowTemplate.DefaultCellStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(71)))), ((int)(((byte)(71)))));
            this.dtgv.RowTemplate.DefaultCellStyle.ForeColor = System.Drawing.Color.White;
            this.dtgv.RowTemplate.DefaultCellStyle.SelectionBackColor = System.Drawing.Color.Orange;
            this.dtgv.RowTemplate.DefaultCellStyle.SelectionForeColor = System.Drawing.Color.Black;
            this.dtgv.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dtgv.Size = new System.Drawing.Size(346, 209);
            this.dtgv.TabIndex = 42;
            // 
            // btnQuestion
            // 
            this.btnQuestion.Location = new System.Drawing.Point(262, 184);
            this.btnQuestion.Name = "btnQuestion";
            this.btnQuestion.Size = new System.Drawing.Size(75, 23);
            this.btnQuestion.TabIndex = 15;
            this.btnQuestion.Text = "Xuất file";
            this.btnQuestion.UseVisualStyleBackColor = true;
            this.btnQuestion.Click += new System.EventHandler(this.btnQuestion_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 143);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "time delay";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // nbCount
            // 
            this.nbCount.Location = new System.Drawing.Point(139, 137);
            this.nbCount.Maximum = new decimal(new int[] {
            10000,
            0,
            0,
            0});
            this.nbCount.Minimum = new decimal(new int[] {
            100,
            0,
            0,
            0});
            this.nbCount.Name = "nbCount";
            this.nbCount.Size = new System.Drawing.Size(120, 20);
            this.nbCount.TabIndex = 13;
            this.nbCount.Value = new decimal(new int[] {
            100,
            0,
            0,
            0});
            // 
            // btnStart
            // 
            this.btnStart.Enabled = false;
            this.btnStart.Location = new System.Drawing.Point(274, 134);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(75, 23);
            this.btnStart.TabIndex = 12;
            this.btnStart.Text = "Chạy";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
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
            // backgroundWorker1
            // 
            this.backgroundWorker1.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorker1_DoWork);
            this.backgroundWorker1.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorker1_ProgressChanged);
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
            ((System.ComponentModel.ISupportInitialize)(this.dtgv)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nbCount)).EndInit();
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
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.NumericUpDown nbCount;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnQuestion;
        private System.Windows.Forms.DataGridView dtgv;
    }
}

