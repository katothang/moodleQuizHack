using Fizzler.Systems.HtmlAgilityPack;
using GetAnswer.DAO;
using GetAnswer.Model;
using HtmlAgilityPack;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer
{
    class Common
    {
        public static List<UrlDTO> LoadUrlCourse(String html)
        {
            List<UrlDTO> listCourse = new List<UrlDTO>();
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);
            var result = doc.DocumentNode.SelectNodes("//ul[@class='dropdown-menu']")[3].InnerHtml.Trim();
            HtmlAgilityPack.HtmlDocument doc1 = new HtmlAgilityPack.HtmlDocument();
            doc1.LoadHtml(result);

            var links = doc1.DocumentNode.SelectNodes("li");
            foreach (var item in links)
            {
                var url = item.ChildNodes[0].Attributes["href"].Value;
                var name = item.ChildNodes[0].Attributes["title"].Value;
                listCourse.Add(new UrlDTO(url, name));
            }

            return listCourse;
        }

        public static void saveAnswer(string html)
        {
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);
            IEnumerable<HtmlNode> result = doc.DocumentNode.QuerySelectorAll("div[id^='question']");

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
        }

        public static String getAnswer(string html)
        {
            List<int> lstAnswer = new List<int>();
            StringBuilder query = new StringBuilder();
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);
            IEnumerable<HtmlNode> result = doc.DocumentNode.QuerySelectorAll("div[id^='question']");

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
               

                List<QuestionDTO> lstQuestion = QuestionDAO.Instance.findQuestion(question, courseName);
                int answerCheck = -1;

                if(lstQuestion.Count > 0)
                {
                    if (doc1.DocumentNode.SelectNodes("//div[@class='flex-fill ml-1']")[0].InnerHtml.Equals(lstQuestion[0].Andswer))
                    {
                        answerCheck = 0;
                        lstAnswer.Add(0);
                    }
                    else if (doc1.DocumentNode.SelectNodes("//div[@class='flex-fill ml-1']")[1].InnerHtml.Equals(lstQuestion[0].Andswer))
                    {
                        answerCheck = 1;
                        lstAnswer.Add(1);
                    }
                    else if (doc1.DocumentNode.SelectNodes("//div[@class='flex-fill ml-1']")[2].InnerHtml.Equals(lstQuestion[0].Andswer))
                    {
                        answerCheck = 2;
                        lstAnswer.Add(2);
                    }
                    else if (doc1.DocumentNode.SelectNodes("//div[@class='flex-fill ml-1']")[3].InnerHtml.Equals(lstQuestion[0].Andswer))
                    {
                        answerCheck = 3;
                        lstAnswer.Add(3);
                    }
                    else
                    {
                        answerCheck = -1;
                    }
                }
                if(answerCheck >= 0)
                {
                    query.Append(String.Format("document.querySelectorAll(\"div[id ^= 'question'\")[{0}].getElementsByClassName(\"answer\")[0].getElementsByTagName(\"input\")[{1}].checked = true;", i, answerCheck));
                }

               
            }
            return query.ToString();
        }


        public static String getQueryAuto(string html)
        {
            List<int> lstAnswer = new List<int>();
            List<string> query = new List<string>();
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            doc.LoadHtml(html);
            var btnSubmitStartCourse = doc.GetElementbyId("id_submitbutton");
            if(btnSubmitStartCourse != null)
            {
               
            }

            return query.ToString();
        }

    }
}
