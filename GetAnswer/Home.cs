using AngleSharp.Html.Dom;
using CefSharp;
using CefSharp.WinForms;
using HtmlAgilityPack;
using mshtml;
using System;
using System.Collections.Generic;
using Fizzler.Systems.HtmlAgilityPack;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using GetAnswer.Model;
using GetAnswer.DAO;
using System.Threading;

namespace GetAnswer
{
    public partial class Home : Form
    {
        Boolean isStop = true;
        static List<UrlDTO> listURL = new List<UrlDTO>(); 
        HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
        public bool isGo = false;
        public bool isStart = true;
        public ChromiumWebBrowser browser;
        List<QuestionDTO> lstQuestion = new List<QuestionDTO>();
        private int stepAuto = -1;

        private BindingSource bds = new BindingSource();
        public void InitBrowser()
        {
            Cef.Initialize(new CefSettings());
            browser = new ChromiumWebBrowser("https://tnu.aum.edu.vn");
            this.panelHome.Controls.Add(browser);
            browser.Dock = DockStyle.Fill;
            


        }
        public Home()
        {
            InitializeComponent();
            try
            {
                InitBrowser();
                browser.FrameLoadEnd += WebBrowserFrameLoadEnded;
                this.browser.AddressChanged += Browser_AddressChanged;
                browser.LoadingStateChanged += OnLoadingStateChanged;
                bds.DataSource = new List<UrlDTO>();
                dtgv.DataSource = QuestionDAO.Instance.getQuestion();
                backgroundWorker1.RunWorkerAsync();
            } catch
            {
                MessageBox.Show("bạn chưa cài kết nối tới dữ liệu câu hỏi");
            }
           

        }

