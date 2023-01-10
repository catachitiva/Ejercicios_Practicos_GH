SELECT * FROM contactos;

SELECT
	*
FROM
	contactos
WHERE
	   nombre = 'Benedict'
    OR nombre = 'Elton'
    OR nombre = 'Keith'
    OR nombre = 'John'
    OR nombre = 'Michael'
    OR nombre = 'Alana'
ORDER BY
	nombre
;

-- Idem a lo anterior
SELECT
	*
FROM
	contactos
WHERE
	   nombre IN ('Benedict', 'Elton', 'Keith', 'John', 'Michael', 'Alana')
ORDER BY
	nombre
;

-- todos los que NO estén interesados en 'Fiat', 'Ford', 'Audi' y 'Chevrolet'
SELECT
	*
FROM
	contactos
WHERE
	auto_interes <> 'Fiat'
    AND auto_interes <> 'Ford'
    AND auto_interes <> 'Audi'
    AND auto_interes <> 'Chevrolet'
ORDER BY
	auto_interes
;

-- Idem a lo anterior
SELECT
	*
FROM
	contactos
WHERE
	auto_interes NOT IN ('Fiat', 'Ford', 'Audi', 'Chevrolet')
ORDER BY
	auto_interes
;


SELECT
	*
FROM
	productos
WHERE
	precio >= 15000
    AND precio <= 22000
ORDER BY
	precio
;


-- Idem a lo anterior
SELECT
	*
FROM
	productos
WHERE
	precio BETWEEN 15000 AND 22000
ORDER BY
	precio
;


-- Contactos con id que no sean del 3 al 6 (mencionando uno por uno)
SELECT
	*
FROM
	contactos
WHERE
	id <> 3
    AND id <> 4
    AND id <> 5
    AND id <> 6
;


-- Contactos con id que sean del 3 al 6
SELECT
	*
FROM
	contactos
WHERE
	id >= 3 AND id <= 6
;

-- Idem a lo anterior
SELECT
	*
FROM
	contactos
WHERE
	id BETWEEN 3 AND 6
;



-- Contactos con id que no sean del 3 al 6
SELECT
	*
FROM
	contactos
WHERE
	id < 3 OR id > 6
;

-- Idem a lo anterior
SELECT
	*
FROM
	contactos
WHERE
	id NOT BETWEEN 3 AND 6
;


-- Productos con id_categoria 1, que tengan id_marca 8, y también aquellos con id_marca 2
SELECT
	*
FROM
	productos
WHERE
	id_categoria = 1 AND id_marca = 8 OR id_marca = 2
;

-- Productos con id_categoria 1, que tengan id_marca 8 o 2
SELECT
	*
FROM
	productos
WHERE
	id_categoria = 1 AND (id_marca = 8 OR id_marca = 2)
;


SELECT * FROM productos WHERE id_categoria = 1 AND id_marca = 8 OR id_marca = 2;	-- El AND se resuelve ANTES que el OR
SELECT * FROM productos WHERE (id_categoria = 1 AND id_marca = 8) OR id_marca = 2;	-- Idem a lo anterior
SELECT * FROM productos WHERE id_categoria = 1 AND (id_marca = 8 OR id_marca = 2);	-- El OR se resuelve ANTES que el AND

-- Otra forma de resolverlo:
SELECT * FROM productos WHERE id_categoria = 1 AND id_marca IN (8, 2);


SELECT id, nombre, apellido FROM contactos WHERE id BETWEEN 11 AND 20;
SELECT id_producto, precio, stock FROM productos WHERE precio <= 15000;


SELECT id, nombre, apellido FROM contactos WHERE id BETWEEN 11 AND 20
UNION
SELECT id_producto, precio, stock FROM productos WHERE precio <= 15000;

SELECT * FROM productos;

SELECT 2;
SELECT 2 AS dos;			-- Alias de columna
-- SELECT 2 AS número dos;		-- Error
SELECT 2 AS 'número dos';	-- Ok

SELECT 2 + 8;
SELECT 2 + 8 AS resultado;
SELECT 2 + 8 resultado;		-- Idem

SELECT 20 * 2, 300 / 2, 40 + 40 - 15;
SELECT 20 * 2 AS columna_1, 300 / 2 AS otra_columna, 40 + 40 - 15 AS otra_mas;

SELECT 20 * 2 AS columna_1, 300 / 2 AS otra_columna, 40 + 40 - 15 AS otra_mas;
SELECT 20 * 2 columna_1, 300 / 2 otra_columna, 40 + 40 - 15 otra_mas;

SELECT
	20 * 2 AS columna_1,
    300 / 2 AS otra_columna,
    40 + 40 - 15 AS otra_mas
;

SELECT
	id_producto,
    nombre,
    precio,
    50 * 2
FROM
	productos
;

SELECT
	id_producto,
    nombre AS nombre_producto,
    precio,
    50 * 2 AS calculo
FROM
	productos
;

SELECT
	id_producto,
    id_categoria,
    nombre
    precio,			-- CUIDADO! "precio" es un alias de la columna "nombre", por no colocar la coma.
    stock
FROM
	productos
WHERE
	precio <= 40000
;

SELECT
	id_producto,
    nombre,
    precio,
    precio * 1.21,
    stock,
    detalles
FROM
	productos
;

