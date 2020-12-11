using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer.Model
{
    class UrlDTO
    {
        private string url;
        private string name;

        public UrlDTO(string url, string name)
        {
            this.Url = url;
            this.Name = name;
        }

        public string Url { get => url; set => url = value; }
        public string Name { get => name; set => name = value; }
    }
}
