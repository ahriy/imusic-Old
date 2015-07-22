<!-- 因为是动态加载的，所以还需要把触发器加上 -->
   <script>
  $(document).ready(function(){
	   $(".slist").click(function(){
	    $("#sl").load("/imusic/view/ffriends/show_list_song.php?list="+$(this).attr("id"));
	  });
	   $(".add_list").click(function(){
	   	alert("成功加入收藏！");
	    $("#al").load("/imusic/view/ffriends/add_list.php?list_id="+$(this).attr("list_id"));
	  });
  });
  </script>
  <img src="">
        <?php 
        $user=$_GET["user_name"];
        echo "<div class='row clearfix'>";
		echo "<div class='col-md-6 column'>";
        $head=sprintf("
        	<h3>
        	<img src='/imusic/img/arrow.jpg' width='50'>用户<strong>%s</strong>的歌单为
        	</h3>
        	",$user);
         echo $head;
          $con = mysql_connect("localhost","root","");
            if (!$con){
            die('Could not connect: ' . mysql_error());
            } 
          mysql_query("use mydb");
          $str=sprintf("select song_list.name lname, song_list.id lid 
                                from song_list
                                where song_list.user_name='%s'",$user);
          $res=mysql_query($str);
          echo "<table class='table'>";
          while($row=mysql_fetch_array($res)){
            $song_list_id=$row['lid'];
            $str=sprintf("<tr>
            	<td>
                          <button class='slist  btn btn-default'  id=%s name='%s'>%s</button>
                 </td>  
                 <td>       
						<button type='button' list_id='%s' class='add_list btn btn-default' >加入收藏</button>
				 </td>		  
                          </tr>
              ",$song_list_id,$row["lname"],$row["lname"],$song_list_id);
            echo $str;
          }
            echo "</table>";

          echo "</div>";
          echo "<div class='col-md-6 column' id='sl'>";
          echo "</div>";
          echo "<div id='al'>";
          echo "</div>";
          echo "</div>";
         ?>