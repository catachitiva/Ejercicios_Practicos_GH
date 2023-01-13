using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CheckPoint_2
{
    internal class Program
    {
        static void Main(string[] args)
        {


            Console.WriteLine("ESCOGE EL EJERCICIO QUE QUIERES PROBAR");
            int numEj = int.Parse(Console.ReadLine());

            switch (numEj)
            {
                case 1:
                    //            Ejercicio 1 Tarea:
                    //            Pedir al usuario que ingrese su nombre y su edad, guardando ambos valores en variables.
                    //            Mostrar un mensaje de bienvenida que contenga ambos valores.

                    Console.WriteLine("¡¡ Bienvenido !! \nIngrasa tu nombre: ");
                    string nombre = Console.ReadLine();
                    Console.WriteLine("\nIngresa tu edad: ");
                    int edad = int.Parse(Console.ReadLine());

                    Console.WriteLine("\nHola " + nombre + ", tu edad es " + edad + " años.");
                    break;






                case 2:
                    
                    //puedes meter un refactor como en el link https://stackoverflow.com/questions/3213/convert-integers-to-written-numbers
                    // asi juegas con la posicion y no tienes que hacer if/case
            
                     //            Ejercicio 2 Tarea:
                     //            Pedir el ingreso de un número del 0 al 9 e imprimir el nombre en letras del mismo
                     //            Ejemplo: Ingresamos 2 y se nos responde con el mensaje DOS

                    Console.WriteLine("\nIngresa un numero entre el 0 y el 9 ");
                    int num = int.Parse(Console.ReadLine());

                    if ((num >= 0) && (num <= 9))
                    {
                        switch (num)
                        {
                            case 0:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe CERO. ", num);
                                break;

                            case 1:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe UNO. ", num);
                                break;

                            case 2:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe DOS. ", num);
                                break;

                            case 3:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe TRES. ", num);
                                break;

                            case 4:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe CUATRO. ", num);
                                break;

                            case 5:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe CINCO. ", num);
                                break;

                            case 6:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe SEIS. ", num);
                                break;

                            case 7:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe SIETE. ", num);
                                break;

                            case 8:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe OCHO. ", num);
                                break;

                            case 9:
                                Console.WriteLine("\nIngresaste el número {0} y se escribe NUEVE. ", num);
                                break;

                        }
                    }
                    else
                    {
                        Console.WriteLine("\nIngresaste un numero invalido, reinicia el programa.");
                    }

                    break;







                case 3:



               //            Ejercicio 3 Tarea:
               //Pedir el ingreso de dos números por consola e imprimir el de menor valor primero y el de
               //mayor valor despues, separados por una coma


                 Console.WriteLine("Ingrese el primer número: ");
                 int num1 = int.Parse(Console.ReadLine());
                 Console.WriteLine("\nIngrese el segundo número: ");
                 int num2 = int.Parse(Console.ReadLine());

                 if(num1 > num2)
                 {
                     Console.WriteLine("\nOrdenado de menor a mayor: " + num2 + ", " + num1);
                 }
                 else
                 {
                     Console.WriteLine("\nOrdenado de menor a mayor: " + num1 + ", " + num2);
                 }

                 break;

                case 4:



                    //    Ejercicio 4  Tarea:
                    // Escribir un programa que pida el ingreso de un numero entero y que indiquere si se trata
                    // de un numero par o un numero impar.
                    // Utilizar el operador de módulo(%)

                    Console.WriteLine("\nIngresa un numero entero: ");
                    int num3 = int.Parse(Console.ReadLine());

                    if (num3 > 0)
                    {
                        if (num3 % 2 == 0)
                        {
                            Console.WriteLine("\nEl numero ingresaso {0} es par.", num3);
                        }
                        else
                        {
                            Console.WriteLine("\nEl numero ingresado {0} es impar.", num3);
                        }
                    }
                    else
                    {
                        Console.WriteLine("\nNo ingresaste un número entero.");// los enteros pueden ser menores que cero.
                    }

                break;







                case 5:


                    break;

             






            }
            


            




           





            


        }
    }
}
