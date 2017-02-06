<?php
	include 'base.php';
	include 'format.php';
	//判断当前物品 是否已存在数据库中  数量不同算是同一个物品
	$goodsCheck = format("select * from cart where user = '{0}' and goodsid = '{1}' and color = '{2}' and size = '{3}' and price = '{4}'", $_POST["user"], $_POST["goodsId"], $_POST["color"], $_POST["size"], $_POST["price"]);
	$result = query($goodsCheck);
	if (count($result) < 1) {//不存在
		$sql = format("insert into cart(user, goodsid, img, icon, english, color, size, price, amount) values('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", $_POST["user"], $_POST["goodsId"], $_POST["img"], $_POST["icon"], $_POST["english"], $_POST["color"], $_POST["size"], $_POST["price"], $_POST["amount"]);
		$excute = excute($sql);
		if ($excute) {
			echo '{"state": "true", "message": "插入数据成功"}';
		}else{
			echo '{"state": "false", "message": "意外错误发生，请重新添加！"}';
		}
	}else{
		echo '{"state": "false", "message": "同样商品无需重复添加到购物车！"}';
	}
?>