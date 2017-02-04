<?php
	include "base.php";
	include "format.php";

	//判断用户名和密码是否存在
	$sql = format("select * from userinformation where username='{0}' and password='{1}'", $_POST["username"], $_POST["password"]);
	$result = query($sql);

	if (count($result) < 1) {
		echo '{"state": "false", "message": "用户名或者密码不正确！"}';
	} else {
		echo '{"state": "true", "message": "登录成功！自动跳转到主页面"}';
		
		session_start();
		$_SESSION["login_user"] = $result[0]->username;
	}
?>