<div id="footer">
<p><strong>Autor</strong> <a target="_blank" href="http://marianoferle.com.ar" title="INDEC">Mariano Ferle</a></p>
<p><strong>Hackaton - Program.ar 2013 - Menci&oacute;n - Mejor Impacto Visual</strong></p>
<p><strong>Desarrollado parcialmente en la asignatura Informatica Aplicada 1 -</strong><a target="_blank" href="http://multimedia.iuna.edu.ar/" title="IUNA">Artes Multimediales - IUNA</a></p>
<p><strong>Fuente:</strong> <a target="_blank" href="http://www.censo2010.indec.gov.ar/resultadosdefinitivos_totalpais.asp" title="INDEC">INDEC</a> Censo Nacional de Poblaci&oacute;n, Hogares y Viviendas 2010.</p>
<p><strong>Software Libre:</strong><a target="_blank" href="http://processingjs.org/" title="Processing"> Processing.js</a>-<a target="_blank" href="http://php.net/" title="PHP">PHP</a>-<a target="_blank" href="http://www.mysql.com/" title="Mysql">Mysql</a></p>
</div

</body>
   
</html>
<?php

echo "<div id='conex'>";
// 5. Cierre de la conexión si es que ha sido establecida
if (isset($db_conexion)) {
  mysql_close($db_conexion);
}
echo "</div>";
?>
