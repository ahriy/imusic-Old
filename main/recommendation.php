			
			<h2>
				热门推荐
			</h2>
			<?php 
			//热门推荐的算法，选出在听歌记录里面被听的最多的歌曲的歌手
		  $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          }  
          mysql_query("use mydb");
          $query=sprintf("select count(record.song_id),singer_id,singer.name as name,note 
          				  from record,song,singer
          				  where song.id=record.song_id and song.singer_id=singer.id
          				  group by song.singer_id
          				  limit 3
          	");
          $res=mysql_query($query);

          //输出row头
          echo '<div class="row">';
          while($row=mysql_fetch_array($res)){
          	$singer_id=$row["singer_id"];
          	$singer_name=$row["name"];
			$note=$row["note"];
			$str=sprintf('<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="img/singers/%s.jpg" width="300px" height="200px"/>
						<div class="caption">
							<h3>
								%s
							</h3>
							<p>
								%s
							</p>
							<p>
								 <a class="btn btn-primary" href="/imusic/main/music/singers/s_index.php?singer_id=%s">传送门</a>
							</p>
						</div>
					</div>
				</div>
				',$singer_id,$singer_name,$note,$singer_id);
			echo $str;
		  }	


		  //输出row尾
		  echo "</div>";
			 ?>