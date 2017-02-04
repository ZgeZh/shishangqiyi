<?php
	session_start();
	
	if(isset($_SESSION['login_user'])){
		unset($_SESSION['login_user']);
		echo '{"state": "true","message": "已清除SESSION"}';
	}
?>