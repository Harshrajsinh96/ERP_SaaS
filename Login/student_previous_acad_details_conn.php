<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO student_prev_acad_details(enr_no,ssc_board,ssc_medium,ssc_school,ssc_result,ssc_pass_year,h_ed_type,h_ed_board,h_ed_medium,h_ed_inst,h_ed_result,h_ed_pass_year) 
			VALUES ('".$_POST["enr_no"]."','".$_POST["ssc_board"]."','".$_POST["ssc_medium"]."','".$_POST["ssc_school"]."','".$_POST["ssc_result"]."','".$_POST["ssc_pass_year"]."','".$_POST["h_ed_type"]."','".$_POST["h_ed_board"]."','".$_POST["h_ed_medium"]."','".$_POST["h_ed_inst"]."','".$_POST["h_ed_result"]."','".$_POST["h_ed_pass_year"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
echo '<script language="javascript">
			alert("Data Added")
	        window.location = "student_previous_acad_details.php"
      </script>';
$connection->close();
?>
  