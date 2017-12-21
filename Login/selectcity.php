<?php
	include_once "connection.php";
	$state_id = $_POST["state_id"];

	if(!empty($_POST["state_id"]))
	{		
		$query = "SELECT * FROM addr_city_table WHERE state_id = $state_id ORDER BY city_name";
		$results = mysqli_query($connection, $query);
?>
		<option value="">Select City</option>
<?php
		foreach ($results as $city_name)
		{
?>
		<option value= "<?php echo $city_name["city_id"]; ?>"><?php echo $city_name["city_name"]; ?></option>
<?php
		}
	}
?>