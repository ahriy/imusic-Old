<?php 
$song_id=$_GET['song_id'];
$user_name=$_GET['user_name'];
// echo $song;
// echo $user_name;
$con = mysql_connect("localhost","root","");
	if (!$con){
	die('Could not connect: ' . mysql_error());
	} 
	session_start();
	mysql_query("use mydb");
	date_default_timezone_set("Asia/Shanghai");
	$time=date('Y-m-d H:i:s');
	$str=sprintf("insert into record (user_name,song_id,time) values('%s',%s,'%s')",$user_name,$song_id,$time);
    $res=mysql_query($str);

 ?>