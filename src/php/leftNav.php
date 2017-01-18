<?php
	include 'base.php';

	$sql = "select * from leftnav where 1=1";
	$result = query($sql);

	echo $result;
?>
