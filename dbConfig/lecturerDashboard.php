<?php
session_start();




$Fname = $_SESSION["Fname"];
$Lname = $_SESSION["Lname"];
$id = $_SESSION["id"];
$school = $_SESSION["faculty"];
$username = $_SESSION["username"];
$email = $_SESSION["email"];
$type = $_SESSION["type"];

// include('upload.php');




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Dashboard | Set up your Profile</title>
    <link rel="stylesheet" href="../css/dashboard.css">
</head>
<body>

<header>
    
    <img src="../img/futo.png" alt="">
    <div id="detail"><?php echo"@$username" ?></div>
    <a href="#">
    <button id="edit_button">
        change photo
    </button>
    </a>
    <div id="user_details">
        <h2> Details</h2>
        <table>
            <tr>
                <td class="detail_item">Name</td>
                <td class="detail_input"><?php echo "$Fname $Lname"?></td>
            </tr>
            <tr>
                <td class="detail_item">Faculty</td>
                <td class="detail_input"><?php echo $school ?></td>
            </tr>
            <tr>
                <td class="detail_item">Email</td>
                <td class="detail_input"><?php echo $email ?></td>
            </tr>
            <tr>
                <td class="detail_item">id</td>
                <td class="detail_input"><?php echo $id ?></td>
            </tr>
        </table>

        <a href="editProfile.php">
        <button id="edit_button">
            edit profile
        </button>
        </a>

        <a href="lecturer_coursereg.php">
            <button id="edit_button">
                Register courses
            </button>
        </a>
    </div>
    

    
</header>
    
<section id="submit_assignment">

    <div class="assignment_form">
        <!-- <button class="file" id="upload_button">+</button> -->
        <form id="assignment_form" class="assignment_form">
            <input  id="lecturer_comment" type="text" placeholder="Enter message here...">
            <input type="submit" value="submit" name="text_submit">
        </form>
    </div>


    <article id="post">
    </article>

<!-- <div id="upload_div"> -->
    <!-- <button id="hide_button">*</button> -->
    <!-- <form id="upload_form" action="upload.php" method="post" enctype="multipart/form-data"> -->
        <!-- <input type="file" name="file" id="file"> -->
        <!-- <label for="file" id="file_icon" name="filelabel"> + </label> -->
        <!-- <input type="submit" value="submit" name="submit" id="submit"> -->
        <!-- <div class="bar" id="bar"> -->
            <!-- <span class="bar-fill" id="pb"> -->
            <!-- </span> -->
        <!-- </div> -->
    <!-- </form> -->
<!-- </div> -->
    

</section>

<aside>
    
    <div id="registered_students">
        <h2 id="Reg_student">Registered Students</h2>
    <div id="sub">
    <?php

    require 'db.php';
    $sql = " select studentName from coursereg ";
    $prep = $conn ->prepare($sql);
    $prep->execute();

    $result = $prep ->fetchAll(PDO::FETCH_OBJ);
    $ib = '';
    foreach($result as $row){
        $ib .= '<div class="oubx">' 
        . '<button id="student_name" class="student_button">' . $row->studentName . '</button>'
        . '</div>';
    }

    echo ( $ib );
    ?>
    </div>

  <h2 id="Sub_assignment">Submitted Assignment</h2>

    <div id="sub">
    <?php

    // require 'db.php';
    $sql = " select * from uploads ";
    $prep = $conn ->prepare($sql);
    $prep->execute();

    $result = $prep ->fetchAll(PDO::FETCH_OBJ);
    $ib = '';
    foreach($result as $row){
        $ib .= '<div class="oubx">' 
        . '<a href="'.$row->file_path.'" id="student_name" target="blank">' . $row->file_name . '</a>'
        . '</div>';
    }

    echo ( $ib );
    ?>

    </div>

    </div>


    <a href="logout.php">
        <button id="logout">logout</button>
    </a>
</aside>


<script src="../js/dashboard.js"></script>
<script>
    document.getElementById('submit').addEventListener("click", (e) => {
    e.preventDefault();

    // console.log("click");

var files = document.getElementById("file");
var progressBar = document.getElementById("pb");
var progressText = document.getElementById("pt");
var bar = document.getElementById("bar");
app.uploader({
    files,
    bar,
    progressBar,
    progressText,
    processor: 'upload.php',
    
    finished(data){
        console.log(data);
    },

    error(){
        Console.log("not working");
    }
});
});

</script>
</body>
</html>