using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GetAnswer
{
    class URLDTO
    {
        public URLDTO(string url, string name)
        {
            this.url = url;
            this.name = name;
        }
        private string url;
        private string name;

        public string Url { get => url; set => url = value; }
        public string Name { get => name; set => name = value; }
    }
}
