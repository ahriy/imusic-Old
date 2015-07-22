			<form class="form-horizontal" role="form" method="POST" action="/imusic/main/personal/create_list/create_list_result.php">
				<div class="form-group">
					 <label for="lname" class="col-sm-3 control-label">歌单名</label>
					<div class="col-sm-8">
						<input class="form-control" id="lname" name="lname"/>
					</div>
				</div>

				<div class="form-group">
					 <label for="lnote" class="col-sm-3 control-label">歌单说明</label>
					<div class="col-sm-8">
						<input t class="form-control" id="lnote" name="lnote"/>
					</div>
				</div>	

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button id="create_list_result" type="submit" class="btn btn-default">提交</button>
					</div>
				</div>
			</form>