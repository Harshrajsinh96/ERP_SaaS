<?php
	include_once "connection.php";
	
	if(!empty($_POST["sem_id"]))
	{
		$discipline_id = $_POST["discipline_id"];
		$branch_id = $_POST["branch_id"];
		$sem_id = $_POST["sem_id"];
		$query = "SELECT * FROM subject_master WHERE discipline_id = $discipline_id AND branch_id = $branch_id AND sem_id = $sem_id ORDER BY sub_type,sub_name";
		$results = mysqli_query($connection, $query);
?>
		<option value="">Select Subject</option>
<?php
		foreach ($results as $sub_name)
		{
?>
		<option value= "<?php echo $sub_name["sub_id"]; ?>"><?php echo $sub_name["sub_name"]; ?></option>
<?php
		}
	}
?>