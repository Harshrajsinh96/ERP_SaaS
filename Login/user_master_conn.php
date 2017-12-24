<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}


	$sql = "INSERT INTO user_master(user_type) 
	VALUES ('".$_POST["user_type"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

		echo '<script language="javascript">
			alert("Data Added")
	        window.location = "user_master.php"
      </script>';
$connection->close();
?>