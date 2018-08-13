<?php
session_start();




$Fname = $_SESSION["Fname"];
$Lname = $_SESSION["Lname"];
$id = $_SESSION["id"];
$school = $_SESSION["faculty"];
$username = $_SESSION["username"];
$email = $_SESSION["email"];




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Dashboard | Set up your Profile</title>
    <link rel="stylesheet" href="../dashboard.css">
</head>
<body>

<header>
    
    <img src="../img/opara.png" alt="">
    <div id="detail"><?php echo"@$username" ?></div>
    <!-- <div id="detail"><?php echo $id ?></div> -->
    <!-- <div id="detail"><?php echo $school ?></div> -->

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

        <button id="edit_button">
            Edit profile
        </button>
    </div>
    

    
</header>
    
<section id="submit_assignment">
    <form id="assignment_form" action="upload.php" method="post" enctype="multipart/form-data">
        <input type="file" name="file" id="file">
        <label for="file" id="file_icon" name="filelabel"> + </label>
        <!-- <input  id="assignment_input" type="text" placeholder="submit assignment"> -->
        <input type="submit" value="submit" name="submit">
    </form>


    <article id="post">

    </article>
</section>

<aside>
    <h3>Assignmnet Dashboard</h3>
    <?php 
        include 'upload.php';

    ?>
<p>
   
</p>


    <a href="logout.php">
        <button id="logout">logout</button>
    </a>
</aside>


<script src="../js/dashboard.js">

</script>
</body>
</html>