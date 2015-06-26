<table class="table">
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          mysql_query("use mydb");
          session_start(); 
          $str=sprintf("select singer.name as name, singer.id id from user,user_like_singer,singer
                        where user.name='%s' and user.id=user_like_singer.user_id and singer.id=user_like_singer.singer_id",$_SESSION['user']);
          $res=mysql_query($str);
          while($row=mysql_fetch_array($res)){
            $str=sprintf('<div class="progress"> <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%%;">
    <span > Complete</span>
  </div></div>');
            echo $str;
          }
           ?>
        </tbody>
</table>