<table class="table">
				<tbody>
					<?php
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					session_start(); 
					$str=sprintf("select singer.name as name, singer.id id from user,user_like_singer,singer
					              where user.name='%s' and user.id=user_like_singer.user_id and singer.id=user_like_singer.singer_id",$_SESSION['user']);
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						$str=sprintf("
							<tr>
								<td>
									<a href='/imusic/view/music/singers/s_index.php?singer_id=%s'>%s</a>
								</td>
							</tr>",$row["id"],$row["name"]);
						echo $str;
					}
					// echo $row['name'];
					 ?>
				</tbody>
</table>