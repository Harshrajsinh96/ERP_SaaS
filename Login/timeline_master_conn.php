<?php
	include_once "connection.php";
	
	if(!$connection)
		{
		echo "Connection_Error";
		}

		$mp = uploadmp();
		$tt_id= selecttt();
		function uploadmp()
					{ 	
						if(isset($_FILES['mp'])) {
						$file = $_FILES['mp'];

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

						$file_name_new = 'Timeline'.'-'.$_POST["faculty_id"].'-'.$_POST["topic"].'.'.$file_ext;
						$file_destination = 'Uploads/'.$file_name_new;
						$mp = 'localhost/project7/Login/Uploads/' . $file_name_new;
					
						if(move_uploaded_file($file_tmp, $file_destination)) {
						return $mp;
										}	else {echo ('Error!-1');}
									}	else {echo ('Error!-2');}
								}	else {echo ('Error!-3');}
							}	else {echo ('Error!-4');}
						}	else {echo ('Error!-5');}
					}

			function selecttt()
			{	$day;
				$lec_no;
				$connection = mysqli_connect("localhost", "college", "GOLRhjGSmHQwwLd7", "college");
				$day=$_POST["day"];
				$lec_no=$_POST["lec_no"];
				$sql = " SELECT tt_id FROM timetable_two_master WHERE day='$day' AND lec_no='$lec_no' ";
				$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

				while($row = mysqli_fetch_row($result)){
						return $row[0];
				}
			}

	$sql = "INSERT INTO timeline_master(timetable_id,topic,link,faculty_id) 
	VALUES ('".$tt_id."','".$_POST["topic"]."','".$mp."','".$_POST["faculty_id"]."')";

	$result = mysqli_query($connection, $sql) or die ("Error!" . mysqli_error($connection));

	echo '<script language="javascript">
			alert("Data Added")
	        window.location = "timeline_master.php"
      </script>';
$connection->close();
?>