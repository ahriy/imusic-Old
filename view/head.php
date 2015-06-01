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
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-2 column">
				<h1>
					爱音乐
				</h1>
			</div>
			<div class="col-md-6 column">
			</div>
			<div class="col-md-4 column">
				<div class="row clearfix">
					<div class="col-md-11 column">
					</div>
					<div class="col-md-1 column">
					<br/>
					<?php
					session_start();
					if(isset($_POST['user']) and isset($_POST['passwd'])){
						$_SESSION['user']=$_POST['user'];
						$_SESSION['passwd']=$_POST['passwd'];
						require "logedin.php";
					}
					else{
						require "login.php";
					}
                    ?>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/imusic/">Home</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							 <a href="#">发现音乐</a>
						</li>
						<li>
							 <a href="/imusic/view/personal/p_index.php">我的音乐</a>
						</li>
						<li>
							 <a href="#">我的朋友</a>
						</li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>