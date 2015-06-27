<table class="table">
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          mysql_query("use mydb");
          session_start(); 
          $str=sprintf("select count(*) as frequent,song.name as name,record.time as time 
                        from record,song
                        where user_name='%s' and song_id=song.id
                        group by song_id
                        order by frequent desc",$_SESSION['user']);
          $res=mysql_query($str);
          while($row=mysql_fetch_array($res)){
            $str=sprintf('<div class="progress"> <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: %s%%;">
    
  </div>%s 这首歌被您听了 %s 次
  </div>',$row['frequent'],$row["name"],$row['frequent']);
            echo $str;
          }
           ?>
        </tbody>
</table>