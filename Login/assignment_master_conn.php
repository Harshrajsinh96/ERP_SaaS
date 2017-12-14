<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}
					
		$assfile = upload();
		function upload()
					{ 	
						if(isset($_FILES['assfile'])) {
						$file = $_FILES['assfile'];

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

						$file_name_new ='Assignment'.'-'.$_POST["discipline_id"].'-'.$_POST["branch_id"].'-'.$_POST["sem_id"].'-'.$_POST["division_id"].'-'.$_POST["sub_id"].'.'.$file_ext;
						$file_destination = 'Uploads/'.$file_name_new;
						$assfile = 'localhost/12HR/Uploads/' . $file_name_new;
					
						if(move_uploaded_file($file_tmp, $file_destination)) {
						return $assfile;
										}	else {echo ('Error!-1');}
									}	else {echo ('Error!-2');}
								}	else {echo ('Error!-3');}
							}	else {echo ('Error!-4');}
						}	else {echo ('Error!-5');}
					}
					
	$sql = "INSERT INTO assignment_master(discipline_id,branch_id,sem_id,division_id,sub_id,ass_no,link,assign_date,submission_date) 
	VALUES ('".$_POST["discipline_id"]."','".$_POST["branch_id"]."','".$_POST["sem_id"]."','".$_POST["division_id"]."','".$_POST["sub_id"]."','".$_POST["ass_no"]."','".$assfile."','".$_POST["assign_date"]."','".$_POST["submission_date"]."')";

	$result1 = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
echo '<script language="javascript">
			alert("Data Added")
	        window.location = "assignment_master.php"
      </script>';
$connection->close();
?>