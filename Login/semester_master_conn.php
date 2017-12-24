<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO `semester_master`(`discipline_id`, `sem_no`) 
			VALUES ('".$_POST["discipline_id"]."','".$_POST["sem_no"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "semester_master.php"
      </script>';
$connection->close();
?>