using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer.Model
{
    class QuestionDTO
    {
        private string question;
        private string andswer;
        private string name;
        

        public string Question { get => question.Replace("\n"," ").Trim(); set => question = value.Replace("\n", " ").Trim(); }
        public string Andswer { get => andswer.Replace("\n", " ").Trim(); set => andswer = value.Replace("\n", " ").Trim(); }
        public string Name { get => name; set => name = value; }

        public QuestionDTO()
        {

        }

        public QuestionDTO(DataRow row)
        {
            this.Question = row["question"].ToString();
            this.Andswer = row["answer"].ToString();
            this.Name = row["name"].ToString();

        }

        public QuestionDTO(string question, string andswer)
        {
            this.question = question;
            this.andswer = andswer;
        }

        public QuestionDTO(string question, string andswer, string name)
        {
            this.question = question;
            this.andswer = andswer;
            this.name = name;
        }
    }
}
