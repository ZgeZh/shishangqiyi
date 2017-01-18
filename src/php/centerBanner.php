<?php
	include 'base.php';

	$sql = "select * from centerbanner where 1=1";
	$result = query($sql);

	echo $result;
?>
