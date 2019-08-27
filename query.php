<?php
//0. Nombre de la base de datos y de la tabla
$db_nombre = "id819013_mariano";
//$db_nombre = "mariano";
$db_tabla = "censo";
$db_tabla2 = "poblacion";
$db_tabla3 = "compu";
// 1. Creaci�n de una conexi�n a la base de datos

/*
$db_conexion = mysql_connect("localhost", "id819013_marianoferle", "Mariano123MM");
//$db_conexion = mysql_connect("localhost", "root", "");
if (!$db_conexion) {
  die("La conexion a la base de datos ha fallado: " . msql_error());
}
// 2. Selecci�n de una base de datos
$db_seleccion = mysqli_select_db($db_nombre, $db_conexion);
if (!$db_seleccion) {
  die("La seleccion de la base de datos ha fallado: " . msql_error());
}*/

$db_conexion = mysqli_connect("localhost", "id819013_marianoferle", "Mariano123MM","id819013_mariano");
if (!$db_conexion) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

?>

<?php
// Verifica si est� definida la etiqueta 'tipo'
if (isset($_GET['tipo'])) {
  $tipo = $_GET['tipo'];
} else {
  $tipo = "null";
}

// Si tipo == salvar...



if ($tipo == "load3") {
  // 3. Realizaci�n de una consulta SELECT a la base de datos
  $db_resultado = mysqli_query($db_conexion, "SELECT * FROM " . $db_tabla3 . ";");
  if (!$db_resultado) {
    die("La consulta a la base de datos ha fallado: " . msqli_error());
  }

  $num_filas = mysqli_num_rows($db_resultado);
  if ($num_filas == 0) {
    return "";
  } else {
    // 4. Uso de datos devueltos
    while($fila = mysqli_fetch_array($db_resultado)) {
      echo $fila[0] .",". 
	         $fila[1] .",".
		       $fila[2] .",". 
	         $fila[3] .",".
		       $fila[4] .",". 
	         $fila[5] .",".
		       $fila[6] ."\n";

}
}
// Si todo falla!
}

else if ($tipo == "load") {
  // 3. Realizaci�n de una consulta SELECT a la base de datos
  $db_resultado = mysqli_query($db_conexion,"SELECT * FROM " . $db_tabla . ";");
  if (!$db_resultado) {
    die("La consulta a la base de datos ha fallado: " . msqli_error());
  }

  $num_filas = mysqli_num_rows($db_resultado);
  if ($num_filas == 0) {
    return "";
  } else {
    // 4. Uso de datos devueltos
    while($fila = mysqli_fetch_array($db_resultado)) {
      echo $fila[0] .",". 
	         $fila[1] .",". 
	         $fila[2] .",".
		       $fila[3] ."\n";

}
}
// Si todo falla!
}

else if ($tipo == "load2") {
  // 3. Realizaci�n de una consulta SELECT a la base de datos
  $db_resultado = mysqli_query($db_conexion,"SELECT * FROM " . $db_tabla2 .  ";" );
  if (!$db_resultado) {
    die("La consulta a la base de datos ha fallado: " . msqli_error());
  }

  $num_filas = mysqli_num_rows($db_resultado);
  if ($num_filas == 0) {
    return "";
  } else {
    // 4. Uso de datos devueltos
    while($fila = mysqli_fetch_array($db_resultado)) {
      echo $fila[1] .",". 
	         $fila[2] .",". 
		       $fila[3] .",". 
		       $fila[4] .",". 
		       $fila[5] .",". 
		       $fila[6] .",". 
		       $fila[7] .",". 
		       $fila[8] .",". 
		       $fila[9] .",". 
	         $fila[10] ."\n";

}
}
// Si todo falla!
}


 else {
  echo "S�lo funciona con tipo=cargar,tipo=salvar,tipo=limpiar";
}
?>

<?php
// 5. Cierre de la conexi�n
mysqli_close($db_conexion);
?>