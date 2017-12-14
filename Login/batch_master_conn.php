<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$sql = "INSERT INTO batch_master(batch) 
				VALUES ('".$_POST["batch"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "batch_master.php"
      </script>';
$connection->close();
?>