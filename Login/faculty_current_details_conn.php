<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}


		$sql = "INSERT INTO faculty_current_detail(faculty_id,discipline_id,branch_id,designation) 
				VALUES ('".$_POST["faculty_id"]."','".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["designation"]."')";


	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "faculty_current_details.php"
      </script>';
$connection->close();
?>