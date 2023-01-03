<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos</title>
</head>
<body>
    <h1>Datos</h1>
    <?php
        $conexion = mysqli_connect('127.0.0.1', 'root', '', 'curso_2022_12_07');

        $resultados = mysqli_query($conexion, 'SELECT * FROM productos WHERE nombre LIKE "%tv%"');

        $fila = mysqli_fetch_assoc($resultados);
        echo 'Id: ' . $fila['id_producto'] . '<br>';
        echo 'Nombre: ' . $fila['nombre'] . '<br>';
        echo 'Precio: ' . $fila['precio'] . '<br>';
        echo 'Stock: ' . $fila['stock'] . '<br>';
        echo 'Detalles: ' . $fila['detalles'] . '<hr>';

        $fila = mysqli_fetch_assoc($resultados);
        echo 'Id: ' . $fila['id_producto'] . '<br>';
        echo 'Nombre: ' . $fila['nombre'] . '<br>';
        echo 'Precio: ' . $fila['precio'] . '<br>';
        echo 'Stock: ' . $fila['stock'] . '<br>';
        echo 'Detalles: ' . $fila['detalles'] . '<hr>';

        $fila = mysqli_fetch_assoc($resultados);
        echo 'Id: ' . $fila['id_producto'] . '<br>';
        echo 'Nombre: ' . $fila['nombre'] . '<br>';
        echo 'Precio: ' . $fila['precio'] . '<br>';
        echo 'Stock: ' . $fila['stock'] . '<br>';
        echo 'Detalles: ' . $fila['detalles'] . '<hr>';


        mysqli_close($conexion);

    ?>
</body>
</html>