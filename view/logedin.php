<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    <?php echo $_SESSION['user']; ?> <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">我的主页</a></li>
    <li><a href="#">我的个人资料</a></li>
    <li><a href="#">我的个人设置</a></li>
    <li class="divider"></li>
    <li><a href="/imusic/view/logout.php">登出</a></li>
  </ul>
</div>
