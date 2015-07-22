<?php 
$song_list=$_GET['song_list'];
$song_id=$_GET['song_id'];

$con = mysql_connect("localhost","root","");
if (!$con){
  die('Could not connect: ' . mysql_error());
	} 
mysql_query("use mydb");
$str=sprintf("insert into song_list_has_song(song_list_id,song_id) values('%s','%s') 
			   ",$song_list,$song_id);
$res=mysql_query($str);
 ?>