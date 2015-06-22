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
					$str=sprintf("select singer.name name 
						          from singer");
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						$str=sprintf("
							<tr>
								<td>
									<a href="">%s</a>
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
		</div>
	</div>
<a href=""></a>