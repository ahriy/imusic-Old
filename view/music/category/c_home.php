
<div class="row clearfix">
	<div class="col-md-8 column">
		<?php
		$c_id=$_GET['c_id'];
		//首先找到种类名称
		$str=sprintf("select name from category where id='%s'",$c_id);
		$res=mysql_query($str);
		$row=mysql_fetch_array($res);
		$c_name=$row["name"];

		$str=sprintf('<img src="../../../img/category/%s.jpg">',$c_name); 
		echo $str;
		 ?>
	</br>
	</br>
	</br>
		<?php 	
				session_start();
				$con = mysql_connect("localhost","root","");
				if (!$con){
				  die('Could not connect: ' . mysql_error());
					} 
				mysql_query("use mydb");

		 ?>		
	</div>

<div id="add_song"></div>

<div class="col-md-4 column">
	<h3>歌曲列表</h3>
	<table class="table">
		<tbody>
		<?php 


			$str=sprintf("select song.name name,song.id as song_id 
				          from song where song.category=%s",$c_id);
			$res=mysql_query($str);
			while($row=mysql_fetch_array($res)){
				//取出歌曲的名字和歌曲的id
				$song_name=$row["name"];
				$song_id=$row["song_id"];

				$str=sprintf("
				<button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>play</button>
					",$row["song_id"],$_SESSION['user'],$song_name,$song_name);
				
				$player=sprintf($_SESSION['player'],$song_name,$song_name,$song_name);
				echo "<tr>";
				echo "<td>";
				echo "<h4>";
				echo $song_name;
				echo "</h4>";
				echo "</td>";

				//仅仅是为了对齐格式
				echo "<td>";
				echo "</td>";
				echo "<td>";
				echo "</td>";

				echo "<td>";
				echo "</td>";
				echo "<td>";
				echo "</td>";

				echo "<td>";


				echo $str;
				echo $player;

			  $song_list_code="";

		      $query=sprintf("select song_list.name lname, song_list.id lid 
		                            from song_list
		                            where song_list.user_name='%s'",$_SESSION['user']);
		      $res=mysql_query($query);
		      $song_list_code.= "<ul class='list-group'>";
		      while($row=mysql_fetch_array($res)){
		        $song_list_id=$row['lid'];
		        $str=sprintf("<li class='list-group-item'>
		                      <button class='add_to_list  btn btn-default' song_id=%s id=%s>%s</button>
		                      </li>
		          ",$song_id,$song_list_id,$row["lname"]);
		       $song_list_code.= $str;
		      }
		        $song_list_code.= "</ul>";


				$add_to_list=sprintf("
					<button type='button' song_id='%s' user_name='%s' class=' btn btn-default' data-toggle='modal' data-target='#%sa'>+</button>
					",$row["song_id"],$_SESSION['user'],$song_name,$song_name);
				$adder=sprintf('<div class="modal fade" id="%sa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">您想将 %s 这首歌加入哪个歌单？</h4>
				      </div>
				      <div class="modal-body">
				      %s
				      </div>
				    </div>
				  </div>
				</div>',$song_name,$song_name,$song_list_code);
				echo $add_to_list;
				echo $adder;
				echo "</td>";
				echo "</tr>";
			}

			 ?>
		</tbody>
	</table>
</div>
</div>