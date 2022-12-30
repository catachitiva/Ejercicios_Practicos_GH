using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello,Word!");
            
            Console.WriteLine("Ejercicio 1 - Asignación básica");
            Console.WriteLine("");
            Console.WriteLine("A");
            int x = 10;
            int y = 20;
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.WriteLine("B");
            x = x + 5;
            y = y + 10;
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.WriteLine("C");
            x = x - 5;
            y = y - 10;
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.WriteLine("D");
            x = x * 3;
            y = y * 5;
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.WriteLine("E");
            x = x / 2;
            y = y / 4;
            Console.WriteLine(x);
            Console.WriteLine(y);
            Console.WriteLine("Presione una tecla para continuar");
            Console.ReadLine();
            Console.ReadKey();

        }
    }
}
