<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}
		$elec_id = elec_id();
		function elec_id()
		{
		$file_name_new = "113";
		return $file_name_new;
		}

	$sql = "INSERT INTO student_current_acad_details(enr_no,discipline_id,branch_id,sem_id,div_id,batch_id,elec_id) 
	VALUES ('".$_POST["enr_no"]."','".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["sem_id"]."','".$_POST["div_id"]."','".$_POST["batch_id"]."','".$elec_id."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "student_current_acad_details.php"
      </script>';
$connection->close();
?>