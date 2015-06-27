	<div class="row clearfix">
		<div class="col-md-4 column">
			<h3>
				歌手
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
					$str=sprintf("select singer.id id,singer.name name 
						          from singer");
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

					 ?>
				</tbody>
			</table>
		</div>
		<div class="col-md-4 column">
			<h3>
				类别
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
					$str=sprintf("select category.name name 
						          from category");
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						$str=sprintf("
							<tr>
								<td>
									%s
								</td>
							</tr>",$row["name"]);
						echo $str;
					}

					 ?>
				</tbody>
			</table>
		</div>
		<div class="col-md-4 column">
			<h3>
				当前最热
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
         			$str=sprintf("select song_id ,count(*) as frequent,song.name as name,record.time as time 
                        		from record,song
                        		where song_id=song.id
                       			group by song_id
                       			order by frequent desc
                       			limit 10");
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						$song_name=$row["name"];
						$str=sprintf("
						<button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>%s</button>
							",$row["song_id"],$_SESSION['user'],$song_name,$song_name);
						
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
						echo "<tr>";
						echo "<td>";
						echo $str;
						echo $player;
						echo "</td>";
						echo "</tr>";
					}

					 ?>
				</tbody>
			</table>
		</div>
	</div>
<div class="modal fade" id="%s" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
						</div>