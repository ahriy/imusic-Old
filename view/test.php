<?php
$name="ss";
$passwd="ss";
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					session_start(); 

					$str=sprintf("select * from user,user_like_singer,singer
					              where user.name='%s' and user.id=user_like_singer.user_id and singer.id=user_like_singer.singer_id",$_SESSION['user']);
					echo $str;
					//$str=sprintf("select * from user")
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						echo ($row['user.name']);
					}
					//$row=mysql_fetch_array($res);
					print_r($row)
 ?>