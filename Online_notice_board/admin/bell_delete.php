<?php
include('connection.php');
$del = $_POST["del"];
$sql1="SELECT ID FROM NOTIF;";
// echo "$sql1";
   if($del!=$sql1){
       $sql = "DELETE FROM `notif` WHERE `notif`.`id` = '$del';";
       if ($conn->query($sql) == TRUE) {
           echo "<h1><center><font color='green'>Notice deleted successfully</font><center></h1>";
       } 
       else {
           echo "Error: " . $sql . "<br>" . $conn->error;
       }
   }
   else{
       echo "Your entry is wrong... <br> check it once";
   }
// $sql="DELETE * FROM NOTIF WHERE notif.ID='$del';";


$conn->close();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Notice</title>
</head>
<body>
    <center>
        <a href="bell_delete1.php">BACK</a>
    </center>
</body>
</html>