<?php
require('connection.php');

if(isset($_POST['save'])) {
    // Extract form data
    $n = $_POST['n'];
    $e = $_POST['e'];
    $p = $_POST['p'];
    $mob = $_POST['mob'];
    $gen = $_POST['gen'];
    $yy = $_POST['yy'];
    $mm = $_POST['mm'];
    $dd = $_POST['dd'];
    $hob = isset($_POST['hob']) ? $_POST['hob'] : array();

    // Check if the user already exists using prepared statement
    $sql = "SELECT * FROM user WHERE email=?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $e);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if(mysqli_num_rows($result) > 0) {
        $err = "<font color='red'>This user already exists</font>";
    } else {
        // Date of birth
        $dob = $yy . "-" . $mm . "-" . $dd;

        // Hobbies
        $hobbies = implode(",", $hob);

        // Image handling
        $imageName = $_FILES['img']['name'];
        $imageData = file_get_contents($_FILES['img']['tmp_name']);

        // Encrypt password
        $pass = password_hash($p, PASSWORD_DEFAULT);

        // Insert data into the database using prepared statement
        $query = "INSERT INTO user (name, email, pass, mobile, gender, hobbies, image_name, image_data, dob) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = mysqli_prepare($conn, $query);
        mysqli_stmt_bind_param($stmt, "sssssssss", $n, $e, $pass, $mob, $gen, $hobbies, $imageName, $imageData, $dob);

        if(mysqli_stmt_execute($stmt)) {
            // Upload image to server
            $targetDir = "images/";
            $targetFile = $targetDir . basename($_FILES['img']['name']);
            move_uploaded_file($_FILES['img']['tmp_name'], $targetFile);

            $err = "<font color='blue'>Registration successful!</font>";
        } else {
            $err = "<font color='red'>Error: " . mysqli_stmt_error($stmt) . "</font>";
        }
    }
}
?>

<html>
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>REGISTRATION FORM</h2>
        <form method="post" enctype="multipart/form-data">
            <table class="table table-bordered">
                <tr>
                    <td colspan="2"><?php echo isset($err) ? $err : ''; ?></td>
                </tr>
                <tr>
                    <td>Your Name:</td>
                    <td><input type="text" class="form-control" name="n" required/></td>
                </tr>
                <tr>
                    <td>Your Email:</td>
                    <td><input type="email" class="form-control" name="e" required/></td>
                </tr>
                <tr>
                    <td>Your Password:</td>
                    <td><input type="password" class="form-control" name="p" required/></td>
                </tr>
                <tr>
                    <td>Your Mobile No.:</td>
                    <td><input type="number" class="form-control" name="mob" required/></td>
                </tr>
                <tr>
                    <td>Select Your Gender:</td>
                    <td>
                        Male<input type="radio" name="gen" value="m" required/>
                        Female<input type="radio" name="gen" value="f"/>
                    </td>
                </tr>
                <tr>
                    <td>Choose Your Hobbies:</td>
                    <td>
                        Reading<input value="reading" type="checkbox" name="hob[]"/>
                        Singing<input value="singing" type="checkbox" name="hob[]"/>
                        Playing<input value="playing" type="checkbox" name="hob[]"/>
                    </td>
                </tr>
                <tr>
                    <td>Upload Your Image:</td>
                    <td><input type="file" class="form-control" name="img" required/></td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td>
                        <select name="yy" required>
                            <option value="">Year</option>
                            <?php for($i = 1950; $i <= 2016; $i++) { ?>
                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                            <?php } ?>
                        </select>
                        <select name="mm" required>
                            <option value="">Month</option>
                            <?php for($i = 1; $i <= 12; $i++) { ?>
                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                            <?php } ?>
                        </select>
                        <select name="dd" required>
                            <option value="">Date</option>
                            <?php for($i = 1; $i <= 31; $i++) { ?>
                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                            <?php } ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" class="btn btn-success" value="Save" name="save"/>
                        <input type="reset" class="btn btn-success" value="Reset"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
