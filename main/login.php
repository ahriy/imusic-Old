<!-- Button trigger modal -->
<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">登陆</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">请输入用户名和密码</h4>
      </div>
      <div class="modal-body">
			<form class="form-horizontal" method="POST" action="/imusic/">
			  <div class="form-group">
			    <label for="user" class="col-sm-2 control-label">用户名</label>
			    <div class="col-sm-10">
			      <input class="form-control" id="user" name="user">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="passwd" class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Password">
			    </div>
			  </div>
			  <div class="form-group">
			  		<div class="row clearfix">
						<div class="col-md-4 column">
						    <div class="col-sm-offset-2 col-sm-10">
						    	<a href="/imusic/view/register.php">注册</a>
			    			</div>
						</div>
						<div class="col-md-4 column">
						</div>
						<div class="col-md-4 column">
						    <div class="col-sm-offset-2 col-sm-10">
			     			<button type="submit" class="btn btn-default">登陆</button>
			    			</div>
						</div>
					</div>

			  </div>
			</form>
      </div>
    </div>
  </div>
</div>