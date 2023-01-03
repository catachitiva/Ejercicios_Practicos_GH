SHOW TABLES;

SELECT * FROM productos;

SELECT nombre FROM productos;
SELECT nombre, precio, stock FROM productos;
SELECT id_producto, stock, nombre, precio FROM productos;
SELECT id_producto, stock, nombre, nombre, stock, nombre, precio FROM productos;

SELECT id_producto, nombre, stock, detalles FROM productos;

SELECT
	id_producto,
	nombre,
	stock,
	detalles
FROM
	productos
;

/*
	Operadores comparativos
    <	menor que
    <=	menor o igual que
    >	mayor que
    >=	mayor o igual que
    =	igual a
    !=	distinto a
    <>	distinto a
*/
SELECT * FROM productos WHERE precio < 19800;
SELECT * FROM productos WHERE precio <= 19800;
SELECT * FROM productos WHERE precio > 19800;
SELECT * FROM productos WHERE precio >= 19800;
SELECT * FROM productos WHERE precio = 19800;
SELECT * FROM productos WHERE precio != 19800;
SELECT * FROM productos WHERE precio <> 19800; -- Equivalente a la línea anterior

SELECT * FROM contactos;
SELECT * FROM contactos WHERE id = 4;
SELECT id, nombre, apellido, telefono, email FROM contactos WHERE id = 4;

SELECT xxxxx, id, nombre, apellido, telefono, email FROM contactos WHERE id = 4;
SELECT id, nombre, apellido, telefono, email FROM contactos WHERE xxxxx = 4;

SELECT * FROM contactos WHERE apellido = 'Crespo';
SELECT * FROM contactos WHERE apellido = "Crespo";
SELECT * FROM contactos WHERE nombre = 'apellido';	-- Contactos con nombre "apellido"
SELECT * FROM contactos WHERE nombre = apellido;	-- Contactos cuyo nombre sea igual a su apellido
SELECT * FROM contactos WHERE nombre = Crespo;		-- Error Code: 1054. Unknown column 'Crespo' in 'where clause'

SELECT * FROM contactos WHERE nombre = 'Ana';		-- Contactos con nombre 'Ana'
SELECT * FROM contactos WHERE nombre < 'Ana';
SELECT * FROM contactos WHERE nombre <= 'Ana';

SELECT * FROM contactos;
SELECT * FROM contactos ORDER BY apellido ASC;
SELECT * FROM contactos ORDER BY apellido DESC;
SELECT * FROM contactos ORDER BY apellido;		-- Por defecto, es ASC
SELECT * FROM contactos ORDER BY apellido ASC, nombre ASC;
SELECT * FROM contactos ORDER BY apellido ASC, nombre DESC;
SELECT * FROM contactos ORDER BY apellido DESC, nombre DESC;
SELECT * FROM contactos ORDER BY apellido DESC, nombre ASC;
SELECT * FROM contactos ORDER BY apellido DESC, nombre;
SELECT * FROM contactos ORDER BY apellido, nombre DESC;

 # SELECT * FROM contactos ORDER BY apellido WHERE nombre = 'Ana';		-- El "ORDER BY" debe ir después
SELECT * FROM contactos WHERE nombre = 'Ana' ORDER BY apellido;		-- ok

/*
	Comodines para LIKE:
		%		de 0 a n caracteres
		_		1 caracter
*/

SELECT * FROM contactos WHERE nombre = 'Ana';		-- Nombres que sean "Ana"
SELECT * FROM contactos WHERE nombre = 'Ana%';		-- Nombre que sean "Ana%" (literalmente)
SELECT * FROM contactos WHERE nombre LIKE 'Ana';	-- Nombres que sean "Ana"
SELECT * FROM contactos WHERE nombre LIKE 'Ana%';	-- Nombres que comiencen con "Ana"
SELECT * FROM contactos WHERE nombre LIKE '%Ana';	-- Nombres que terminen con "Ana"
SELECT * FROM contactos WHERE nombre LIKE '%Ana%';	-- Nombres que contengan el texto "Ana"

SELECT * FROM productos;
SELECT * FROM productos WHERE precio >= 20000 ORDER BY precio;
SELECT * FROM productos WHERE precio <= 40000 ORDER BY precio;

/*
	Operadores lógicos
    AND		Y
    OR		O
    XOR		O exlusivo
*/

-- Productos con precio mayor o igual a 20000 y que a la vez sean menor o igual a 40000 (rango de 20000 a 40000 inclusive)
SELECT * FROM productos WHERE precio >= 20000 AND precio <= 40000;
SELECT * FROM productos WHERE precio >= 20000 AND precio <= 40000 ORDER BY precio;

SELECT * FROM productos WHERE precio >= 20000 OR precio <= 40000;	-- Todos los registros

SELECT * FROM contactos;
SELECT * FROM contactos ORDER BY apellido;

-- Todos los contactos con apellido 'Alvarez'
SELECT * FROM contactos WHERE apellido = 'Alvarez';

