<?php 
$song_list=$_GET['song_list'];
$song_id=$_GET['song_id'];
$con = mysql_connect("localhost","root","");
if (!$con){
  die('Could not connect: ' . mysql_error());
	} 
mysql_query("use mydb");
$str=sprintf("delete from song_list_has_song
	  		  where song_id='%s' and song_list_id='%s'",$song_id,$song_list);		
$res=mysql_query($str);
header("Location: localhost/imusic/view/personal/dynamic/delete_from_list.php");
exit;
 ?>