<?php
	include "database.php";
	session_start();
	$s="delete from parent where PID={$_GET["id"]}";
	$db->query($s);
	echo "<script>window.open('add_sub1.php?mes=Data Deleted..','_self');</script>";
?>