-- Todos los contactos con apellido que contenga el texto 'Alvarez'
SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%';

-- Todos los Alvarez y los Cortes
SELECT * FROM contactos WHERE apellido = 'Alvarez' OR apellido = 'Cortes';
SELECT * FROM contactos WHERE apellido = 'Alvarez' OR apellido = 'Cortes' ORDER BY apellido, nombre, fecha_nacimiento;

-- Todos los Alvarez y los Cortes (tengan o no otros apellidos)
SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%' OR apellido LIKE '%Cortes%';

-- Todos los "Alvarez Cortes" literalmente
SELECT * FROM contactos WHERE apellido = 'Alvarez Cortes';

-- Todos los "Alvarez Cortes", con esos apellidos en ese orden, con otros apellidos opcionales antes, después o en el medio
SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%Cortes%';

-- Todos los "Cortes Alvarez", con esos apellidos en ese orden, con otros apellidos opcionales antes, después o en el medio
SELECT * FROM contactos WHERE apellido LIKE '%Cortes%Alvarez%';


SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%Cortes%';
SELECT * FROM contactos WHERE apellido LIKE '%Cortes%Alvarez%';

-- Contactos con apellido compuesto Alvarez Cortes en cualquier orden con posibles otros apellidos adicionales en cualquier parte:
SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%Cortes%' OR apellido LIKE '%Cortes%Alvarez%';
SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%' AND apellido LIKE '%Cortes%';


-- Argentinos interesados en Peugeot:
SELECT * FROM contactos WHERE pais = 'Argentina' AND auto_interes = 'Peugeot';

-- Todos los Argentinos sin importar su marca de interés y también todos los interesados en Peugeot sin importar su nacionalidad.
SELECT * FROM contactos WHERE pais = 'Argentina' OR auto_interes = 'Peugeot';
SELECT * FROM contactos WHERE pais = 'Argentina' OR auto_interes = 'Peugeot' ORDER BY pais, auto_interes;

-- Idem a lo anterior, pero excluyendo a aquellos registros en donde se cumplan ambas condiciones (Argentinos interesados en Peugeot)
SELECT * FROM contactos WHERE pais = 'Argentina' XOR auto_interes = 'Peugeot' ORDER BY pais, auto_interes;



SELECT * FROM contactos WHERE apellido LIKE '%Alvarez%Cortes%' AND apellido LIKE '%Cortes%Alvarez%';



SELECT * FROM contactos WHERE apellido = 'Alvarez Cortes' OR apellido = 'Cortes Alvarez';





-- Todos los "Cortes Alvarez" literalmente
SELECT * FROM contactos WHERE apellido = 'Cortes Alvarez';



SELECT * FROM contactos WHERE apellido = 'Alvarez Cortes';	-- Contactos con apellido compuesto "Alvarez Cortes"
SELECT * FROM contactos WHERE apellido = 'Cortes Alvarez';	-- Contactos con apellido compuesto "Cortes Alvarez"
SELECT * FROM contactos WHERE apellido = 'Alvarez' AND apellido = 'Cortes';	-- Resultado vacío, porque ningún contacto es exactamente "Alvarez" y "Cortes" al mismo tiempo



SELECT * FROM productos;

-- Ejercicio 1: Traer los productos con id 4, 5, 32, 36, 80 y 200 (sin utilizar IN)
SELECT
       * 
FROM 
     productos
WHERE 
id_producto = 4
OR id_producto = 5
OR id_producto = 32
OR id_producto = 36
OR id_producto = 80
OR id_producto = 200;

-- USANDO EL IN 
SELECT * FROM productos WHERE  id_producto IN (4,5,32,36,80,200);

-- Ejercicio 2: Búsqueda OPUESTA: Traer los productos excepto los que tienen id 4, 5, 32, 36, 80 y 200 (sin utilizar NOT IN):
SELECT * FROM productos
WHERE id_producto != 4
AND id_producto != 5
AND id_producto != 32
AND id_producto != 36
AND id_producto != 80
AND id_producto != 200; 

-- USANDO NOT IN:
 SELECT * FROM productos WHERE  id_producto NOT IN (4,5,32,36,80,200);
 
-- Ejerciico 3: Obtener id_producto, nombre, precio, stock de productos en el rango de id 34 a 80 inclusive.
SELECT 
id_producto, nombre, precio,stock 
FROM productos
WHERE id_producto >= 34 AND id_producto <= 80;

-- Usando Between:
SELECT * FROM productos WHERE id_producto BETWEEN 34 AND 80; 

-- Ejerciico 4: Búsqueda OPUESTA: Obtener id_producto, nombre, precio, stock de productos que NO estén en el rango de id 34 a 80 inclusive.
SELECT 
id_producto, nombre, precio, stock 
FROM productos
WHERE id_producto < 34 OR id_producto > 80;


-- USANDO NOT BETWEEN:
SELECT * FROM productos WHERE id_producto NOT BETWEEN 34 AND 80; 