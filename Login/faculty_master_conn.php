<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

    $linkphoto = uploadphoto();
    $cvfile = uploadcv();
		function uploadphoto()
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

						$file_name_new = 'Photograph'.'-'.$_POST["first_name"].'-'.$_POST["mobile_1"].'.'.$file_ext;
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

			function uploadcv()
				{ 	
						if(isset($_FILES['cvfile'])) {
						$file = $_FILES['cvfile'];

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

						$file_name_new = 'Curriculum Vitae'.'-'.$_POST["first_name"].'-'.$_POST["mobile_1"].'.'.$file_ext;
						$file_destination = 'uploads/'.$file_name_new;
						$cvfile = 'localhost/Login/Uploads/' . $file_name_new;
					
						if(move_uploaded_file($file_tmp, $file_destination)) {
						return $cvfile;
										}	else {echo ('Error!-1');}
									}	else {echo ('Error!-2');}
								}	else {echo ('Error!-3');}
							}	else {echo ('Error!-4');}
						}	else {echo ('Error!-5');}
					}
					

	$sql = "INSERT INTO faculty_master(faculty_id,first_name,middle_name,last_name,gender,mobile_1,mobile_2,landline,email,dob,local_street_add,local_area,local_city,local_state,local_pincode,perm_street_add,perm_area,perm_city,perm_state,perm_pincode,blood_grp,marital_status,join_date,left_date,photograph,cv_link,faculty_status) 
	VALUES ('".$_POST["faculty_id"]."','".$_POST["first_name"]."','".$_POST["middle_name"]."','".$_POST["last_name"]."','".$_POST["gender"]."','".$_POST["mobile_1"]."','".$_POST["mobile_2"]."','".$_POST["landline"]."','".$_POST["email"]."','".$_POST["dob"]."','".$_POST["local_street_add"]."','".$_POST["local_area"]."','".$_POST["local_city"]."','".$_POST["local_state"]."','".$_POST["local_pincode"]."','".$_POST["perm_street_add"]."','".$_POST["perm_area"]."','".$_POST["perm_city"]."','".$_POST["perm_state"]."','".$_POST["perm_pincode"]."','".$_POST["blood_grp"]."','".$_POST["marital_status"]."','".$_POST["join_date"]."','".$_POST["left_date"]."','".$linkphoto."','".$cvfile."','".$_POST["faculty_status"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "faculty_master.php"
      </script>';
$connection->close();
?>