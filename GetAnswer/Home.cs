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

namespace GetAnswer
{
    public partial class Home : Form
    {
        HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
        public bool isGo = false;
        public bool isStart = true;
        public ChromiumWebBrowser browser;
        List<QuestionDTO> lstQuestion = new List<QuestionDTO>();
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
            InitBrowser();
            browser.FrameLoadEnd += WebBrowserFrameLoadEnded;
            this.browser.AddressChanged += Browser_AddressChanged;
            browser.LoadingStateChanged += OnLoadingStateChanged;
            
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
                if (!tbUrl.Text.Contains("login/index.php") && cburlCourse.Items.Count < 1)
                {
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                        
                        var html = taskHtml.Result;
                        List<UrlDTO> listURL = Common.LoadUrlCourse(html);
                        cburlCourse.DataSource = listURL;
                        //cburlCourse.ValueMember = "url";
                        //cburlCourse.DisplayMember = "name";
                    });
                }
               

                if (tbUrl.Text.Contains("quiz/review"))
                {
                    browser.GetSourceAsync().ContinueWith(taskHtml =>
                    {
                        var html = taskHtml.Result;
                        doc.LoadHtml(html);
                        IEnumerable<HtmlNode> result = doc.DocumentNode.QuerySelectorAll("div[id^='question']");



                        lstQuestion.Clear();

                        for (int i = 0; i < result.ToArray().Length; i++)
                        {
                            //get name course 
                            var course = doc.GetElementbyId("page-navbar");
                            HtmlAgilityPack.HtmlDocument docCourse = new HtmlAgilityPack.HtmlDocument();
                            docCourse.LoadHtml(course.InnerHtml);
                            var courseName = docCourse.DocumentNode.SelectNodes("//a[@itemprop='url']")[1].InnerText;

                            HtmlAgilityPack.HtmlDocument doc1 = new HtmlAgilityPack.HtmlDocument();
                            doc1.LoadHtml(result.ToList()[i].InnerHtml);
                            var question = doc1.DocumentNode.SelectNodes("//div[@class='qtext']")[0].InnerHtml.Trim();
                            var answer = doc1.DocumentNode.SelectNodes("//div[@class='rightanswer']")[0].InnerHtml.Replace("Câu trả lời đúng là:", "").Trim();

                            QuestionDAO.Instance.saveQuestion(new QuestionDTO(question, answer, courseName));
                        }

                    });
                }
                    
                }
               
        }
    }


    
}
