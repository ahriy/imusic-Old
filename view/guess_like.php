			<h2>
				猜你喜欢
			</h2>
			<?php 
				function entry($mode,$factor){
					$res=mysql_query($factor);
					if($mode==2){
						while($row=mysql_fetch_array($res)){
							$category=$row["category"];
							$cc=$row["cc"];
							$song=sprintf("select song.id as song_id,song.name as name,singer.name as singer_name,singer_id 
										   from song,singer
										   where song.category='%s' and singer.id=song.singer_id
										   order by rand()
										   limit 4
								",$category);
							$sres=mysql_query($song);
							while($srow=mysql_fetch_array($sres)){
							$song_name=$srow["name"];
							$song_id=$srow["song_id"];
							$singer_id=$srow["singer_id"];
							$singer_name=$srow["singer_name"];
							$str=sprintf("
							<button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>play</button>
								",$srow["song_id"],$_SESSION['user'],$song_name,$song_name);
							
							$player=sprintf($_SESSION['player'],$song_name,$song_name,$song_name);
							echo "<tr>";
							echo "<td>";
							echo "<h4>";
							echo $song_name;
							echo "</br>";
							$singer_code=sprintf("<small> <a href='/imusic/view/music/singers/s_index.php?singer_id=%s'>%s</a><small>",$singer_id,$singer_name); 
							echo $singer_code;
							echo "</h4>";
							echo "</td>";

							//仅仅是为了对齐格式
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
					      $rres=mysql_query($query);
					      $song_list_code.= "<ul class='list-group'>";
					      while($rrow=mysql_fetch_array($rres)){
					        $song_list_id=$rrow['lid'];
					        $str=sprintf("<li class='list-group-item'>
					                      <button class='add_to_list  btn btn-default' song_id=%s id=%s>%s</button>
					                      </li>
					          ",$song_id,$song_list_id,$rrow["lname"]);
					       $song_list_code.= $str;
					      }
					        $song_list_code.= "</ul>";


							$add_to_list=sprintf("
								<button type='button' song_id='%s' user_name='%s' class=' btn btn-default' data-toggle='modal' data-target='#%sa'>+</button>
								",$rrow["song_id"],$_SESSION['user'],$song_name,$song_name);
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
						}
					}
					if($mode==1){
						while($row=mysql_fetch_array($res)){
							$song_name=$row["name"];
							$song_id=$row["song_id"];
							$singer_id=$row["singer_id"];
							$singer_name=$row["singer_name"];
							$str=sprintf("
							<button type='button' song_id='%s' user_name='%s' class='insert_record btn btn-default' data-toggle='modal' data-target='#%s'>play</button>
								",$row["song_id"],$_SESSION['user'],$song_name,$song_name);
							
							$player=sprintf($_SESSION['player'],$song_name,$song_name,$song_name);
							echo "<tr>";
							echo "<td>";
							echo "<h4>";
							echo $song_name;
							echo "</br>";
							$singer_code=sprintf("<small> <a href='/imusic/view/music/singers/s_index.php?singer_id=%s'>%s</a><small>",$singer_id,$singer_name); 
							echo $singer_code;
							echo "</h4>";
							echo "</td>";

							//仅仅是为了对齐格式
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
					      $rres=mysql_query($query);
					      $song_list_code.= "<ul class='list-group'>";
					      while($rrow=mysql_fetch_array($rres)){
					        $song_list_id=$rrow['lid'];
					        $str=sprintf("<li class='list-group-item'>
					                      <button class='add_to_list  btn btn-default' song_id=%s id=%s>%s</button>
					                      </li>
					          ",$song_id,$song_list_id,$rrow["lname"]);
					       $song_list_code.= $str;
					      }
					        $song_list_code.= "</ul>";


							$add_to_list=sprintf("
								<button type='button' song_id='%s' user_name='%s' class=' btn btn-default' data-toggle='modal' data-target='#%sa'>+</button>
								",$rrow["song_id"],$_SESSION['user'],$song_name,$song_name);
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
					}

				}
					  $con = mysql_connect("localhost","root","");
			          if (!$con){
			            die('Could not connect: ' . mysql_error());
			          }  
			          mysql_query("use mydb");
			 ?>
			<div id="add_song"></div>

			<div class="container">
			<div class="row clearfix">
				<div class="col-md-4 column">
					<h3>根据您的歌单进行的推荐</h3>
					<table class="table">
					<tbody>
				<?php 


			        //$factor1指的是，首先看当前用户所有的歌单，把这些歌单中的歌曲挑出来，然后利用song_list反向
			        //查找哪些歌单包含这些歌，最后把这些歌单中的歌曲汇总出来，形成一个统计表，根据表里的count属性
			        //进行打分
					$factor1=sprintf("
						select song_id,count(*),song.name as name,singer.name as singer_name,singer_id 
						from singer,song_list_has_song,song 
						where singer.id=song.singer_id and song.id=song_list_has_song.song_id and song_list_id in
						( 
						select song_list_id from song_list_has_song where song_id in 
								
								(
									select song_id from song_list_has_song
								where song_list_id in
						         (select song_list.id as song_list_id 
								 from song_list
								 where song_list.user_name='%s')
								)	
					    )
						group by song_id
						order by count(*) desc
						limit 10",$_SESSION["user"]);
					entry(1,$factor1);
					 ?>
							</tbody>
						</table>
				</div>
				<div class="col-md-4 column">
					<h3>根据您的听歌历史进行的推荐</h3>
						<table class="table">
							<tbody>
								<?php 
								$factor2=sprintf("
									  select category,count(*) as cc
									  from record,song
									  where record.user_name='ahriy' and song.id=record.song_id
									  group by song.category
									  order by count(*)
									  limit 4
									",$_SESSION["user"]);
								entry(2,$factor2);
								 ?>
							</tbody>
						</table>
				</div>
				<div class="col-md-4 column">
					<h3>根据您的好友进行的推荐</h3>
						<table class="table">
							<tbody>
								<?php 
								$factor2=sprintf(" 						
													select song_id,count(*),song.name as name,singer.name as singer_name,singer_id 
													from singer,song_list_has_song,song
									               where singer.id=song.singer_id and song.id=song_list_has_song.song_id and song_list_has_song.song_list_id in
												  (
												  	select song_list.id as song_list_id
									                from song_list,user
									                where song_list.user_name=user.name and user.id in
										              (select follower_id 
													  from follow,user
													  where user.name='%s' and user.id=follow.user_id)
								                  )
												  group by song_id
												  order by count(*) desc
												  limit 10
									",$_SESSION["user"]);
								entry(1,$factor2);
								 ?>
							</tbody>
						</table>
				</div>
			</div>
			</div>