<?php
require_once('constantes.php');

// 1. Creaci�n de una conexi�n a la base de datos
/*
$db_conexion = mysqli_connect(DB_SERVER, DB_USER, DB_PASS,DB_NAME);
if (!$db_conexion) {
	die("La conexion a la base de datos ha fallado: " . msql_error());
}

// 2. Selecci�n de una base de datos
$db_seleccion = mysqli_select_db(DB_NAME, $db_conexion);
if (!$db_seleccion) {
	die("La seleccion de la base de datos ha fallado: " . msql_error());
}*/


$enlace = mysqli_connect(DB_SERVER, DB_USER, DB_PASS,DB_NAME);
if (!$enlace) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

//mysqli_close($enlace);



?>

