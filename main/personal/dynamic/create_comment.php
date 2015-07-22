<?php 
$user_name=$_GET["user_name"];
$time=$_GET["time"];
$song_id=$_GET["song_id"];
$content=$_GET["content"];
$con = mysql_connect("localhost","root","");
if (!$con){
die('Could not connect: ' . mysql_error());
} 
session_start();
mysql_query("use mydb");
//首先找到用户id
$str=sprintf("select id from user where name='%s'",$_SESSION['user']);
$res=mysql_query($str);
$row=mysql_fetch_array($res);
//user_id代表的是当前用户的id，list_id代表的是被关注的歌单的id
$user_id=$row["id"];
$query=sprintf("insert into user_comment_song(user_id,song_id,time,content) values('%s','%s','%s','%s')",$user_id,$song_id,$time,$content);
$res=mysql_query($query);
 ?>