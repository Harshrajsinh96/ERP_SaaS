<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$sql = "INSERT INTO exam_type_master(exam_type) 
				VALUES ('".$_POST["exam_type"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
echo '<script language="javascript">
			alert("Data Added")
	        window.location = "exam_type_master.php"
      </script>';
$connection->close();
?>