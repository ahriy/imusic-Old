<?php 


$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  } 
// mysql_query("use mydb");
// $res=mysql_query("select id from user where name='ahriy' and passwd='asdf911'");
// if ($res){
//   $row=mysql_fetch_array($res);
//  mysql_free_result($res);
//  if ($row) echo "查询到的第一条数据:".$row[0];
//  else echo "没有满足条件的数据。";
// } else echo "执行 $sql 错误:".mysql_error();

?>