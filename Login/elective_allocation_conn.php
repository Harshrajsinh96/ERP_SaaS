<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$elec_id = $_POST["elec_sub_id"];
		$enr_no = $_POST["enr_no"];
	$sql = "UPDATE student_current_acad_details SET elec_id=$elec_id WHERE enr_no=$enr_no ";
	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

echo '<script language="javascript">
			alert("Data Added")
	        window.location = "elective_allocation.php"
      </script>';
$connection->close();
?>