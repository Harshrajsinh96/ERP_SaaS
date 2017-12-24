<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}
		$subjectlinkfile = upload();
		function upload()
					{ 	
						if(isset($_FILES['subjectlinkfile'])) {
						$file = $_FILES['subjectlinkfile'];

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

						$file_name_new = 'Subjectlink'.'-'.$_POST["sub_name"].'-'.$_POST["sub_code"].'.'.$file_ext;
						$file_destination = 'Uploads/'.$file_name_new;
						$subjectlinkfile = 'localhost/Login/Uploads/' . $file_name_new;
					
						if(move_uploaded_file($file_tmp, $file_destination)) {
						return $subjectlinkfile;
										}	else {echo ('Error!-1');}
									}	else {echo ('Error!-2');}
								}	else {echo ('Error!-3');}
							}	else {echo ('Error!-4');}
						}	else {echo ('Error!-5');}
					}

	$sql = "INSERT INTO subject_master(`sub_code`, `sub_name`, `sub_acr`, `sub_credit`, `sub_type`, `sub_link`, `sub_status`,`sem_id`, `discipline_id`, `branch_id`)
			 VALUES ('".$_POST["sub_code"]."','".$_POST["sub_name"]."','".$_POST["sub_acr"]."','".$_POST["sub_credit"]."','".$_POST["sub_type"]."','".$subjectlinkfile."','".$_POST["sub_status"]."','".$_POST["sem_id"]."','".$_POST["discipline_id"]."','".$_POST["branch_id"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "subject_master.php"
      </script>';
$connection->close();
?>