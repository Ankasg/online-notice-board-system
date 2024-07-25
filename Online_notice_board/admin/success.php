<?php
  // Connect to the database
  $servername = "localhost";
  $username = "root";
  $password = "root@123";
  $dbname = "notice";

  $conn = new mysqli($servername, $username, $password, $dbname);
  
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }

  // Get the notice from the form
  $notice = $_POST["notif"];

  // Insert the notice into the database using a prepared statement
  $stmt = $conn->prepare("INSERT INTO notif (notif) VALUES (?)");
  $stmt->bind_param("s", $notice);

  if ($stmt->execute()) {
      echo "<h1><font color='green'><center>Notice added successfully</center></font></h1>";
  } else {
      echo "Error: " . $stmt->error;
  }

  $stmt->close();
  $conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Updated</title>
</head>
<body align='center'>
    <form action="index.php">
        <button type="submit">Back to Home</button>
    </form>
    <form action="bell.php">
        <button type="submit">Back to Add</button>
    </form>
</body>
</html>
