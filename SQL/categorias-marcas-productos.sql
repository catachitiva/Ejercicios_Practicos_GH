-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2021 a las 01:27:31
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `curso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'TV'),
(2, 'Tablet'),
(3, 'Notebook'),
(4, 'Smartwatch'),
(5, 'Drone'),
(6, 'Software'),
(7, 'Smartphone'),
(8, 'Parlante'),
(10, 'Microondas'),
(11, 'Lavarropas'),
(12, 'Secarropas'),
(13, 'Lavasecarropas'),
(14, 'Consola'),
(15, 'Juego'),
(16, 'Licuadora'),
(17, 'Multiprocesadora'),
(18, 'Tostadora'),
(19, 'Juguera'),
(20, 'Cafetera'),
(21, 'Aspiradora'),
(22, 'Lustradora'),
(23, 'Joystick'),
(26, 'Sandwichera'),
(27, 'Pava eléctrica'),
(28, 'Fábrica de pastas'),
(29, 'Horno microondas'),
(30, 'Horno a gas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `sitio_web` varchar(150) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`, `sitio_web`, `telefono`, `observaciones`) VALUES
(1, 'LG', 'https://lg.com.ar', '0800-888-5454', NULL),
(2, 'Samsung', 'https://samsung.com', '011-4109-4000', 'Creador de la línea Galaxy de celulares'),
(3, 'Apple', 'https://apple.com', '1-800-275-2273', 'Tel de Estados Unidos'),
(4, 'DJI', 'https://dji.com', '+86 (0) 755 2665-6677', 'Lider mundial en la creación de drones'),
(5, 'JBL', 'https://jbl.com', '(800) 336-4525', ''),
(6, 'Logitech', 'https://logitech.com', '+1 510-795-8500', NULL),
(7, 'Microsoft', 'https://microsoft.com', '(800) 642 7676', 'Creadora de Windows y Office'),
(8, 'Sony', 'https://www.sony.com.ar', '011 4896-5200', NULL),
(90, 'Liliana', 'https://liliana.com.ar', '011 4444-2222', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `id_marca` int(11) NOT NULL,
  `precio` decimal(8,2) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `garantia` tinyint(3) UNSIGNED NOT NULL,
  `detalles` varchar(3000) DEFAULT NULL,
  `envio` tinyint(1) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `id_categoria`, `id_marca`, `precio`, `stock`, `garantia`, `detalles`, `envio`, `foto`) VALUES
