<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO staff_department_master(dept_name) 
			VALUES ('".$_POST["dept_name"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "staff_department_master.php"
      </script>';
$connection->close();
?>