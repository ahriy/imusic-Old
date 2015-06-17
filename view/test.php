<?php
$name="ss";
$passwd="ss";
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					session_start(); 
					for ($i=0; $i <20 ; $i++) { 
						$insert_comm=sprintf("insert into user (name,
							passwd) values ('user%d','%s')",$i,"asdf911"
						);
						mysql_query($insert_comm);	
					}
					date_default_timezone_set("Asia/Shanghai");
					$time=date('Y-m-d H:i:s');
					echo $time;
					$str=sprintf("UPDATE user_comment_song SET time= '".$time."' where song_id=2");
					echo $str;
					mysql_query($str);	
					$str=sprintf("select * from user");
 ?>
<P align=center> <TABLE borderColor=#bc8f8f cellSpacing=1 
width=315 border=1> <TBODY> <TR> <TD><EMBED 
style="FILTER: invert(); WIDTH: 315px; HEIGHT: 150px" src="../music/OneLove.mp3"
type=audio/mpeg 
autostart="true"></EMBED></TD></TR></TBODY></TABLE> 
<P align=center></P></P>

