using GetAnswer.DAO;
using GetAnswer.Model;
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
        public void LoadJson(string path)
        {
            using (StreamReader r = new StreamReader(path))
            {
                string json = r.ReadToEnd();
                List<QuestionDTO> items = JsonConvert.DeserializeObject<List<QuestionDTO>>(json);
                QuestionDAO.Instance.saveQuestion(items);
            }
        }
    }
}
