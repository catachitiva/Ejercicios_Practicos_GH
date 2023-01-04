using System;
using System.Collections;
using System.Collections.Generic;
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
            if(respuestas == 1)
            {
                Console.WriteLine("Ingresa primer numero:");
                int num1 = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Ingresa segundo numero:");
                int num2 = Convert.ToInt32(Console.ReadLine());


                int num3 = num1 + num2;
                Console.WriteLine("Suma: " +  num3);

                num3 = num1 - num2;
                Console.WriteLine("Resta: " + num3);
                
                num3 = num1 * num2;
                Console.WriteLine("Multiplicacion: " + num3);

                num3 = num1 / num2;
                Console.WriteLine("Division: " + num3);

                num3 = num1 % num2;
                Console.WriteLine("Resto " + num3);

            }
            if(respuestas == 2)
              {
                Console.WriteLine("Ingresa primera fecha: AAAA/MM/DD");
                string fecha1 = (Console.ReadLine());
                Console.WriteLine("Ingresa segundo numero: AAAA/MM/DD");
                string fecha2 = (Console.ReadLine());
               

                char[] delimitador = {'/'};
                String[] fechapartida1 = fecha1.Split(delimitador);
                String[] fechapartida2 = fecha2.Split(delimitador);

               

                if (Convert.ToInt32(fechapartida1[0]) > Convert.ToInt32(fechapartida2[0]))
                {
                  int difanos = Convert.ToInt32(fechapartida1[0]) - Convert.ToInt32(fechapartida2[0]);

                
                  Console.WriteLine( fecha1 + " es la fecha mayor ingresada y la deferencia es de " + difanos + " años");
                    
                    
                } else
                 {
                    int difanos = Convert.ToInt32(fechapartida2[0]) - Convert.ToInt32(fechapartida1[0]);
                    Console.WriteLine(fecha2 + " es la fecha mayor ingresada y la deferencia es de " + difanos + " años");
                 }

                int en_dias1;
                int en_dias2;
                

                if (fechapartida1[1] == "01")
                {
                   en_dias1 = 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "02")
                {
                   en_dias1 = 31 + 28 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "03")
                {
                   en_dias1 = 31 + 28 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "04")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "05")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "06")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "07")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "08")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "09")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "10")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "11")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + Convert.ToInt32(fechapartida1[2]);
                }

                else if (fechapartida1[1] == "12")
                {
                   en_dias1 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + Convert.ToInt32(fechapartida1[2]);
                }

                else 
                {
                Console.WriteLine("Ingresaste un mes incorrecto.");
                }



                if (fechapartida2[1] == "01")
                {
                    en_dias2 = 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "02")
                {
                    en_dias2 = 31 + 28 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "03")
                {
                    en_dias2 = 31 + 28 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "04")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "05")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "06")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "07")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "08")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "09")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "10")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "11")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + Convert.ToInt32(fechapartida2[2]);
                }

                else if (fechapartida2[1] == "12")
                {
                    en_dias2 = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + Convert.ToInt32(fechapartida2[2]);
                }

                else
                {
                    Console.WriteLine("Ingresaste un mes incorrecto.");
                }





                int f_dias = en_dias1 - en_dias2;

                Console.WriteLine("y de " + f_dias + " dias");

   

            if(respuestas == 3)
                {

                }
            





            }




           
        }
    }
}
