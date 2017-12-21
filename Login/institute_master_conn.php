<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO institute_master(institute_code, institute_name, est_year)
			 VALUES ('".$_POST["institute_code"]."','".$_POST["institute_name"]."','".$_POST["est_year"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "institute_master.php"
      </script>';
$connection->close();
?>