using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.IO;

namespace Magic8Ball
{
    public class Util
    {
        public static IEnumerable<string> ReadFrom(string filePath)
        {
            string line;
            using (var reader = File.OpenText(filePath))
            {
                while ((line = reader.ReadLine()) != null)
                {
                    yield return line;
                }
            }
        }
    }
}
