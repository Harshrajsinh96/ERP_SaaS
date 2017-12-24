<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO sub_alloc_master(discipline_id,branch_id,faculty_id,sub_id) 
	VALUES ('".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["faculty_id"]."','".$_POST["sub_id"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "sub_alloc_master.php"
      </script>';
$connection->close();
?>