<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied..','_self');</script>";

	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>SVCE</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<body>
		<?php include"navbar.php";?><br>
		<img src="img/megha3.jpg"  style="margin-left:200px;" class="sha">
			<div id="section">
				<?php include"sidebar.php";?><br>
				<div class="content">
					<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
						<h3 >About SAI VIDYA PUBLIC SCHOOL</h3><br>
					<img src="img/megha1.jpg" class="imgs">
					<p class="para">
						SAI VIDYA PUBLIC SCHOOL has been tremendously successful in the field of education, because it has not waited
						for things to happen, but has created opportunities instead of waiting for it to knock.
					
				    </p>
				</div>
			</div>
		<?php include"footer.php";?>
	</body>
</html>
