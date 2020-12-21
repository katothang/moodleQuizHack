using GetAnswer.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GetAnswer
{
    public partial class DanhSach : Form
    {
        public DanhSach()
        {
            InitializeComponent();
            
        }

        private void DanhSach_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'getAnswerDataSet.question' table. You can move, or remove it, as needed.
            this.questionTableAdapter.Fill(this.getAnswerDataSet.question);

            this.reportViewer1.RefreshReport();
            this.reportViewer1.RefreshReport();
        }
    }
}
