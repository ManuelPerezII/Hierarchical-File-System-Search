using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;

namespace ManuelPerezExam
{
    class Program
    {
        //Create a function for removecharacter from string
        static void Main(string[] args)
        {
            char toRemove = '!';
            Console.WriteLine("RemoveCharacterFromString: " + removeCharacterFromString("Hello World!!!",toRemove));
            Console.WriteLine("SumIntegersInFile: " + sumIntegersInFile(Environment.CurrentDirectory + "\\integers.txt"));
            Console.ReadLine();
        }

        public static string removeCharacterFromString(string input, char toRemove)
        {            
            return Regex.Replace(input,string.Concat( toRemove), string.Empty);
        }

        public static int sumIntegersInFile(string filePath)
        {
            return  File.ReadAllLines(filePath).Sum(x => int.Parse(x));
        }
    }
}
