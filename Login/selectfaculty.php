<?php
	include_once "connection.php";
	
	if(!empty($_POST["branch_id"]))
	{
		$discipline_id = $_POST["discipline_id"];
		$branch_id = $_POST["branch_id"];
		/*$fcid=mp();
		function mp()*/
		//{
		$query = "SELECT faculty_current_detail.faculty_id, faculty_master.first_name, faculty_master.last_name
		FROM faculty_current_detail INNER JOIN faculty_master ON faculty_current_detail.faculty_id = faculty_master.faculty_id
		WHERE faculty_current_detail.discipline_id = $discipline_id AND faculty_current_detail.branch_id = $branch_id";
		
		$result = mysqli_query($connection, $query);
?>
		<option value="">Select Faculty </option>
<?php
		foreach ($result as $faculty_id)
			
			{
?>
		<option value= "<?php echo $faculty_id["faculty_id"]; ?>"><?php echo $faculty_id["first_name"]." ".$faculty_id["last_name"]; ?></option>
<?php
		}
	}
?>