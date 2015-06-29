<?php 

echo "enter the db";
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  } 


mysql_query("use imusic");

// insert singers and songs into database 

$res=mysql_query("show variables like 'character_set_%'");
echo $res


?>