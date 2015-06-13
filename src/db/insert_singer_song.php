<?php
mysql_query("use imusic");

$f=fopen("parser/cn_male/cn_male_1","r");
while(!feof($f)){
	$line=fgets($f);
	if($line=="albums") echo "jjjsdfsdf";
	echo $line;
}
fclose($f);
 ?>