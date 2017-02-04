<?php
	// echo '<pre>';
	// print_r($_POST);
	// echo '</pre>';

	// echo '<pre>';
	// print_r($_FILES);
	// echo '</pre>';

	// $q = $_POST["data"];
	// echo $q;
	include "fileupload.php";

    $array = '';

    if(isset($_FILES)){
        $uploadFileObject = new FileUpload();
        // $uploadFileObject->path = "upload";//文件存放目录
        $uploadFileObject->allowtype = array('jpg','gif','png','jpeg', 'txt');//可以不设置，类中有默认类型
        // $uploadFileObject->maxsize = "100000000";//可以不设置，类中有默认
        $uploadFileObject->upload("file");
        $returnStatus = $uploadFileObject->getErrorMsg();
        if(empty($returnStatus)){//returnStatus错误信息数据
            //成功
            $fileName = $uploadFileObject->getFileName();
            $array = array(
                "status"=>true,
                "fileName"=>$fileName,
            );
            $array = json_encode($array);
        } else {
        	$array = array(
                "status"=> false,
                "fileName"=> "",
                "message" => $returnStatus
            );
            $array = json_encode($array, JSON_UNESCAPED_UNICODE);
        }
    }
    echo $array;
	 
?>