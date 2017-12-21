<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO lecture_type_master(lecture_type)
			 VALUES ('".$_POST["lecture_type"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "lecture_type_master.php"
      </script>';
$connection->close();
?>