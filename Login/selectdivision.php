<?php
	include_once "connection.php";
	
	if(!empty($_POST["sem_id"]))
	{
		$sem_id = $_POST["sem_id"];
		$branch_id = $_POST["branch_id"];
		$query = "SELECT * FROM division_master WHERE sem_id = $sem_id AND branch_id = $branch_id ORDER BY division";
		$results = mysqli_query($connection, $query);
?>
		<option value="">Select Division</option>
<?php
		foreach ($results as $division)
		{
?>
		<option value= "<?php echo $division["div_id"]; ?>"><?php echo $division["division"]; ?></option>
<?php
		}
	}
?>