<?php
	include 'base.php';

	$sql = "select * from leftnav where 1=1";
	$result = query($sql);
	$result = json_encode($result,JSON_UNESCAPED_UNICODE);
	echo $result;
?>
