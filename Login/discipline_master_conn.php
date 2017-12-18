<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO `discipline_master`(`discipline_code`, `discipline_name`, `discipline_sname`, `num_of_sem`) 
			VALUES ('".$_POST["discipline_code"]."','".$_POST["discipline_name"]."','".$_POST["discipline_sname"]."','".$_POST["num_of_sem"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
echo '<script language="javascript">
			alert("Data Added")
	        window.location = "discipline_master.php"
      </script>';
$connection->close();
?>