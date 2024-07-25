<?php
include('connection.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title >Delete Notice</title>
    <style>
        form{
            padding:200px;
        }
    </style>
</head>
<body>
    <a href="index.php"><font color='blue'>Back to home</font></a><center>
    <form action="bell_delete.php" method="post">
        <h1>Delete a Notice</h1>
        <input type="text" name='del' placeholder='Enter the id of notice' required><br><br>
        <button type="submit"><font color='red'>Delete</font></button>
        <button type="reset"><font color='blue'>Reset</font></button></center>
    </form>
</body>
</html>
