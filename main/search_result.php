<?php require "head.php";

 ?>
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		<h3>
		搜索结果如下所示
		<h3>
			 <table class="table">
<?php 
$key_words=$_POST["ssearch"];
?>
       
        <tbody>
          <?php
          $con = mysql_connect("localhost","root","");
          if (!$con){
            die('Could not connect: ' . mysql_error());
          } 
          mysql_query("use mydb");
          $str="select song.name name,song.id song_id
                        from song 
                        where song.name like '%".$key_words."%'";
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


            echo "</td>";
            echo "</tr>";
          }
           ?>
        </tbody>
</table>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>

<?php require "tail.php" ?>