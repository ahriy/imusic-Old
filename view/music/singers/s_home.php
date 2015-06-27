	<div class="row clearfix">
		<div class="col-md-8 column">
			<?php
			$singer_id=$_GET['singer_id'];
			$str=sprintf('<img src="../../../img/singers/home_photo/%s.jpg">',$singer_id); 
			echo $str;
			 ?>
		</br>
		</br>
		</br>
			<?php 	
					$con = mysql_connect("localhost","root","");
					if (!$con){
					  die('Could not connect: ' . mysql_error());
 					} 
					mysql_query("use mydb");
					$str=sprintf("select singer.note note 
	          					  from singer where singer.id=%s",$singer_id);
					$res=mysql_query($str);
					$row=mysql_fetch_array($res);
					$str=sprintf("<p>%s</p>",$row["note"]);
					echo $str;
					//echo $row["note"];
			 ?>		
		</div>
		<div class="col-md-4 column">
			<h3>歌曲列表</h3>
			<table class="table">
				<tbody>
				<?php 
					$str=sprintf("select song.name name,song.id as song_id 
						          from song where song.singer_id=%s",$singer_id);
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
						echo "<td>";
						$add_to_list=sprintf("
							<button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>%s</button>
							");
						echo $add_to_list;
						echo "</td>";
						echo "</tr>";
					}

					 ?>
				</tbody>
			</table>
		</div>
	</div>