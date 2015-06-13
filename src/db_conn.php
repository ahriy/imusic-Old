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

// $f=fopen("../parser/cn_male/cn_male_1","r");
// while(!feof($f)){
// 	$line=fgets($f);
// 	if($line=="albums") echo "jjjsdfsdf";
// 	echo $line;
// 	$line="ahriy";
// 	mysql_query("INSERT INTO singers (id,name) 
// 	VALUES (1,".$line.")");
// }
// fclose($f);

?>