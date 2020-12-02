using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer.Model
{
    class QuestionDTO
    {
        private string question;
        private string andswer;

        public string Question { get => question.Replace("\n"," ").Trim(); set => question = value.Replace("\n", " ").Trim(); }
        public string Andswer { get => andswer.Replace("\n", " ").Trim(); set => andswer = value.Replace("\n", " ").Trim(); }

        public QuestionDTO()
        {

        }

        public QuestionDTO(string question, string andswer)
        {
            this.question = question;
            this.andswer = andswer;
        }
    }
}
