	<div class="row clearfix">
		<div class="col-md-8 column">
			<h3>
				好友动态
			</h3>
			<script>
</script>
<div id="insert_record"></button></div>
				<?php  
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					//session_start();
					$str=sprintf("select user2.name name,comment.content content,comment.song_id song_id,comment.time time from user user1, user user2, follow, user_comment_song comment
					              where user1.name='%s' and user1.id=follow.user_id and user2.id=follow.follower_id and comment.user_id=user2.id order by comment.time desc",$_SESSION['user']);
					$res=mysql_query($str);
					$song_name="";
					
					while($row=mysql_fetch_array($res)){
						// if(!isset($row["what_up"])){
						// 	$row["what_up"]="";
						// }
						$s_str=sprintf("select * from song where song.id='%s'",$row["song_id"]);
						$s_res=mysql_query($s_str);
						$s_row=mysql_fetch_array($s_res);
						$song_name=$s_row["name"];
						$str=sprintf("
							<h3>
								%s's comment to <button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>%s</button>
							</h3>
							<p>
								%s
							</p>
							<p><small>
								%s
							</small></p>
							",$row["name"],$row["song_id"],$_SESSION['user'],$song_name,$s_row["name"],$row["content"],$row["time"]);
						echo $str;
						$player=sprintf($_SESSION['player'],$song_name,$song_name,$song_name);
						echo $player;
					}

					 ?>
		</div>
		<div class="col-md-4 column">
			<h3>
				我关注的人
			</h3>
			<table class="table">
				<tbody>
				<?php  
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					$str=sprintf("select user2.name,user2.what_up from user user1, user user2, follow
					              where user1.name='%s' and user1.id=follow.user_id and user2.id=follow.follower_id",$_SESSION['user']);
					$res=mysql_query($str);
					$ran=0;
					while($row=mysql_fetch_array($res)){	
						if($ran>=5)$ran=0;
						$str=sprintf("
							<tr>
								<td>
									<img src='../../img/users/user%d.jpg' width='30px'>%s
								</td>

								<td>
									%s
								</td>
							</tr>",$ran,$row["name"],$row["what_up"]);
						echo $str;
						$ran++;
					}

					 ?>
				</tbody>
			</table>
		</div>
	</div>


<!-- code for the player  -->
