<?php
	include_once "connection.php";
	
	if(!empty($_POST["discipline_id"]))
	{
		$discipline_id = $_POST["discipline_id"];
		$query = "SELECT * FROM branch_master WHERE discipline_id = $discipline_id ORDER BY branch_name";
		$results = mysqli_query($connection, $query);
?>
		<option value="">Select Branch</option>
<?php
		foreach ($results as $branch_name)
		{
?>
		<option value= "<?php echo $branch_name["branch_id"]; ?>"><?php echo $branch_name["branch_name"]; ?></option>
<?php
		}
	}
?>