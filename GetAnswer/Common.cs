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
            foreach(var item in links)
            {
                var url = item.ChildNodes[0].Attributes["href"].Value;
                var name = item.ChildNodes[0].Attributes["title"].Value;
                listCourse.Add(new UrlDTO(url, name));
            }

            return listCourse;
        }
    }
}
