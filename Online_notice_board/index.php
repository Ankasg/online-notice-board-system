<?php 
include('connection.php');
session_start();
 ?>
<html>
	<head>
		<title>Online Notice Board</title>
		<link rel="stylesheet" href="css/bootstrap.css"/>
		<script src="js/jquery_library.js"></script>
<script src="js/bootstrap.min.js"></script>
	</head>
	<body>
			<nav class="navbar navbar-default navbar-fixed-top" style="background:#000">
  <div class="container">
  
  <ul class="nav navbar-nav navbar-left">
    <li><a href="index.php"><font color="white"><strong><span class="glyphicon glyphicon-book">OnlineNoticeBoard</strong></a></li>

<ul class="nav navbar-nav navbar-left">
	<li><a href="./admin/index.php"><span class="glyphicon glyphicon-user"><font color="white"><strong>Admin<strong></a></li>
	  
</ul>
	</ul>
	</ul>
	

	<ul class="nav navbar-nav navbar-right">
      <li><a href="index.php?option=login"><span class="glyphicon glyphicon-log-in"></span><font color="white"> Login</a></li>
    </ul>


<ul class="nav navbar-nav navbar-right">
      <li><a href="index.php?option=New_user"><span class="glyphicon glyphicon-user"></span> <font color="white">Register</a></li>
</ul>



</div>
</nav>	

<div class="container-fluid">
	<!-- slider -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" align='center'>
      <img src="images/co.jpg" alt="...">
	   <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item" align='center'>
      <img src="images/new.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
	
	 <div class="item" align='center'>
      <img src="images/mce.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- slider end-->
</div>


<div class="container">
	<div class="row">
	<!-- container -->
		<div class="col-sm-8">
		<?php 
		@$opt=$_GET['option'];
		
		if($opt!="")
		{
			if($opt=="about")
			{
			include('about.php');
			}
			else if($opt=="contact")
			{
			include('contact.php');
			}
			
			else if($opt=="New_user")
			{
			include('registration.php');
			}
			
			
			else if($opt=="login")
			{
			include('login.php');
			}
		}
		else
		{
			echo '<i style="color:black;font-size:40px;font-family:calibri font-form:bold;">
			WELCOME TO ISE Department E-NOTICE BOARD -MCE</i>' ;
			}
		?>
		
		
		
		
		</div>
	<!-- container -->
		
		<div class="col-sm-4">
			<div class="panel panel-default">
  <div class="panel-heading"><font color="red"><font size='5	px'><marquee>Latest news</marquee></font></div>

  <div class="panel-body"> <font color="red" >
		<td >new</td>
		<font color="black" >
	
	<?php
	$q=mysqli_query($conn,"select * from notif order by id DESC");
	$rr=mysqli_num_rows($q);
	if(!$rr)
	{
	echo "<h2 style='color:red'>No any notice for You !!!</h2>";
	}
	else
	{
		$i=1;
	while($row=mysqli_fetch_assoc($q))
	{
	
		echo "<tc>➦".$row['id'].".&nbsp".$row['notif']."</tr>";
		echo "<tr>  <br> <br></tr>";
		$i++;
	}
	}

	// $sql="Select * from notif;";	
	?>
<!-- DUE TO 7TH SEMISTER FINAL YEAR EXAMS, THIRD TEST SCHEDULED ON 19TH TO 21 ST FOR 5TH SEMISTER HAS BEEN RESCHEDULED ON 18TH, 20TH AND 21ST -->
  </div>

</div>
		
		</div>
	</div>

</div>



<br/>
<br/>
<br/>
<br/>
	</body>
</html>