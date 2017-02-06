<?php
	include 'base.php';
	include 'format.php';

	//判断当前username 是否已经被注册(已存在在数据库中)
	$getMyCart = format("select * from cart where user = '{0}'", $_POST["user"]);
	$result = query($getMyCart);

	if (count($result) < 1) {
		echo '{"state": "false", "message": "购物车是空的，赶紧买买买！"}';
	} else {
		$result = json_encode($result,JSON_UNESCAPED_UNICODE);
		echo '{"state" :"ture", "data": '.$result.'}';
	}
	
?>