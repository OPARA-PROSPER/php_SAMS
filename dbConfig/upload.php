<?php

if(isset($_POST["submit"])){

    // $img = $_POST["img"]

    $file = $_FILES["file"];
    // This lines of codes gets the details of the file been uploaded
    $fileName = $file['name'];
    $fileType = $file['type'];
    $fileTempLocation = $file['tmp_name'];
    $uploadStatus = $file['error'];
    $fileSize = $file['size'];

    $fileNameExpload = explode('.', $fileName);
    $fileExt = strtolower(end($fileNameExpload));
    $supportedFileFormat = array('jpg', 'jpeg', 'png', 'pdf', 'txt', 'docx', 'pptx');

    if( in_array($fileExt, $supportedFileFormat) ){
        if($uploadStatus === 0){
            if( $fileSize <= 10000000 ){
                $newFileName = uniqid('', true).".".$fileExt;
                $uploadLocation = "uploads/".$newFileName;

                if(move_uploaded_file($fileTempLocation, $uploadLocation)){
                    echo "Your file has been successfully uploaded";
                    exit();
                    require 'db.php';
                    $sql = "INSERT INTO `uploads`(`id`, `file_name`, `file_type`, `file_size`, `file_path`, `date`) VALUES (NULL, '$fileName', '$fileType', '$fileSize', '$uploadLocation', CURRENT_TIMESTAMP)";
                    $prep = $conn->prepare($sql);
                    $prep->execute();
                }
            }else{
                echo "The file is too large";
                exit();
            }
        }else{
            echo "There was an error uploading your file to the database";
        }
    }else{
        echo "The file you tried uploading is not supported";
    }
}

?>