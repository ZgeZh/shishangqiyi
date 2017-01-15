<?php
	include 'base.php';

	$sql = "select * from leftNav where 1=1";
	$result = query($sql);

	echo $result;
?>
