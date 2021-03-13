<?php
	include"database.php";
	session_start();
	if(!isset($_SESSION["AID"]))
	{
		echo"<script>window.open('index.php?mes=Access Denied...','_self');</script>";

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
				
			<div id="section">
					<?php include"sidebar.php";?><br><br><br>
					<h3 class="text">Welcome <?php echo $_SESSION["ANAME"]; ?></h3><br><hr><br>
					<div class="content1">

						<h3 > Add PARENT Details</h3><br>
						<?php
							if(isset($_POST["submit"]))
							{
								$sq="insert into parent(PNAME,PQUAL,STUDENT_NAME,MOBILE) values ('{$_POST["pname"]}','{$_POST["pqual"]}','{$_POST["stud"]}','{$_POST["mobile"]}')";
								if($db->query($sq))
								{
									echo "<div class='success'>Insert Success..</div>";
								}
								else
								{
									echo "<div class='error'>Insert Failed..</div>";
								}
							}
						?>

						<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
						   <label>Parent Name</label><br>
						   <input type="text" name="pname" required class="input">
						   <label>Parent QUAL</label><br>
						   <input type="text" name="pqual" required class="input">
                            <label>Student name</label><br>
						   <input type="text" name="stud" required class="input">
                            <label>Mobile number</label><br>
						   <input type="text" name="mobile" required class="input">
						   <button type="submit" class="btn" name="submit">Add Parent Details</button>
						</form>


					</div>


				<div class="tbox" >
					<h3 style="margin-top:30px;"> Parent Details</h3><br>
					<?php
						if(isset($_GET["mes"]))
						{
							echo"<div class='error'>{$_GET["mes"]}</div>";
						}

					?>
					<table border="1px" >
						<tr>
							<th>S.No</th>
							<th>Parent Name</th>
							<th>Parent QUAL</th>
                            <th>Student Name</th>
                            <th>Mobile Number</th>
							<th>Delete</th>
						</tr>
						<?php
							$s="select * from parent";
							$res=$db->query($s);
							if($res->num_rows>0)
							{
								$i=0;
								while($r=$res->fetch_assoc())
								{
									$i++;
									echo "
										<tr>
										<td>{$i}</td>
										<td>{$r["PNAME"]}</td>
										<td>{$r["PQUAL"]}</td>
                                        <td>{$r["STUDENT_NAME"]}</td>
                                        <td>{$r["MOBILE"]}</td>
										<td><a href='sub_delete1.php?id={$r["PID"]}' class='btnr'>Delete</a></td>
										</tr>

									";

								}

							}
							else
							{
								echo "No Record Found";
							}
						?>

					</table>
				</div>
			</div>

				<?php include"footer.php";?>
	</body>
</html>
