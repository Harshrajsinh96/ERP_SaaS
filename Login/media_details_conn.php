<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}
 		$linkphoto = uploadphoto();
  
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

						$file_name_new = 'Media'.'-'.'Admin'.'-'.$_POST["event_title"].'.'.$file_ext;
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

	$sql = "INSERT INTO media_details(event_title,event_desc, folder_link)
			 VALUES ('".$_POST["event_title"]."','".$_POST["event_desc"]."','".$linkphoto."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));
echo '<script language="javascript">
			alert("Data Added")
	        window.location = "media_details.php"
      </script>';
$connection->close();
?>