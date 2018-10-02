using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Magic8Ball
{
    //A singleton class that delivers Magic 8 Ball answers when asked.
    public class Magic8Ball
    {

        private static Magic8Ball _instance;
        private static string _answersFile;
        private static List<string> _answers;
        private static Random _random;

        protected Magic8Ball(string answersFile)
        {
            _answersFile = answersFile;
        }

        public static Magic8Ball Instance(string answersFile)
        {
            if (_instance == null)
            {
                _instance = new Magic8Ball(answersFile);
                if (System.IO.File.Exists(answersFile))
                {
                    _answers = Util.ReadFrom(answersFile).ToList();
                }
                else
                {
                    throw new ApplicationException($"Could not load configured answers file {answersFile}");
                }

                _random = new Random();
            }

            return _instance;
        }

        public string GetAnswer()
        {
            var rn = _random.Next(1, _answers.Count);
            return _answers[rn];
        }
    }
}
