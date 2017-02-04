<?php
	include 'base.php';

	$indexId = $_POST["indexId"];
	$sql = "select * from goodsinfo where indexId=".$indexId;
	$result = query($sql);
	$result = json_encode($result,JSON_UNESCAPED_UNICODE);
	echo $result;
?>
