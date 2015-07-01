   <!-- 因为是动态加载的，所以还需要把触发器加上 -->
   <script>
  $(document).ready(function(){
     $(".delete_from_list").click(function(){
      $("#delete_song").load("/imusic/view/personal/dynamic/delete_from_list.php?song_list="+$(this).attr("id")+"&song_id="+$(this).attr("song_id"));
      window.location.reload();
    });
  });
  </script>
  <div id="delete_song"></div>

<table class="table">
<?php $list=$_GET['list'];
?>
       
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          mysql_query("use mydb");
          session_start(); 
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

            //为了从歌单删去歌曲
            $delete_from_list=sprintf("
              <button type='button' song_id='%s' id='%s' class='delete_from_list btn btn-default'>-</button>
              ",$row["song_id"],$list);
            echo $delete_from_list;
            echo "</td>";
            echo "</tr>";
          }
           ?>
        </tbody>
</table>