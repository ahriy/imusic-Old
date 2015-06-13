<?php
require "../head.php";
//connect to the database
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  } 
mysql_query("use mydb");
$str=sprintf("select * from user where name='%s'",$_SESSION['user']);
$res=mysql_query($str);
$row=mysql_fetch_array($res);
?>

<div class="row clearfix">

		<div class="col-md-4 column">
			<table class="table">
				<tbody>
					<tr>
						<td>
							昵称
						</td>
						<td>
							<?php echo $row['name']; ?>
						</td>
					</tr>
					<tr class="success">
						<td>
							性别
						</td>
						<td>
							<?php echo $row['gender']; ?>
						</td>
					</tr>
					<tr class="error">
						<td>
							手机
						</td>
						<td>
							<?php echo $row['phone']; ?>
						</td>
					</tr>
					<tr class="warning">
						<td>
							邮箱
						</td>
						<td>
							<?php echo $row['mail']; ?>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
<?php 
require '../tail.php';
 ?>