        private void WebBrowserFrameLoadEnded(object sender, FrameLoadEndEventArgs e)
        {
           
            if (isGo)
            {
                var script = "function getJson() {\r\n" +
                    "    var data = [];\r\n" +
                    "    var resultRaw = document.querySelectorAll('div[id^=\"question\"]');\r\n" +
                    "    if(resultRaw) {\r\n" +
                    "        for(var i = 0; i< resultRaw.length; i++) {\r\n" +
                    "            var question = resultRaw[i].getElementsByClassName(\"qtext\")[0].innerText;\r\n" +
                    "            var andswer = resultRaw[i].getElementsByClassName(\"rightanswer\")[0].innerText;\r\n" +
                    "            var json = {\"Question\": question, \"Andswer\": andswer};\r\n" +
                    "            data.push(json);\r\n" +
                    "            \r\n" +
                    "        } \r\n" +
                    "    }\r\n" +
                    "\r\n" +
                    "    return JSON.stringify(data);\r\n" +
                    "}\r\n" +
                    "\r\n" +
                    "document.getElementsByTagName('html')[0].innerHTML =  getJson();";
                //browser.ExecuteScriptAsync(script);

                 
                if (e.Frame.IsMain)
                {

                    //browser.ViewSource();
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                       
                        var html = taskHtml.Result;
                       // doc.LoadHtml(html);
                        var result = doc.DocumentNode.QuerySelectorAll("div[id^='question']");
                        //File.WriteAllText(@"json.txt",html.Replace("<!DOCTYPE html><html dir=\"ltr\" lang=\"vi\" xml:lang=\"vi\" class=\"yui3-js-enabled\"><head></head><body>[","[").Replace("]</body></html>","]").Replace("Câu trả lời đúng là:",""));
                        isGo = false;
                    });
                }





            }
        }

        private void Home_Resize(object sender, EventArgs e)
        {
            panelHome.Size = new Size((this.Size.Width - panelSetting.Size.Width - 20), this.Size.Height - 100);
            panelHome.Location = new Point(0, 0);
            panelSetting.Location = new Point(this.Size.Width - panelSetting.Size.Width - 20, 0);
            panelSetting.Size = new Size(panelSetting.Size.Width, this.Size.Height);
            dtgv.Size = new Size(panelSetting.Size.Width, dtgv.Size.Height);
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            //var script = "document.querySelectorAll('div[id^="question - "]');"
            var script = string.Format("document.getElementById('username').value = '{0}'; document.getElementById('password').value = '{1}'; document.getElementById('rememberusername').checked = true;  document.getElementById('loginbtn').click();", tbUserName.Text, tbPass.Text);
            browser.ExecuteScriptAsync(script);
        }

        public void AppendTextBox(string value)
        {
            if (InvokeRequired)
            {
                this.Invoke(new Action<string>(AppendTextBox), new object[] { value });
                return;
            }
            tbUrl.Text = value;
        }
        private void Browser_AddressChanged(object sender, AddressChangedEventArgs e)
        {

            AppendTextBox(e.Address);

            
        }

        private async void btnLoadLinkOnTap_Click(object sender, EventArgs e)
        {
            var html = "0";
            var getCout = "function getLinkCourse() {\r\n" +
                    "    var link = \"\";\r\n" +
                    "    if (document.querySelectorAll('a[href*=\"quiz\"]').length < 1) \r\n" +
                    "        { \r\n" +
                    "            return \"\"; }\r\n" +
                    "     else { \r\n" +
                    "        document.querySelectorAll('a[href*=\"quiz\"]').forEach(element => {\r\n" +
                    "            link+=element;\r\n" +
                    "         });\r\n" +
                    "     }\r\n" +
                    "     return link;\r\n" +
                    "} ";


              browser.EvaluateScriptAsync("getLinkCourse").ContinueWith(x =>
              {
                  var response = x.Result;
                  if (response.Success && response.Result != null)
                  {
                      dynamic result = response.Result;
                      return ((int)result).ToString();
                  }
                  else
                  {
                      return string.Empty;
                  }
              });

        }

        private void btnAuto_Click(object sender, EventArgs e)
        {

        }

        private void btnGo_Click(object sender, EventArgs e)
        {
            isGo = true;
            browser.Load(tbUrl.Text);
            
        }

        private void readerHtml()
        {
            using (XmlReader reader = XmlReader.Create(@"D:\html.html"))
            {
                // Loop over all xml tags 
                while (reader.Read())
                {
                   
                }
            }
        }

        private void btnTest_Click(object sender, EventArgs e)
        {
           
        }


        private void OnLoadingStateChanged(object sender, LoadingStateChangedEventArgs args)
        {
           
            if (!args.IsLoading)
            {
               

                if (tbUrl.Text.Contains("quiz/review"))
                {
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                        var html = taskHtml.Result;
                        Common.saveAnswer(html);

                    });
                }

                if (tbUrl.Text.Contains("quiz/attempt.php?attempt"))
                {
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                        var html = taskHtml.Result;
                        String query = Common.getAnswer(html);
                        browser.ExecuteScriptAsync(query);
                    });
                }

                if(tbUrl.Text.Contains("quiz/view.php"))
                {
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                        var html = taskHtml.Result;
                       
                        HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
                        doc.LoadHtml(html);
                    var btnSubmitStartCourse = doc.GetElementbyId("id_submitbutton");
                        if (btnSubmitStartCourse != null)
                        {
                            setStartButton(btnStart, true);
                           
                        }
                    });
                   
                   

                }



            }
               
        }

        private void setStartButton(Button r, bool isEnable)
        {
          
            try
            {
                r.Invoke((Action)delegate
                {
                    r.Enabled = isEnable;
                });
            }
            catch
            {

            }

        }
        private void cburlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
          
            while (true)
            {
                switch (stepAuto)
                {
                    case -1: break;
                    case 0: browser.ExecuteScriptAsync("if(document.getElementById('id_submitbutton')) { document.getElementById('id_submitbutton').click();}"); stepAuto++; break;
                    case 1: browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click(); };"); stepAuto++; break;
                    case 2: browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click(); };"); stepAuto++; break;
                    case 3: browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};"); stepAuto++; break;
                    case 4: browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};"); stepAuto++; break;
                    case 5: browser.ExecuteScriptAsync(" if(document.querySelectorAll('button[id^=\"single_button\"]').length > 0) { document.querySelectorAll('button[id^=\"single_button\"]')[1].click();};"); stepAuto++; break;
                    case 6: browser.ExecuteScriptAsync(" if(document.getElementsByClassName('mod_quiz-next-nav').length > 0) { document.getElementsByClassName('mod_quiz-next-nav')[0].click();};"); stepAuto++; break;
                    case 7: browser.ExecuteScriptAsync(" if(document.querySelectorAll('input[id^=\"id_yuiconfirmyes\"]').length > 0) { document.querySelectorAll('input[id^=\"id_yuiconfirmyes\"]')[0].click();};"); stepAuto = 0; break;

                }
                Thread.Sleep(2000);
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            if (isStop)
            {
                isStop = false;
                stepAuto = 0;
                
            }
            else
            {
                isStop = true;
                stepAuto = -1;
            }

            btnStart.Text = isStop ? "Chạy" : "Dừng";

            /*for(int i = 0; i< nbCount.Value; i++)
            {
                browser.ExecuteScriptAsync("if(document.getElementById('id_submitbutton')) { document.getElementById('id_submitbutton').click();}");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByName('next').length > 0) { document.getElementsByName('next')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.querySelectorAll('button[id^=\"single_button\"]').length > 0) { document.querySelectorAll('button[id^=\"single_button\"]')[1].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.querySelectorAll('input[id^=\"id_yuiconfirmyes\"]').length > 0) { document.querySelectorAll('input[id^=\"id_yuiconfirmyes\"]')[0].click();};");
                Thread.Sleep(2000);
                browser.ExecuteScriptAsync(" if(document.getElementsByClassName('mod_quiz-next-nav').length > 0) { document.getElementsByClassName('mod_quiz-next-nav')[0].click();};");
                Thread.Sleep(2000);
            }*/



        }

        private void btnQuestion_Click(object sender, EventArgs e)
        {
            DanhSach danhSach = new DanhSach();
            danhSach.ShowDialog();
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {

        }
    }


    
}
