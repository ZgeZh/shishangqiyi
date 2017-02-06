<?php
	include 'base.php';
	include 'format.php';

	$user = $_POST["user"];
	$goodsid = $_POST["goodsid"];
	$color = $_POST["color"];
	$size = $_POST["size"];

	$delGoods = format("delete from cart where user = '{0}' and goodsid = '{1}' and color = '{2}' and size = '{3}'", $user, $goodsid, $color, $size);
	$result = excute($delGoods);
	
	if (count($result) > 0) {
		echo '{"state":"true","message":"删除成功"}';
	} else {
		echo '{"state":"true","message":"删除失败"}';
	}
?>
