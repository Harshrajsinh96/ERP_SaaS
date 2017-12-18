<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$sql = "INSERT INTO faculty_acad_details(faculty_id,h_degree,degree_field,experience) 
				VALUES ('".$_POST["faculty_id"]."','".$_POST["h_degree"]."','".$_POST["degree_field"]."','".$_POST["experience"]."')";
		$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

echo '<script language="javascript">
			alert("Data Added")
	        window.location = "faculty_acad_details.php"
      </script>';
$connection->close();
?>