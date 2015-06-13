<?php
$name="ss";
$passwd="ss";
	$con = mysql_connect("localhost","root","");
	if (!$con){
	die('Could not connect: ' . mysql_error());
	} 
	mysql_query("use mydb");
	$res=mysql_query("select id from user where name='ahriy'"); 
	$row=mysql_fetch_array($res);
	print_r($row);
 ?>