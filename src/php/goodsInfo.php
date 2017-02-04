<?php
	include 'base.php';

	$sql = "select * from goodsinfo where 1=1";
	$result = query($sql);

	echo $result;
?>
