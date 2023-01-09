using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*La escuela Tego Rean quiere crear una consola que
            1.salude OK
            2. de 3 opciones para elegir
            3.si elige la 1-- > se piden 2 numeros y se devuelve la + -*y /
              si elige la 2-- > se van a pedir 2 fechas y se devuelve cual es mayor y la diferencia de dias
              si elige la 3-- > recibe una palabra y una vocal, devuelve cuantas veces esta la vocal en la palabra */

            Console.WriteLine("Hola, Bienvenido!");
            Console.WriteLine("Ingrese la opcion deseada: \n" +
                              " 1. operaciones matematicas entre dos numeros.\n" +
                              " 2. Analizando fecha mayor.\n" +
                              " 3. cuantas vocales hay en una palabra \n");

            int respuestas = Convert.ToInt32(Console.ReadLine());
            if (respuestas == 1)
            {
                Console.WriteLine("Ingresa primer numero:");
                int num1 = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Ingresa segundo numero:");
                int num2 = Convert.ToInt32(Console.ReadLine());


                int num3 = num1 + num2;
                Console.WriteLine("Suma: " + num3);

                num3 = num1 - num2;
                Console.WriteLine("Resta: " + num3);

                num3 = num1 * num2;
                Console.WriteLine("Multiplicacion: " + num3);

                num3 = num1 / num2;
                Console.WriteLine("Division: " + num3);

                num3 = num1 % num2;
                Console.WriteLine("Resto " + num3);

            }
            if (respuestas == 2)
            {
                Console.WriteLine("Ingresa primera fecha: AAAA,MM,DD");
                string fe_1 = Console.ReadLine();
                //Console.WriteLine(fe_1);


                Console.WriteLine("Ingresa segundo numero: AAAA,MM,DD");
                string fe_2 = Console.ReadLine();

                DateTime fecha1 = Convert.ToDateTime(fe_1);
                DateTime fecha2 = Convert.ToDateTime(fe_2);




                if (fecha1 > fecha2)
                {
                    TimeSpan def = fecha1 - fecha2;
                    Console.WriteLine("La fecha más reciente es " + fecha1 + " y la diferencia es de " + def.Days + " dias.");
                }
                else if (fecha1 < fecha2)
                {
                    TimeSpan def = fecha2 - fecha1;
                    Console.WriteLine("La fecha más reciente es " + fecha2 + " y la diferencia es de " + def.Days + " dias.");
                }
                else
                {
                    Console.WriteLine("Las Fechas son iguales.");
                }


            }
            if (respuestas == 3)
            {
                Console.WriteLine("Ingrese una palabra.");
                string palabra = Console.ReadLine();

                Console.WriteLine("Ingrese vocal a contar.");
                string vocal = Console.ReadLine();


                int contadorVocal = 0;
                char vocal_Mayus = char.Parse(vocal.ToUpper());


                foreach (char x in palabra.ToUpper())
                {
                    if(x.Equals(vocal_Mayus))
                    {
                        contadorVocal++;

                    }

                }

                Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, contadorVocal, vocal);
            } 

                /* mi forma sin correccion  

                int a = 0;
                int e = 0;
                int i = 0;
                int o = 0;
                int u = 0;

                foreach (char x in palabra)
                {
                    if (x == 'a' || x == 'A')
                    {
                        a++;
                    }
                    else if (x == 'e' || x == 'E')
                    {
                        e++;
                    }
                    else if (x == 'i' || x == 'I')
                    {
                        i++;
                    }
                    else if (x == 'o' || x == 'O')
                    {
                        o++;
                    }
                    else if (x == 'u' || x == 'U')
                    {
                        u++;
                    }

                }

                switch (vocal)
                {
                    case "a" :
                        Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, a, vocal);
                        break;

                    case "e":
                        Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, e, vocal);
                        break;
                    case "i":
                        Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, i, vocal);
                        break;
                    case "o":
                        Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, o, vocal);
                        break;
                    case "u":
                        Console.WriteLine("En la palabra {0} se encontraron {1} {2}.", palabra, u, vocal);
                        break;

                    default:
                        Console.WriteLine("Usted no ingreso una vocal valida");
                        break;

                }
                */






             




            
        }
    }
}
