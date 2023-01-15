using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Console_ClasesIT
{
    internal class Program
    {
        static void Main(string[] args)
        {


            // Ejercicios de Desafio modulo 1, EJ 1 

            /*Declarar dos variables n1 = 5 y n2 = 10.
             Utilizando concatenación entre las variables y los literales, mostrar en pantalla la siguiente expresión:
              n1 es igual a 5, n2 es igual a 10 y n1 más n2 es
             igual a 15.*/

            //int n1 = 5;
            //int n2 = 10;
            //int n3 = n1 + n2;
            //Console.WriteLine("n1 es igual a " + n1 + ", n2 es igual a " + n2 + " y n1 más n2 es igual a " + n3);






            //  EJ 2 
            /*Haciendo uso de la constante IVA = 21, calcular el precio con IVA de los siguientes productos e informar:
             a.Remera: 59.90$
             b.Pantalón: 99.90$
             c.Campera: 149.90$
            */

            //double remera = 59.99;
            //double pantalon = 99.90;
            //double campera = 149.90;
            //const double iva = 1.21;

            //double remera_iva = remera * iva;
            //double pantalon_iva = pantalon * iva;
            //double campera_iva = campera * iva;

            //Console.WriteLine("El precio del remera con iva es de $ {0}", remera_iva);
            //Console.WriteLine("El precio del pantalon con iva es de $ {0}", pantalon_iva);
            //Console.WriteLine("El precio del campera con iva es de $ {0}", campera_iva);



            ////    Modulo 2  


            // string Nombre = "";
            // nt numeroOpcionCase = 0;
            // Console.WriteLine("Ingrese un nombre de no más de 10 caracteres: ");
            // Nombre = Console.ReadLine();


            //    IF
            ////  if (Nombre.Length < 11)
            //// {
            ////  Console.WriteLine("Nombre ingresado correctamente {0}", Nombre);
            //// }

            //// En el ejemplo, Nombre puede tomar tres valores distintos: "jose", "pablo", "maria"

            //    switch (Nombre)
            //{
            //    case "jose": Console.WriteLine("Nombre ingresado correctamente jose"); break;
            //    case "pablo": Console.WriteLine("Nombre ingresado correctamente pablo"); break;
            //    case "maria": Console.WriteLine("Nombre ingresado correctamente maria"); break;
            //    default:
            //        Console.WriteLine("Nombre distinto a los tres anteriores"); break;
            //}
            //Console.ReadKey(); deja la consola 

            //**********************************************************************************************************************
            //**********************************************************************************************************************

            //   Ejercicios laboratorio 

            //string nombre = "";
            //int numeroOpcionCase = 0;
            //Console.WriteLine("Ingrese opcion numero entero: ");
            //numeroOpcionCase = Convert.ToInt32(Console.ReadLine());


            //switch (numeroOpcionCase)
            //{
            //    case 1: Console.WriteLine("Nombre ingresado correctamente jose"); break;
            //    case 2: Console.WriteLine("Nombre ingresado correctamente pablo"); break;
            //    case 3: Console.WriteLine("Nombre ingresado correctamente maria"); break;
            //    default:
            //        Console.WriteLine("Nombre distinto a los tres anteriores"); break;
            //}
            //Console.ReadKey();



            //int notaAlumno = Convert.ToInt32(Console.ReadLine());

            //if ((notaAlumno >= 4) & (notaAlumno < 7))
            //{
            //Console.WriteLine("El alumno ha aprobado.");
            //}
            //else if(notaAlumno >= 7 & notaAlumno <= 10)
            //{
            // Console.WriteLine("El alumno ha promocionado.");
            //}
            //else
            //{
            // Console.WriteLine("El alumno debe recuperar.");
            //}



            //CLASE 3
            

            int ej_n = int.Parse(Console.ReadLine());

            switch (ej_n)
            {

                case 1:
                    //Imprimir los números del 1 al 10 uno abajo del otro
                    for (int i = 1; i <= 10; i++)
                    {
                        Console.WriteLine(i);
                    }
                    break;






                case 2:  // Imprimir los números del 1 al 10 salteando de a 2 uno abajo del otro.

                         for (int i = 0; i <=10 ; i++)
                         {
                          Console.WriteLine(i++);
                   
                         }

                    break;





                case 3: //Imprimir los números del 10 al 1 uno abajo del otro.

                         for (int i = 10; i >= 1 ; i--)
                         {
                           Console.WriteLine(i);
                         }

                    break;





                case 4: // Imprimir la suma de los números impares del 1 al 10
                       
                       int totaln = 0;

                       for (int i = 0; i < 10; i++)
                       {
                           if(i%2 != 0)
                           {
                            Console.WriteLine("los numeros impares son:" + i);
                             totaln += i;
                              
                           }
                        
                       }Console.WriteLine("su suma es " + totaln );
                    break;






                 case 5:    //            Mostrar la resta de la multiplicación de los números del 1 al 5 con la suma de los números del 1 al 5.
                            //            Por ejemplo, sería (1 * 2 * 3 * 4 * 5) -(1 + 2 + 3 + 4 + 5).
                       int s = 0;
                       int m = 1;

                       for (int i = 1; i <= 5 ; i++)
                       {
                        s += i;
                        m *= i;
                       } Console.WriteLine("El resultado es: " + m + "-" + s + "= " + (m - s));

                    break;




                 case 6:
                    //                    Imprimir la siguiente figura:
                    //@
                    //@
                    //@
                    //@

                    for (int i = 0; i < 4 ; i++)
                    {
                        Console.WriteLine("@");
                    }


                    break;





                case 7:
                    //                    Imprimir la siguiente figura:
                    //@
                    //@@
                    //@
                    //@@
                    //@


                    for (int i = 0; i < 5; i++)
                    {
                        if (i % 2 == 0)
                            Console.WriteLine("@");
                        else
                            Console.WriteLine("@@");
                    }

                    

                    break;


                case 8:
                    //                    Imprimir la siguiente figura:
                    //@
                    //@@
                    //@@@
                    //@@@@
                    //@@@@@
                    string signo = "";
                    for (int i = 0; i < 5; i++)
                    {
                        signo += "@";
                        Console.WriteLine(signo);
                    }
                    break;




                case 9: //Imprimir la siguiente figura:
                        //@@@@@
                        //@@@@
                        //@@@
                        //@@
                        //@

                    string signo1 = "@@@@@";
                    string final = "";
                 

                    for (int i = 5; i >= 1; i--)
                    {
                        final = signo1.Substring(0,i) ;
                        Console.WriteLine(final);
                    }



                    break;


                 case 10: //Imprimir la siguiente (figura mi forma) :
                    //@
                    //@@
                    //@@@
                    //@@@@
                    //@@@
                    //@@
                    //@

                    string sig = " ";
                    string fin = "";
                    for (int i = 0; i < 4; i++)
                    {
                        sig += "@";
                        Console.WriteLine(sig);

                        if (i == 3)
                        {
                            for (int a = 4; a >= 1; a--)
                            {
                                fin = sig.Substring(0, a);
                                Console.WriteLine(fin);
                            }
                        }
                    }



                    break;









            }













        }
    }
}
