<?php 
	$con = mysql_connect("localhost","root","");
	if (!$con){
	die('Could not connect: ' . mysql_error());
	} 
	mysql_query("use mydb");
	if(isset($_POST["lname"])){
		$res=mysql_query("select id from song_list where name='".$_POST['lname']."'");
		$row=mysql_fetch_array($res);
		if(!$row and isset($_POST["lname"]) and isset($_POST["lnote"])){
			$inster_comm=sprintf("insert into song_list (name,note) values ('%s','%s')",$_POST['lname'],$_POST['lnote']);
			mysql_query($inster_comm);
			echo  "<script>alert('歌单已经创建成功!')</script>";
		}
	}
		?>