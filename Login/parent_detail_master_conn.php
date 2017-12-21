<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

	$sql = "INSERT INTO parent_detail_master(enr_no,f_first_name,f_middle_name,f_last_name,f_contact,f_email,f_ed_qual,f_occupation,f_ann_income,f_dob,m_first_name,m_middle_name,m_last_name,m_contact,m_email,m_ed_qual,m_occupation,m_ann_income,m_dob,g_first_name,g_middle_name,g_last_name,g_contact,g_email) 
			VALUES ('".$_POST["enr_no"]."','".$_POST["f_first_name"]."','".$_POST["f_middle_name"]."','".$_POST["f_last_name"]."','".$_POST["f_contact"]."','".$_POST["f_email"]."','".$_POST["f_ed_qual"]."','".$_POST["f_occupation"]."','".$_POST["f_ann_income"]."','".$_POST["f_dob"]."','".$_POST["m_first_name"]."','".$_POST["m_middle_name"]."','".$_POST["m_last_name"]."','".$_POST["m_contact"]."','".$_POST["m_email"]."','".$_POST["m_ed_qual"]."','".$_POST["m_occupation"]."','".$_POST["m_ann_income"]."','".$_POST["m_dob"]."','".$_POST["g_first_name"]."','".$_POST["g_middle_name"]."','".$_POST["g_last_name"]."','".$_POST["g_contact"]."','".$_POST["g_email"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

echo '<script language="javascript">
			alert("Data Added")
	        window.location = "parent_detail_master.php"
      </script>';
$connection->close();
?>