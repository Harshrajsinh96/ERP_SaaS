<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO exam_schedule_master(discipline_id, branch_id, sem_id, division_id,exam_type_id, sub_id, date, time)
			 VALUES ('".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["sem_id"]."','".$_POST["division_id"]."','".$_POST["exam_type_id"]."','".$_POST["sub_id"]."','".$_POST["date"]."','".$_POST["time"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
			echo '<script language="javascript">
			alert("Data Added")
	        window.location = "exam_schedule_master.php"
      </script>';
$connection->close();
?>