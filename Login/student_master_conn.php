<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$photofile = upload();
		$enr_no = generateTempEnrNo();
		function generateTempEnrNo()
		{
		$file_name_new = '13'.$_POST["mobile_student"];
		return $file_name_new;
		}

		function upload()
					{ 	
						if(isset($_FILES['photofile'])) {
						$file = $_FILES['photofile'];

						$file_name = $file['name'];
						$file_tmp = $file['tmp_name'];
						$file_size = $file['size'];
						$file_error = $file['error'];

						$file_ext = explode('.',$file_name);
						$file_ext = strtolower(end($file_ext));

						$allowed = array('jpg','png','pdf');

						if(in_array($file_ext, $allowed)) {
						if ($file_error === 0) {
						if ($file_size <=2097152) {

						$file_name_new = 'Photograph'.'-'.$_POST["first_name"].'-'.$_POST["mobile_student"].'.'.$file_ext;
						$file_destination = 'Uploads/'.$file_name_new;
						$photofile = 'localhost/Login/Uploads/' . $file_name_new;
					
						if(move_uploaded_file($file_tmp, $file_destination)) {
						return $photofile;
										}	else {echo ('Error!-1');}
									}	else {echo ('Error!-2');}
								}	else {echo ('Error!-3');}
							}	else {echo ('Error!-4');}
						}	else {echo ('Error!-5');}
					}

	$sql = "INSERT INTO student_master(enr_no,first_name,middle_name,last_name,local_street_add,local_area,local_city,local_state,local_pincode,perm_street_add,perm_area,perm_city,perm_state,perm_pincode,gender,DOB,blood_grp,mobile_student,mobile_parent,landline_no,email,admit_date,category,student_type,admit_type,photograph,student_status) 
			VALUES ('".$enr_no."','".$_POST["first_name"]."','".$_POST["middle_name"]."','".$_POST["last_name"]."','".$_POST["local_street_add"]."','".$_POST["local_area"]."','".$_POST["local_city"]."','".$_POST["local_state"]."','".$_POST["local_pincode"]."','".$_POST["perm_street_add"]."','".$_POST["perm_area"]."','".$_POST["perm_city"]."','".$_POST["perm_state"]."','".$_POST["perm_pincode"]."','".$_POST["gender"]."','".$_POST["dob"]."','".$_POST["blood_grp"]."','".$_POST["mobile_student"]."','".$_POST["mobile_parent"]."','".$_POST["landline_no"]."','".$_POST["email"]."','".$_POST["admit_date"]."','".$_POST["category"]."','".$_POST["student_type"]."','".$_POST["admit_type"]."','".$photofile."','".$_POST["student_status"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "student_master.php"
      </script>';
$connection->close();
?>