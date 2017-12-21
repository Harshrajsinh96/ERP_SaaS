<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$sql = "INSERT INTO feedback_criteria(criteria) 
				VALUES ('".$_POST["criteria"]."')";
		
	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "feedback_criteria.php"
      </script>';
$connection->close();
?>