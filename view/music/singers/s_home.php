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
					$str=sprintf("select song.name name 
						          from song where song.singer_id=%s",$singer_id);
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
	</div>