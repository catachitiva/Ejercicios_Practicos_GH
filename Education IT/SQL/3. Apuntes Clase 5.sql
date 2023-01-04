SELECT IF(2 < 3, 'VERDAD', 'MENTIRA') AS 2_menor_a_3;
SELECT IF(2 > 3, 'VERDAD', 'MENTIRA') AS 2_mayor_a_3;

SELECT IF(2 < 3, 'dos es menor a 3', 'dos NO es menor a 3') AS dos_menor_a_tres;

SELECT * FROM productos;

SELECT
	id_producto,
    nombre,
    precio,
    IF (stock <= 10, 'poco stock', 'mucho stock') stock
FROM
	productos
;


SELECT
	id_producto,
    nombre,
    precio,
    IF (stock <= 10, CONCAT(stock, ' (poco)'), CONCAT(stock, ' (mucho)')) stock
FROM
	productos
;

SELECT * FROM contactos;

SELECT
	id,
    pais,
    -- CONCAT(pais, ' (***)') pais,
    IF (pais = 'Argentina', CONCAT(pais, ' (***)'), pais)pais,
    nombre,
    apellido
FROM
	contactos
;

/*

0:				sin tock
1 a 100:		n
> 100:			n (mucho)

*/

SELECT
	id_producto,
    nombre,
    precio,
    IF(stock = 0, 'sin stock', IF(stock <= 100, stock, CONCAT(stock, ' (mucho)'))) stock
FROM
	productos
;

SELECT
	id_producto,
    nombre,
    precio,
    stock,
    IF(stock = 0, 'sin stock', IF(stock <= 100, stock, CONCAT(stock, ' (mucho)'))) stock
FROM
	productos
;

SELECT
	id_producto,
    nombre,
    precio,
    stock,
    IF(stock = 0, 'Sin stock', IF(stock <= 100, '', 'Mucho')) info_stock
FROM
	productos
;




SELECT * FROM categorias;

INSERT INTO 
	categorias
VALUES
	(31, 'Parlante inalámbrico')
;

INSERT INTO
	categorias
VALUES
	(NULL, 'Minipimer')
;

SELECT * FROM categorias;
DESCRIBE categorias;

INSERT INTO
	categorias
VALUES
	(NULL, 'Cuchillo eléctrico'),
    (NULL, 'Aire acondcionado'),
    (NULL, 'Ventilador de pie'),
    (NULL, 'Taladro'),
    (NULL, 'Ventilador de techo'),
    (NULL, 'Hidrolavadora'),
    (NULL, 'Lavavajillas'),
    (NULL, 'Exprimidor')
;

INSERT INTO
	categorias (nombre, id_categoria)
VALUES
	('Aspiradora robot', NULL)
;

INSERT INTO
	categorias (nombre)
VALUES
	('Aspiradora portátil')
;


-- MariaDB:
ALTER TABLE contactos ADD UNIQUE INDEX email_UNIQUE(email);

SELECT * FROM contactos ORDER BY id DESC;

INSERT INTO
	contactos
VALUES
	(NULL, 'Roberto', 'Morelli', 'Uruguay', 'roberto_morelli@gmail.com', '+598 (2) 333-4444', '1971-12-20', 'Jeep', '2021-03-18 15:00:37', 1),
	(NULL, 'Florencia', 'Morelli', 'Uruguay', 'flor_morelli_mvdeo@gmail.com', '+598 (2) 711-0185', '1973-02-07', 'Jeep', '2021-03-18 14:53:11', 1)
;

INSERT INTO
	contactos
VALUES
	(NULL, 'Mario', 'García', 'Argentina', null, null, '1961-03-18', 'Citröen', null, null),
	(NULL, 'Laura', 'Gutiérrez', 'Brasil', 'lgutierrez_esc@gmail.com', '+55 (22) 4788-2030', '1993-04-17', 'Jeep', null, null)
;

INSERT INTO
	contactos (nombre, apellido, pais, email, telefono)
VALUES
	('Marcos', 'Campana', 'Argentina', 'markitos2233@gmail.com', '(011) 15 4090-1718'),
    ('Sofía', 'del Valle', 'Argentina', 'sofi_estudio@hotmail.com', '(0221) 533-1809')
;

SELECT * FROM productos;

-- CUIDADO!! UPDATE MASIVO!
-- UPDATE productos SET precio = 12000;

UPDATE
	productos
SET
	precio = 12000,
    stock = 18,
    envio = 0
WHERE
	id_producto = 122
;

SELECT * FROM contactos;

-- Si el modo SAFE UPDATE está activo, da error:
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
UPDATE
	contactos
SET
	estado = 4
WHERE
	fecha_nacimiento >= '2005-01-01'
;

UPDATE
	contactos
SET
	estado = 3
WHERE
	fecha_nacimiento >= '2005-01-01'
	AND id > 0
;

-- CUIDADO! DELETE MASIVO!
-- DELETE FROM marcas;
DELETE FROM marcas WHERE id_marca = 92;

SELECT * FROM productos;

-- Vacía la tabla de productos (no elimina a la tabla en sí)
-- TRUNCATE TABLE productos;

-- Elimina la tabla de productos
-- DROP TABLE productos;

