<?php
	include_once "connection.php";
	
	if(!empty($_POST["discipline_id"]))
	{
		$discipline_id = $_POST["discipline_id"];
		$query = "SELECT * FROM semester_master WHERE discipline_id = $discipline_id ORDER BY sem_no";
		$results = mysqli_query($connection, $query);
?>
		<option value="">Select Semester</option>
<?php
		foreach ($results as $sem_no)
		{
?>
		<option value= "<?php echo $sem_no["sem_id"]; ?>"><?php echo $sem_no["sem_no"]; ?></option>
<?php
		}
	}
?>