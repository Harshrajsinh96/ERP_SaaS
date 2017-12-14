<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO academic_calender(start_date, end_date, discipline_id, sem_id, year)
			 VALUES ('".$_POST["start_date"]."','".$_POST["end_date"]."','".$_POST["discipline_id"]."','".$_POST["sem_id"]."','".$_POST["year"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
		echo '<script language="javascript">
			alert("Data Added")
	        window.location = "academic_calender.php"
      </script>';
$connection->close();
?>