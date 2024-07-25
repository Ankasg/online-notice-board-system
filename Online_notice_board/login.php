<?php
require('connection.php');

if(isset($_POST['save'])) {
    $e = $_POST['e'];
    $p = $_POST['p'];

    if(empty($e) || empty($p)) {
        $err = "<font color='red'>Fill in all the fields</font>";
    } else {
        // Prepare and execute the query
        $sql = "SELECT * FROM user WHERE email=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "s", $e);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if(mysqli_num_rows($result) > 0) {
            // User found, verify password
            $row = mysqli_fetch_assoc($result);
            if(password_verify($p, $row['pass'])) {
                // Password matches, start session and redirect
                session_start();
                $_SESSION['user'] = $e;
                header('location: user');
                exit();
            } else {
                // Incorrect password
                $err = "<font color='red'>Invalid password</font>";
            }
        } else {
            // User not found
            $err = "<font color='red'>Invalid login details</font>";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <style>
     body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    color: black;
}

       
        .error-message {
            color: red;
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container" style="font-family: Arial, sans-serif; background-color: #f2f2f2; color: black;">
    <h2>LOGIN FORM</h2>
    <form method="post">
        <div class="form-group">
            <label>Email ID:</label>
            <input type="email" name="e" class="form-control" required/>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="p" class="form-control" required/>
        </div>
        <div class="form-group">
            <input type="submit" value="Login" name="save" class="btn btn-success"/>
        </div>
        <div class="form-group">
            <?php echo isset($err) ? '<div class="error-message">'.$err.'</div>' : ''; ?>
        </div>
    </form>
</div>

</body>
</html>