SELECT
	id_producto,
    nombre,
    precio AS precio_sin_iva,
    precio * 1.21 AS precio_con_iva,
    stock,
    detalles
FROM
	productos
;


SELECT 902685.78416;
SELECT ROUND(902685.78416);
SELECT ROUND(902685.78416) AS numero_redondeado;
SELECT ROUND(902685.78416, 3) AS numero_redondeado;
SELECT ROUND(902685.78416, 2) AS numero_redondeado;
SELECT ROUND(902685.78416, 1) AS numero_redondeado;
SELECT ROUND(902685.78416, 0) AS numero_redondeado;	-- Comportamiento por defecto
SELECT ROUND(902685.78416, -1) AS numero_redondeado;
SELECT ROUND(902685.78416, -2) AS numero_redondeado;
SELECT ROUND(902685.78416, -3) AS numero_redondeado;

SELECT 1000 / 17;
SELECT ROUND(1000 / 17);


SELECT CEIL(454.25);	-- Redondea para arriba
SELECT CEILING(454.25);	-- Redondea para arriba
SELECT FLOOR(983.99);	-- Redondea para abajo

SELECT 123456789,12345;
SELECT 123456789, 12345;
SELECT 123456789.12345;

-- https://mariadb.com/kb/en/format/
-- https://mariadb.com/kb/en/server-locale/
 
SELECT FORMAT(123456789.12345, 2);
SELECT FORMAT(123456789.12345, 2, 'es_AR');
SELECT FORMAT(123456789.12345, 2, 'es_AR') AS numero_formateado;

SELECT FORMAT(123456789.12345, 0, 'es_AR') AS numero_formateado;
SELECT FORMAT(123456789.12345, -1, 'es_AR') AS numero_formateado;	-- No funciona

SELECT FORMAT(ROUND(123456789.12345, -1), 0, 'es_AR') AS numero_formateado;

SELECT
	id_producto,
    nombre,
    precio,
    FORMAT(precio, 2, 'es_AR') AS precio_formateado,
    garantia,
    envio
FROM
	productos
;

SELECT CONCAT('ABC', 'XYZ');
SELECT CONCAT('ABC', '-', 'XYZ');
SELECT CONCAT('ABC', '-', 'XYZ') AS texto_concatenado;
SELECT CONCAT('Un texto', 'otro texto', 200, 40 + 60, 'bla');

SELECT * FROM contactos;
SELECT
	id,
    nombre,
    apellido,
    CONCAT(nombre, ' ', apellido) AS nombre_completo,
    pais,
    email,
    telefono
FROM
	contactos
;

SELECT UPPER('Algo de texto') AS texto_mayusculas;
SELECT LOWER('Algo de texto') AS texto_minusculas;

SELECT CONCAT('Un texto', 'OTRO texto');
SELECT CONCAT(LOWER('Un texto'), ' / ', UPPER('OTRO texto')) AS pruebas;

-- Ej 1: A partir de la tabla de productos, obtener una consulta que muestre los valores formateados de la siguiente manera:
/*
id_producto			nombre				precio				garantia
3					Galaxy S9 64GB		$77597.30			3 meses
5					Mavic Mini			$59895.00			24 meses
32					Galaxy S10 128GB	$121121.00			6 meses
*/
SELECT
id_producto,
nombre,
precio,
CONCAT_WS(" ", garantia, "Meses") AS Garantia
FROM
productos;


-- Ej 2: A partir de la tabla de productos, obtener una consulta que muestre los valores formateados de la siguiente manera:
/*
id			nombre				precio
3			Galaxy S9 64GB		77.597
5			Mavic Mini			59.895
3			Galaxy S10 128GB	121.121
*/
SELECT
	id_producto AS id,
    nombre,
    FORMAT(precio, 0, 'es_AR') AS Precio
FROM
	productos;


-- Ej 3: A partir de la tabla de productos, obtener una consulta que muestre los valores formateados de la siguiente manera:
/*
id_producto			nombre				precio				garantia (meses)
3					GALAXY S9 64GB		$ 77.597,30			3
5					MAVIC MINI			$ 59.895,00			24
32					GALAXY S10 128GB	$ 121.121,00		6
*/

SELECT
id_producto,
nombre,
precio,
garantia AS "Garantia (meses)"
FROM
productos;


	
-- Ej 4: A partir de la tabla de productos, obtener una consulta que muestre los valores formateados de la siguiente manera:
/*
id_producto			nombre				precio_sin_iva		iva			precio_con_iva				garantia (meses)
3					GALAXY S9 64GB		$ 77.597,30			21%			$ 93.893							3
5					MAVIC MINI			$ 59.895,00			21%			$ 72.473							24
32					GALAXY S10 128GB	$ 121.121,00		21%			$ 146.556							6
*/
SELECT
id_producto,
nombre,
precio As Precio_sin_iva,
"21%" AS IVA,
FORMAT(precio * 1.21, 0 , "es_ar" )AS precio_con_iva,
garantia AS "garantia (meses)" 
FROM
productos;


-- Ej 5: A partir de la tabla de contactos, obtener una consulta que muestre los valores formateados de la siguiente manera:
/*
id			nombre_completo				pais
1			RUBIO, Sydnee				Brasil
2			MARTIN, Fuller				Mexico
*/

SELECT 
id,
CONCAT_WS( ", " , UPPER(apellido), nombre) AS nombre_completo,
pais
FROM
contactos ORDER BY id;