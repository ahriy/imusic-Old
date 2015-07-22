   <!-- 因为是动态加载的，所以还需要把触发器加上 -->
   <script>
  $(document).ready(function(){
     $(".delete_from_list").click(function(){
      $("#delete_song").load("/imusic/view/personal/dynamic/delete_from_list.php?song_list="+$(this).attr("id")+"&song_id="+$(this).attr("song_id"));
      window.location.reload();
    });
      $(".add_comment").click(function(){
        alert("评论成功!");
        $("#add_comment").load("/imusic/view/personal/dynamic/create_comment.php?user_name="+$(this).attr("user_name")+"&song_id="+$(this).attr("song_id")+"&time="+$(this).attr("time")+"&content="+document.getElementById('comment_text'+$(this).attr("song_id")).value);
    });
  });
  </script>
  <div id="delete_song"></div>
  <div id="add_comment"></div>
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

            //为了给歌曲增加评论
            date_default_timezone_set("Asia/Shanghai");
            $time=date('Y-m-d H:i:s');
            $comment=sprintf("
                <button type='button' song_id='%s' user_name='%s' class=' btn btn-default' data-toggle='modal' data-target='#%saa'>comment</button>
                ",$row["song_id"],$_SESSION['user'],$song_name,$song_name);
            $comment_win=sprintf('<div class="modal fade" id="%saa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="myModalLabel">您将评论 %s 这首歌</h4>
                    </div>
                    <div class="modal-body">
                    <input id="comment_text%s"></input>
                    <button type="button" song_id="%s" user_name="%s" time="%s" class="add_comment btn btn-default">提交</button>
                    </div>
                  </div>
                </div>
              </div>',$song_name,$song_name,$song_id,$song_id,$_SESSION["user"],urlencode($time));
            echo $comment;
            echo $comment_win;
            echo "</td>";
            echo "</tr>";
          }
           ?>
        </tbody>
</table>
