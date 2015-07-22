<?php 
$list_id=$_GET["list_id"];

$con = mysql_connect("localhost","root","");
if (!$con){
die('Could not connect: ' . mysql_error());
} 
mysql_query("use mydb");
session_start();
//首先找到用户id
$str=sprintf("select id from user where name='%s'",$_SESSION['user']);
$res=mysql_query($str);
$row=mysql_fetch_array($res);
//user_id代表的是当前用户的id，list_id代表的是被关注的歌单的id
$user_id=$row["id"];

$str=sprintf("insert into user_like_song_list(user_id,song_list_id)
 			  values(%s,%s) ",$user_id,$list_id);
$res=mysql_query($str); 
 ?>