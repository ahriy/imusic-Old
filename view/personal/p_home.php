	<div class="row clearfix">
		<div class="col-md-4 column">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a id="button1" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="option1">
          收藏的歌手
        </a>
      </h4>
    </div>
  </div>  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a id="create_list" href="/imusic/view/personal/create_list/l_index.php">
          创建歌单
        </a>
      </h4>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          创建的歌单
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body" id="song_list">
        <?php 
          $con = mysql_connect("localhost","root","");
            if (!$con){
            die('Could not connect: ' . mysql_error());
            } 
          mysql_query("use mydb");
          $str=sprintf("select song_list.name lname, song_list.id lid 
                                from song_list
                                where song_list.user_name='%s'",$_SESSION['user']);
          $res=mysql_query($str);
          echo "<ul class='list-group'>";
          while($row=mysql_fetch_array($res)){
            $song_list_id=$row['lid'];
            $str=sprintf("<li class='list-group-item'>
                          <button class='slist  btn btn-default' id=%s>%s</button>
                          </li>
              ",$song_list_id,$row["lname"]);
            echo $str;
          }
            echo "</ul>";
         ?>
      </div>
    </div>
  </div>
    <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingfour">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
          收藏的歌单
        </a>
      </h4>
    </div>
    <div id="collapsefour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfour">
      <div class="panel-body">
       obably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a id="button1" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="option1">
          我的听歌记录
        </a>
      </h4>
    </div>
  </div>  




</div>
  </div>

		<div class="col-md-8 column" id="options">
			
		</div>



		
	</div>
