using GetAnswer.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer.DAO
{
    class QuestionDAO
    {
        private QuestionDAO() { }
        private static QuestionDAO instance;
        public static QuestionDAO Instance
        {
            get { if (instance == null) instance = new QuestionDAO(); return QuestionDAO.instance; }
            private set { QuestionDAO.instance = value; }
        }

        public void saveQuestion(List<QuestionDTO> lst)
        {
            string query = "";
            foreach(QuestionDTO item in lst)
            {
                if(!isExistQuestion(item))
                {
                    query = String.Format("INSERT into question(question,answer) VALUES(N'{0}', N'{1}')", item.Question, item.Andswer);
                    SQLConnect.Instance.executeNonQuery(query);
                }
            }
        }

        public void saveQuestion(QuestionDTO item)
        {
            string query = "";
            if (!isExistQuestion(item))
            {
                query = String.Format("INSERT into question(question,answer, name) VALUES(N'{0}', N'{1}', N'{2}')", item.Question, item.Andswer, item.Name);
                SQLConnect.Instance.executeNonQuery(query);
            }
        }

        public bool isExistQuestion(QuestionDTO question)
        {
            DataTable data = SQLConnect.Instance.executeQuery(String.Format("select * from question where question = N'{0}' and answer = N'{1}'", question.Question, question.Andswer));
            if (data.Rows.Count > 0)
            {
                return true;
            }
                
            return false;
        }

        public List<QuestionDTO> getQuestion()
        {
            string query = "select * from question";

            DataTable data = SQLConnect.Instance.executeQuery(query);

            List<QuestionDTO> list = new List<QuestionDTO>();
            foreach (DataRow item in data.Rows)
            {
                list.Add(new QuestionDTO(item));
            }

            return list;
        }

        public List<QuestionDTO> findQuestion(string question, string name)
        {
            string query = String.Format("select * from question where  question = N'{0}' and name= N'{1}'", question, name);

            DataTable data = SQLConnect.Instance.executeQuery(query);

            List<QuestionDTO> list = new List<QuestionDTO>();
            foreach (DataRow item in data.Rows)
            {
                list.Add(new QuestionDTO(item));
            }

            return list;
        }
    }
}
