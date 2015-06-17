	<div class="row clearfix">
		<div class="col-md-8 column">
			<h3>
				好友动态
			</h3>
				<?php  
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					//session_start();
					$str=sprintf("select user2.name name,comment.content content,comment.song_id song_id,comment.time time from user user1, user user2, follow, user_comment_song comment
					              where user1.name='%s' and user1.id=follow.user_id and user2.id=follow.follower_id and comment.user_id=user2.id order by comment.time",$_SESSION['user']);
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
								%s's comment to <button type='button' class='btn btn-default' data-toggle='modal' data-target='#%s'>%s</button>
							</h3>
							<p>
								%s
							</p>
							<p><small>
								%s
							</small></p>
							",$row["name"],$song_name,$s_row["name"],$row["content"],$row["time"]);
						echo $str;
						$player=sprintf('<div class="modal fade" id="%s" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">正在为您播放 %s</h4>
						      </div>
						      <div class="modal-body">
						<P align=center> <TABLE borderColor=#bc8f8f cellSpacing=1 width=315 border=1> <TBODY> <TR> <TD><EMBED style="FILTER: invert(); WIDTH: 500px; HEIGHT: 120px" src="../../music/%s.mp3"
						type=audio/mpeg autostart="true"></EMBED></TD></TR></TBODY></TABLE> <P align=center></P></P>
						      </div>
						    </div>
						  </div>
						</div>',$song_name,$song_name,$song_name);
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
					//session_start();
					$str=sprintf("select user2.name,user2.what_up from user user1, user user2, follow
					              where user1.name='%s' and user1.id=follow.user_id and user2.id=follow.follower_id",$_SESSION['user']);
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						// if(!isset($row["what_up"])){
						// 	$row["what_up"]="";
						// }
						$str=sprintf("
							<tr>
								<td>
									%s
								</td>
								<td>
									%s
								</td>
							</tr>",$row["name"],$row["what_up"]);
						echo $str;
					}

					 ?>
				</tbody>
			</table>
		</div>
	</div>




<!-- code for the player  -->
