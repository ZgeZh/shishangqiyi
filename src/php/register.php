<?php
	include 'base.php';
	include 'format.php';

	//判断当前username 是否已经被注册(已存在在数据库中)
	$usernameCheck = format("select * from userinformation where username = '{0}'", $_POST["username"]);
	$result = query($usernameCheck);

	if (count($result) < 1) {//不存在
		$sql = format("insert into userinformation(username, password, telphone) values('{0}', '{1}', '{2}')", $_POST["username"], $_POST["password"], $_POST["telphone"]);
		$excute = excute($sql);

		if ($excute) {
			echo '{"state": "true"}';
		}else{
			echo '{"state": "false", "message": "插入数据失败"}';
		}
	}else{
		echo '{"state": "false", "message": "该用户名已被注册"}';
	}
?>