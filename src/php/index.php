<?php
	session_start();

	if (isset($_SESSION["login_user"])) {
		$sessionUser = $_SESSION["login_user"];
		echo '{"state": "true","username": "'.$sessionUser.'"}';
	} else {
		echo '{"state": "false","message": "未登录！"}';
	}
?>