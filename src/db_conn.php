<?php 


$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  } 


mysql_query("use imusic");

mysql_query("INSERT INTO users (name, passwd, gender) 
VALUES ('Ahriy', 'asdf911', 'male')");


$res=mysql_query("select * from users");

while($row=mysql_fetch_array($res)){
	echo $row['name'];
	echo "<br />";
}
?>