(3, 'Galaxy S9 64GB', 7, 2, '77597.30', 1, 3, 'Oferta! Samsung Galaxy S9 con 64GB de RAM', 1, ''),
(5, 'Mavic Mini', 5, 4, '59895.00', 50, 24, 'Con tan solo 249 g, Mavic Mini ofrece 30 min de vuelo, transmisión HD de 2 km y un estabilizador en 3 ejes con una cámara 2.7K.', 1, ''),
(32, 'Galaxy S10 128GB', 7, 2, '121121.00', 234, 6, 'Pantalla Dynamic AMOLED con bordes minimizados y QuadHQ+ para una vista cinemática. 4 cámaras de nivel profesional. Teleobjetivo para primeros planos, lente ultra gran angular, lente para fotos nocturnas y cámara frontal con enfoque ultra rápido. Carga inalámbrica compartida con Wireless Powershare.', 1, ''),
(34, 'Mavic 2 Pro', 5, 4, '385990.00', 100, 6, 'El Mavic 2 Pro viene equipado con la nueva cámara Hasselblad L1D-20c, que posee la tecnología Hasselblad Natural Color Solution (HNCS), exclusiva de Hasselblad, que ayuda a los usuarios a capturar magníficas tomas aéreas de 20 megapíxeles con detalles de color asombrosos.', 1, ''),
(35, 'Series 5 Ultra', 3, 2, '84918.90', 90, 24, 'Ultrabook superdelgada y liviana con menos de 1,5kg de peso.', 0, ''),
(36, 'Microsoft Windows 10 Pro', 6, 7, '15367.00', 138, 12, 'Sistema operativo Windows 10 Pro', 1, ''),
(37, 'SmartTV 42', 1, 1, '45012.00', 0, 12, 'Excelente calidad de imagen. Apps: Netflix, entre otras.', 1, ''),
(78, 'Office Professional 2019', 6, 7, '33154.00', 970, 24, 'Incluye Word, Excel, PowerPoint, Outlook, Publisher y Access. Licencia para uso doméstico y comercial del producto estrella de Microsoft.', 1, ''),
(79, 'X72F LED 4K Ultra', 1, 8, '83490.00', 15, 24, 'X72F| LED | 4K Ultra HD | Alto rango dinámico (HDR) | Smart TV', 1, ''),
(80, 'TV X85F', 1, 8, '139150.00', 0, 24, 'Una imagen más clara y colorida. Un chip increíblemente realista. Con la tecnología Object-based HDR remaster y Super Bit Mapping 4K HDR, nuestro 4K HDR Processor X1™ reproduce una profundidad y unas texturas mejoradas, además de unos colores naturales. Disfruta de colores puros y un mayor nivel de brillo en imágenes ultrarrealistas.', 1, ''),
(81, 'Parlante portátil Sony 5', 8, 8, '17303.00', 72, 6, 'Portátil inalámbrico blue con wifi', 1, ''),
(82, 'Parlante Bluetooth JBL GO 2 Red', 8, 5, '6121.00', 153, 6, 'El parlante Bluetooth JBL GO 2 cuenta con un diseño ultra compacto de forma cuadrada y viene en llamativos colores. Gracias a sus medidas (7,1 cm de alto x 8,6 cm de ancho x 3,1 cm de profundidad) y a su peso, de tan solo 130 gramos, vas a poder transportarlo fácilmente y llevar tu música favorita a donde vayas. Ademas, es resistente al agua IPX7, lo cual te permitira llevar tu música llevar a la pileta o a la playa.', 1, ''),
(84, 'Apple Watch Series 5', 4, 3, '143990.00', 33, 12, 'Un reloj como nunca antes viste. Con la pantalla Retina siempre activa, puedes ver la hora y la carátula todo el tiempo. Monitorea rápidamente tu frecuencia cardiaca y recibe notificaciones si parece estar demasiado alta o baja.', 1, ''),
(117, 'Drone XLR40 con cámara con autofoco', 5, 4, '115599.00', 35, 24, 'Drone con cámara con autofoco y estabilizador de 3 ejes de alta calidad', 0, ''),
(122, 'Windows 10 pro', 6, 7, '9728.00', 5, 12, 'licencia digital', 1, ''),
(123, 'Office 2019 Home & Student', 6, 7, '22167.00', 5, 24, 'word, excel, powerpoint', 1, ''),
(124, 'Windows 7 oferta', 6, 7, '2464.00', 4, 12, 'Con soporte por 2 años', 1, ''),
(125, 'Antivirus Microsoft', 6, 7, '11979.00', 100, 24, 'Antivirus para empresas', 0, ''),
(126, 'Otro Drone chiquito', 5, 4, '35937.00', 0, 24, NULL, 1, ''),
(131, 'TV', 100, 2, '363.00', 40, 24, 'Smart TV con Botón de Netflix', 1, ''),
(137, 'Gaming laptop 3200X', 3, 2, '91234.00', 10, 24, 'Con placa de video de 4gb', 1, ''),
(138, 'tern node id7', 13, 1, '2555.00', 234, 6, 'ads fasdf', 0, '1607187301.8207bici.jpg'),
(139, 'Galaxy Note 20 Ultra', 7, 2, '202070.00', 10, 12, 'Con 4 cámaras y todos los chiches', 1, NULL),
(144, 'bravia rt2800', 1, 2, '19800.00', 4, 12, 'con botón de netflix y 6 hdmi', 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
