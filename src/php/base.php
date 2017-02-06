<?php
	//初始化连接对象方法
	function connect(){
		$servername = "localhost";
		$username = "root";
		$password = "root";
		$dbname = "shishangqiyi";

		$con = mysqli_connect($servername,$username,$password,$dbname);

		//获取连接对象的错误信息
		if (mysqli_connect_error($con)) {
			echo "连接 MySQL 失败：".mysqli_connect_error();
			return null;
		}
		return $con;
	};

	//执行查询数据方法
	function query($sql){
		$con = connect();
		$result = mysqli_query($con,$sql);//返回结果集
		$jsonData = array();
		// print_r($result);
		if ($result) {
			while($obj = mysqli_fetch_object($result)){//将结果级
				// print_r($obj);
				$jsonData[] = $obj;
			}

			// 将经过处理后的数组转换成字符串,等同于JSON.stringify()
			// $jsonData = json_encode($jsonData,JSON_UNESCAPED_UNICODE);

			mysqli_free_result($result);//释放结果集
		}
		mysqli_close($con);//关闭连接
		// print_r($jsonData);
		return $jsonData;
	};

	//执行修改数据的方法
	function excute($sql){
		$con = connect();
		$result = mysqli_query($con,$sql);//返回布尔值 true||false 
		mysqli_close($con);
		return $result;
	};


	//insert into, update, delete 返回一个布尔值 true||false 不用释放
?>