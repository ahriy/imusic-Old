<table class="table">
<?php $list=$_GET['list'];
echo $list;
?>
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          mysql_query("use mydb");
          session_start(); 
          $str=sprintf("select song.name name 
                        from song_list_has_song, song 
                        where song_list_has_song.song_list_id=%s and song.id=song_list_has_song.song_id",$list);
          $res=mysql_query($str);
          while($row=mysql_fetch_array($res)){
            echo "<tr>
                <td>
                  ".$row["name"]."
                </td>
               </tr>";
          }
           ?>
        </tbody>
</table>