<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO mid_result(enr_no,sub_id,sub_marks,exam_type_id,total_marks)
			 VALUES ('".$_POST["enr_no"]."','".$_POST["sub_id"]."','".$_POST["sub_marks"]."','".$_POST["exam_type_id"]."','".$_POST["total_marks"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "mid_result.php"
      </script>';
$connection->close();
?>