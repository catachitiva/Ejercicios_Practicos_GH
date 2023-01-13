using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto_Integrador_EduIT
{
    internal class Program
    {
        static void Main(string[] args)
        {

            // ETAPA 2





            Console.WriteLine("Bienvenido! \nIngresa tu nombre por favor : ");
            string nombre = Console.ReadLine();

            Console.WriteLine("Ingresa tu apellido por favor : ");
            string apellido = Console.ReadLine();

            Console.WriteLine("Ingresa tu edad por favor : ");
            int edad= int.Parse(Console.ReadLine());

            Console.WriteLine("Ingresa tu mail por favor : ");
            string mail = Console.ReadLine();

            Console.WriteLine("\nLos datos ingresados son: \n-NOMBRE: " + nombre + "\n-APELLIDO: " + apellido  + "\n-EDAD: " + edad + "\n-MAIL: " + mail);

            Console.WriteLine("\nLos datos son correctos ?  \n<< S para confirmar / N para cancelar  >> ");
            string resp1 = Console.ReadLine();

            if (resp1.ToUpper().Equals("S"))
            {
                Console.WriteLine("\nIngrese codigo de carrera elegida: ");
                Console.WriteLine("\n1. Programación .NET. \n2. Programación JAVA. \n3. Programación PHP. ");
                int cod_materias = int.Parse(Console.ReadLine());
                string Alumno = nombre + " " + apellido;
                switch (cod_materias)
                {
                    case 1:
                        {
                            Console.WriteLine("<<< CONSTANCIA DE ALUMNO. >>>\n");
                            Console.WriteLine("\nALUMNO: " + Alumno);
                            Console.WriteLine("MAIL: " + mail);
                            Console.WriteLine("Carrera: Programacion .NET");
                        }
                        break;

                    case 2:
                        {
                            Console.WriteLine("<<< CONSTANCIA DE ALUMNO. >>>\n");
                            Console.WriteLine("\nALUMNO: " + Alumno);
                            Console.WriteLine("MAIL: " + mail);
                            Console.WriteLine("Carrera: Programación JAVA.");
                        }
                        break;

                    case 3:
                        {
                            Console.WriteLine("<<< CONSTANCIA DE ALUMNO. >>>\n");
                            Console.WriteLine("\nALUMNO: " + Alumno);
                            Console.WriteLine("MAIL: " + mail);
                            Console.WriteLine("Carrera: Programación PHP.");
                        }
                        break;

                    default:
                        Console.WriteLine("Ingresaste un codigo de materia incorrecto.\nVuelve a iniciar el programa.");
                        break;


                }


            }
            else if (resp1.ToUpper().Equals("N"))
            {
                Console.WriteLine("Ejecute nuevamente la aplicacion para ingresar datos correctamente.");
            }
            else
            {
                Console.WriteLine("Ingresaste una respuesta invalida.");
            }












        }
    }
}
