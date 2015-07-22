	<div class="row clearfix">
		<div class="col-md-4 column">
			<h3>
				所有用户(按字母表顺序)
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
					$str=sprintf("select id,name
						          from user order by name");
					$res=mysql_query($str);
					while($row=mysql_fetch_array($res)){
						$str=sprintf("
							<tr>
								<td>
									 <button type='button' user_id='%s' user_name='%s' class='show_list btn btn-default' >%s</button>
								</td>
								<td>
									 <button type='button' user_id='%s' user_name='%s' class='follow_user btn btn-default' >关注</button>
								</td>
							</tr>",$row["id"],$row["name"],$row["name"],$row["id"],$row["name"]);
						echo $str;
					}

					 ?>
				</tbody>
			</table>
		</div>

		<div id="follow_user"></div>


		<div class="col-md-8 column" id="show_list">

		</div>
	</div>
