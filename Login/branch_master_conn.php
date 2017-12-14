<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO branch_master(discipline_id,branch_code,branch_name) 
	VALUES ('".$_POST["discipline_id"]."','".$_POST["branch_code"]."','".$_POST["branch_name"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "branch_master.php"
      </script>';
$connection->close();
?>