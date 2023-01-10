SELECT
	id_producto,
    nombre,
    precio,
    CONCAT(stock, IF (stock <= 10, ' (poco)', ' (mucho)')) stock
FROM
	productos
;

SELECT * FROM productos;
SELECT * FROM marcas;
SELECT * FROM categorias;

SELECT * FROM productos;

-- JOIN mal armado / Multiplicación de tablas
SELECT
	*
FROM
	productos
    JOIN categorias
;

-- Error Code: 1052. Column 'id_categoria' in on clause is ambiguous
SELECT
	*
FROM
	productos
    JOIN categorias ON id_categoria = id_categoria
;

-- Ok, pero se puede acortar
SELECT
	*
FROM
	productos
    JOIN categorias ON productos.id_categoria = categorias.id_categoria
;

SELECT
	*
FROM
	productos AS prod
    JOIN categorias AS cate ON prod.id_categoria = cate.id_categoria
;

SELECT
	*
FROM
	productos p
    JOIN categorias c ON p.id_categoria = c.id_categoria
;

-- Error Code: 1052. Column 'nombre' in field list is ambiguous
SELECT
	id_producto,
    nombre
FROM
	productos p
    JOIN categorias c ON p.id_categoria = c.id_categoria
;

SELECT
	id_producto,
    -- productos.nombre	-- Error Code: 1054. Unknown column 'productos.nombre' in 'field list'
	p.nombre,
    c.nombre categoria,
    precio,
    stock,
    garantia,
    detalles
FROM
	productos p
    JOIN categorias c ON p.id_categoria = c.id_categoria
;

/*
Ej 1: Armar una consulta que nos responda con resultados con la siguiente estructura:

id_producto		producto			marca		sitio_web					telefono					precio			detalles
3				Galaxy S9 64GB		Samsung		https://samsung.com			011-4109-4000				$ 77.597,30		Oferta! Samsung Galaxy S9 con 64GB de RAM
5				Mavic Mini			DJI			https://dji.com				+86 (0) 755 2665-6677		$ 59.895,00		Con tan solo 249 g, Mavic Mini ofrece 30 min de vuelo, transmisión HD de 2 km y un estabilizador en 3 ejes con una cámara 2.7K.
*/

SELECT
	id_producto,
    p.nombre producto,
    m.nombre marca,
    sitio_web,
    telefono,
    CONCAT('$ ', FORMAT(precio, 2, 'es_AR')) AS precio,
    detalles
FROM
	productos p
    JOIN marcas m ON p.id_marca = m.id_marca
;

/*
Ej 2: Armar una consulta que nos responda con resultados con la siguiente estructura:

id_producto		producto						sitio_web					telefono					precio			detalles
3				SAMSUNG - Galaxy S9 64GB		https://samsung.com			011-4109-4000				$ 77.597,30		Oferta! Samsung Galaxy S9 con 64GB de RAM
5				DJI  - Mavic Mini				https://dji.com				+86 (0) 755 2665-6677		$ 59.895.00		Con tan solo 249 g, Mavic Mini ofrece 30 min de vuelo, transmisión HD de 2 km y un estabilizador en 3 ejes con una cámara 2.7K.
*/

SELECT
	id_producto,
    CONCAT(UPPER(m.nombre), ' - ', p.nombre) producto,
    sitio_web,
    telefono,
    CONCAT('$ ', FORMAT(precio, 2, 'es_AR')) AS precio,
    detalles
FROM
	productos p
    JOIN marcas m ON p.id_marca = m.id_marca
;


-- Solo productos con stock de la marca Samsung
SELECT
	id_producto,
    p.nombre producto,
    CONCAT('$ ', FORMAT(precio, 2, 'es_AR')) AS precio,
    stock,
    detalles
FROM
	productos p
    JOIN marcas m ON p.id_marca = m.id_marca
WHERE
	stock > 0
    AND m.nombre = 'Samsung'
;


SELECT * FROM productos;
SELECT * FROM marcas;
SELECT * FROM categorias;

SELECT
	*
FROM
	productos p
    LEFT JOIN categorias c ON p.id_categoria = c.id_categoria
;

SELECT
	*
FROM
	productos p
    RIGHT JOIN categorias c ON p.id_categoria = c.id_categoria
;

SELECT
	*
FROM
	productos p
    LEFT JOIN categorias c ON p.id_categoria = c.id_categoria
    LEFT JOIN marcas m ON p.id_marca = m.id_marca
;

SELECT
	id_producto,
    p.nombre,
    m.nombre marca,
    c.nombre categoria,
    precio,
    stock,
    detalles
FROM
	productos p
    LEFT JOIN categorias c ON p.id_categoria = c.id_categoria
    LEFT JOIN marcas m ON p.id_marca = m.id_marca
;


-- Funciones de agregación
SELECT MIN(precio) precio_minimo FROM productos;
SELECT MAX(precio) precio_maximo FROM productos;

SELECT
	MIN(precio) precio_minimo,
	MAX(precio) precio_maximo
FROM
	productos
;

SELECT
	FORMAT(MIN(precio), 2, 'es_AR') precio_minimo,
	FORMAT(MAX(precio), 2, 'es_AR') precio_maximo
FROM
	productos
;

SELECT
	MIN(precio) precio_minimo,
	MAX(precio) precio_maximo,
    AVG(precio) precio_promedio,
    SUM(stock) cantidad_unidades
FROM
	productos
;

SELECT COUNT(*) FROM productos;
SELECT COUNT(*) cantidad FROM productos;

SELECT * FROM productos WHERE stock >= 100;
SELECT COUNT(*) cantidad FROM productos WHERE stock >= 100;

SELECT COUNT(*) cantidad_argentinos FROM contactos WHERE pais = 'Argentina';

SELECT
	pais,
	COUNT(*) cantidad
FROM
	contactos
GROUP BY pais
;

SELECT
    c.nombre,
	COUNT(*) cantidad,
    MIN(precio) precio_minimo,
    MAX(precio) precio_maximo,
    AVG(precio) precio_promedio,
    SUM(stock) cantidad_unidades
FROM
	productos p
    LEFT JOIN categorias c ON p.id_categoria = c.id_categoria
GROUP BY c.id_categoria
;
