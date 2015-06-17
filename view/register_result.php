<!DOCTYPE html>
<html>
<head>
   <title>imusic 您的私人音乐收藏夹</title>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   <meta charset="utf-8">
</head>
<body>
</br>
</br>
</br>
</br>
</br>
</br>

<?php
	$con = mysql_connect("localhost","root","");
	if (!$con){
	die('Could not connect: ' . mysql_error());
	} 
	mysql_query("use mydb");
	$res=mysql_query("select id from user where name='".$_POST['rname']."'");
	$row=mysql_fetch_array($res);
	if(!$row and $_POST['rpasswd']==$_POST['crpasswd']){
		echo "success!";
		session_start();
		$_SESSION['user']=$_POST['rname'];
		$_SESSION['passwd']=$_POST['crpasswd'];
		$inster_comm=sprintf("insert into user (name,passwd,gender,phone,mail,what_up) values ('%s','%s','%s','%s','%s','%s')",$_POST['rname'],$_POST['crpasswd'],$_POST['gender'],$_POST['phone'],$_POST['mail'],$_POST['what_up']);
		mysql_query($inster_comm);
		header("Location: /imusic/");
		exit;
	}
	else{
		header("Location: /imusic/view/register.php");
		exit;
	} 
 ?>
</body>