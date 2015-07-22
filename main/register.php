<?php
	// require 'head.php';

 ?>
<!DOCTYPE html>
<html>
<head>
   <title>imusic 您的私人音乐收藏夹</title>
   <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
   <meta charset="utf-8">
</head>
<body>
</br>
</br>
</br>
</br>
</br>
</br>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
			<form class="form-horizontal" role="form" method="POST" action="/imusic/main/register_result.php">
				<div class="form-group">
					 <label for="rname" class="col-sm-3 control-label">用户名*</label>
					<div class="col-sm-8">
						<input class="form-control" id="rname" name="rname"/>
					</div>
				</div>

				<div class="form-group">
					 <label for="rpasswd" class="col-sm-3 control-label">密码*</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="rpasswd" name="rpasswd"/>
					</div>
				</div>

				<div class="form-group">
					 <label for="crpasswd" class="col-sm-3 control-label">确认密码*</label>
					<div class="col-sm-8">
						<input type="password" class="form-control" id="crpasswd" name="crpasswd"/>
					</div>
				</div>	

				<div class="form-group">
					 <label for="gender" class="col-sm-3 control-label">性别</label>
					<div class="col-sm-8">
						<input class="form-control" id="gender" name="gender"/>
					</div>
				</div>	

				<div class="form-group">
					 <label for="phone" class="col-sm-3 control-label">手机</label>
					<div class="col-sm-8">
						<input class="form-control" id="phone" name="phone"/>
					</div>
				</div>

				<div class="form-group">
					 <label for="mail" class="col-sm-3 control-label">邮箱</label>
					<div class="col-sm-8">
						<input  class="form-control" id="mail" name="mail"/>
					</div>
				</div>

				<div class="form-group">
					 <label for="what_up" class="col-sm-3 control-label">个性签名</label>
					<div class="col-sm-8">
						<input  class="form-control" id="what_up" name="what_up"/>
					</div>
				</div>		

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">提交</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
	</div>
</body>