	<script>
	$(document).ready(function(){

	   $(".add_to_list").click(function(){
	   	alert("成功加入歌单");
	    $("#add_song").load("/imusic/view/personal/dynamic/add_to_list.php?song_list="+$(this).attr("id")+"&song_id="+$(this).attr("song_id"));
	  });

	});
	</script>
	<div id="add_song"></div>
<table class="table">
<?php $list=$_GET['list'];

?>
       
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          session_start(); 
          mysql_query("use mydb");
          //首先找到歌单名
          $str=sprintf("select name from song_list where id=%s",$list);
          $res=mysql_query($str);
          $row=mysql_fetch_array($res);
          $name=$row["name"];
          $head=sprintf("
        	<h3>
        	<img src='/imusic/img/arrow.jpg' width='50'>歌单<strong>%s</strong>中的歌曲为
        	</h3>
        	",$name);
           echo $head;
          //将歌单中的每首歌都列举出来
          $str=sprintf("select song.name name,song.id song_id
                        from song_list_has_song, song 
                        where song_list_has_song.song_list_id=%s and song.id=song_list_has_song.song_id",$list);
          $res=mysql_query($str);
          while($row=mysql_fetch_array($res)){
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

            echo "<td>";
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

            echo "</td>";
            echo "</tr>";
            						
          }
           ?>
        </tbody>
</table>