<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$sql = "INSERT INTO division_master(discipline_id,branch_id,sem_id,division) 
				VALUES ('".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["sem_id"]."','".$_POST["division"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

echo '<script language="javascript">
			alert("Data Added")
	        window.location = "division_master.php"
      </script>';
$connection->close();
?>