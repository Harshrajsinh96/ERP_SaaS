<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}
	$sql = "INSERT INTO feedback_rating(rating_value)
			 VALUES ('".$_POST["rating_value"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

echo '<script language="javascript">
			alert("Data Added")
	        window.location = "feedback_rating.php"
      </script>';
$connection->close();
?>