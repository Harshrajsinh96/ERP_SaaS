<?php
  include_once "connection.php";
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>SYSTEM ADMIN | Activities</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="files/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="files/ait.min.css" rel="stylesheet" type="text/css" />
    <link href="files/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="files/bootstrap.min.js" type="text/javascript"></script>
    <script src="files/app.min.js" type="text/javascript"></script>

    <script type="text/javascript">
    function validateForm()
    {
      var numbers = /^[0-9]+$/; 
  if (faculty_id.value.match(numbers))
  {
    if ((faculty_id.value).length != 5)
  {
    
    document.getElementById('error1').innerHTML = "Size Is 5!";
  }
  else
  {
    document.getElementById('error1').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error1').innerHTML = "Only Numbers Please!";
    return false;
  }
    
    
  
  }
   
function validateForm1()
{
  var letters = /^[A-Za-z]+$/;
  if (first_name.value.match(letters))
  {
    if ((first_name.value).length > 20)
  {
    
    document.getElementById('error2').innerHTML = "Max Size Is 20!";
  }
  else
  {
    document.getElementById('error2').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error2').innerHTML = "Only Alphabets Please!";
    return false;
  }

 
 
  
}
 
function validateForm2()
{
  var letters = /^[A-Za-z]+$/;
  if (middle_name.value.match(letters))
  {
    if ((middle_name.value).length > 20)
  {
    
    document.getElementById('error3').innerHTML = "Max Size Is 20!";
  }
  else
  {
    document.getElementById('error3').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error3').innerHTML = "Only Alphabets Please!";
    return false;
  }

 
 
  
}
 
function validateForm3()
{
  var letters = /^[A-Za-z]+$/;
  if (last_name.value.match(letters))
  {
    if ((last_name.value).length > 20)
  {
    
    document.getElementById('error4').innerHTML = "Max Size Is 20!";
  }
  else
  {
    document.getElementById('error4').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error4').innerHTML = "Only Alphabets Please!";
    return false;
  }

 
 
  
}     
  function validateForm4()
    {
      var numbers = /^[0-9]+$/; 
  if (mobile_1.value.match(numbers))
  {
    if ((mobile_1.value).length != 10)
  {
    
    document.getElementById('error5').innerHTML = "Size Is 10!";
  }
  else
  {
    document.getElementById('error5').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error5').innerHTML = "Only Numbers Please!";
    return false;
  }
    
    
  
  }
  function validateForm5()
    {
      var numbers = /^[0-9]+$/; 
  if (mobile_2.value.match(numbers))
  {
    if ((mobile_2.value).length != 10)
  {
    
    document.getElementById('error6').innerHTML = "Size Is 10!";
  }
  else
  {
    document.getElementById('error6').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error6').innerHTML = "Only Numbers Please!";
    return false;
  }
    
    
  
  }
  function validateForm6()
    {
      var numbers = /^[0-9]+$/; 
  if (landline.value.match(numbers))
  {
    if ((landline.value).length != 11)
  {
    
    document.getElementById('error7').innerHTML = "Size Is 11!";
  }
  else
  {
    document.getElementById('error7').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error7').innerHTML = "Only Numbers Please!";
    return false;
  }
    
    
  
  }
  function validateForm7() 
  {
       var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
     if(email.value.match(mailformat))
     {
       if ((email.value).length > 50)
  {
    
    document.getElementById('error8').innerHTML = "Max Size Is 50!";
  }
  else
  {
    document.getElementById('error8').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error8').innerHTML = "Invalid Email!";
    return false;
  }
    
  } 
      function validateForm8()
    {

  
  
    if ((local_street_add.value).length > 100)
  {
    
    document.getElementById('error9').innerHTML = "Max Size Is 100!";
  }
  else
  {
    document.getElementById('error9').innerHTML = "";
    
  }
  
  

}
 function validateForm9()
{
  var letters = /^[A-Za-z]+$/;
  if (local_area.value.match(letters))
  {
    if ((local_area.value).length > 20)
  {
    
    document.getElementById('error10').innerHTML = "Max Size Is 20!";
  }
  else
  {
    document.getElementById('error10').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error10').innerHTML = "Only Alphabets Please!";
    return false;
  }

 
 
  
}
 function validateForm10()
    {

  
  
    if ((perm_street_add.value).length > 100)
  {
    
    document.getElementById('error11').innerHTML = "Max Size Is 100!";
  }
  else
  {
    document.getElementById('error11').innerHTML = "";
    
  }
  
  

}
 function validateForm11()
{
  var letters = /^[A-Za-z]+$/;
  if (local_area.value.match(letters))
  {
    if ((perm_area.value).length > 20)
  {
    
    document.getElementById('error12').innerHTML = "Max Size Is 20!";
  }
  else
  {
    document.getElementById('error12').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error12').innerHTML = "Only Alphabets Please!";
    return false;
  }

 
 
  
}
  function validateForm12()
    {
      var numbers = /^[0-9]+$/; 
  if (local_pincode.value.match(numbers))
  {
    if ((local_pincode.value).length != 6)
  {
    
    document.getElementById('error13').innerHTML = "Size Is 6!";
  }
  else
  {
    document.getElementById('error13').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error13').innerHTML = "Only Numbers Please!";
    return false;
  }
    
    
  
  }
  function validateForm13()
    {
      var numbers = /^[0-9]+$/; 
  if (perm_pincode.value.match(numbers))
  {
    if ((perm_pincode.value).length != 6)
  {
    
    document.getElementById('error14').innerHTML = "Size Is 6!";
  }
  else
  {
    document.getElementById('error14').innerHTML = "";
    
  }
  }
  else{
    document.getElementById('error14').innerHTML = "Only Numbers Please!!!!";
    return false;
  }
  }
 </script>
 </head>
  
 <body class="skin-blue">
    <div class="wrapper">
      <header class="main-header">
        <a href="index_system_admin.php" class="logo"><b>System Admin </b>AIT</a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="files/system_admin-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">SYSTEM ADMIN</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="user-header">
                    <img src="files/system_admin-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      SYSTEM ADMIN - Ahmedabad Institute of Technology
                      <small>Established 2004</small>
                    </p>
                  </li>
                   <li class="user-footer">
                      <div class="pull-left">
                      <button style="height:32px; width:115px">SYSTEM ADMIN</button>
                      </div>
                      <div class="pull-right">
                      <a href="/project8/index.php" class="btn btn-default btn-flat">Sign out</a>
                      </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <aside class="main-sidebar">
       
       <section class="sidebar">
          <div class="user-panel">
            <div class="pull-left image">
              <img src="files/system_admin-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>System Admin - AIT</p>
              <i class="fa fa-circle text-success"></i> Logged In</a>
            </div>
          </div>
          
          <ul class="sidebar-menu">
            <li class="header">MODULES</li>
            <li class="treeview">
              <a href="index_system_admin.php">
              <i class="fa fa-edit"></i> <span>Home</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="academic_calender.php">
                <i class="fa fa-edit"></i> <span>Academic Calender</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="batch_master.php">
                <i class="fa fa-edit"></i> <span>Batch Master</span>
               </a>
            </li>
            <li class="treeview">
              <a href="branch_master.php">
                <i class="fa fa-edit"></i> <span>Branch Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="circular_info2.php">
                <i class="fa fa-edit"></i> <span>Circular Information</span>
              </a>
            </li>
            <li class="treeview">
              <a href="discipline_master.php">
                <i class="fa fa-edit"></i> <span>Discipline Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="division_master.php">
                <i class="fa fa-edit"></i> <span>Division Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="elective_allocation.php">
                <i class="fa fa-edit"></i> <span>Elective Allocation</span>
              </a>
            </li>
            <li class="treeview">
              <a href="exam_schedule_master.php">
                <i class="fa fa-edit"></i> <span>Exam Schedule Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="exam_type_master.php">
                <i class="fa fa-edit"></i> <span>Exam Type Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="faculty_acad_details.php">
              <i class="fa fa-edit"></i> <span>Faculty Academic Details</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="faculty_current_details.php">
                <i class="fa fa-edit"></i> <span>Faculty Current Details</span> 
              </a>
            </li>
            <li class="active treeview">
              <a href="faculty_master.php">
                <i class="fa fa-edit"></i> <span>Faculty Master</span>
               </a>
            </li>
            <li class="treeview">
              <a href="feedback_criteria.php">
                <i class="fa fa-edit"></i> <span>Feedback Criteria</span>
              </a>
            </li>
            <li class="treeview">
              <a href="feedback_rating.php">
                <i class="fa fa-edit"></i> <span>Feedback Rating</span>
              </a>
            </li>
            <li class="treeview">
              <a href="institute_master.php">
                <i class="fa fa-edit"></i> <span>Institute Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="lecture_type_master.php">
                <i class="fa fa-edit"></i> <span>Lecture Type Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="media_details2.php">
                <i class="fa fa-edit"></i> <span>Media Details</span>
              </a>
            </li>
            <li class="treeview">
              <a href="parent_detail_master.php">
                <i class="fa fa-edit"></i> <span>Parent Detail Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="semester_master.php">
                <i class="fa fa-edit"></i> <span>Semester Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="staff_department_master.php">
               <i class="fa fa-edit"></i> <span>Staff Department Master</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="staff_details.php">
                <i class="fa fa-edit"></i> <span>Staff Details</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="student_current_acad_details.php">
                <i class="fa fa-edit"></i> <span>Student Current Acad Details</span>
               </a>
            </li>
            <li class="treeview">
              <a href="student_master.php">
                <i class="fa fa-edit"></i> <span>Student Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="student_previous_acad_details.php">
                <i class="fa fa-edit"></i> <span>Student Previous Acad Details</span>
              </a>
            </li>
            <li class="treeview">
              <a href="sub_alloc_master.php">
                <i class="fa fa-edit"></i> <span>Subject Allocation Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="subject_master.php">
                <i class="fa fa-edit"></i> <span>Subject Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="timeline_master.php">
                <i class="fa fa-edit"></i> <span>Timeline Master</span>
              </a>
            </li>
            <li class="treeview">
              <a href="user_master.php">
                <i class="fa fa-edit"></i> <span>User Master</span>
              </a>
            </li>
            
        </section>
      </aside>

      <div class="content-wrapper">
        <section class="content-header">
          <h1>
            SYSTEM ADMIN
            <small>Ahmedabad Institute of Technology</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index_system_admin.php"><i class="fa fa-edit"></i> Home</a></li>
            <li class="active">Faculty Master</li>
          </ol>
        </section>
        <section>
          <center>

          <fieldset>
    <legend><h1>Faculty Master</h1></legend>
    <table cellpadding="7px">
    <form name="faculty_master" action="faculty_master_conn.php" method="POST" enctype='multipart/form-data'>

      <tr><td><label>Faculty ID :</label></td>
      <td><input type="varchar" size="12" name="faculty_id" id="faculty_id" required="required" onblur="validateForm()"/><span id="error1"></span></td></tr> 
      <tr><td><label>First Name:</label></td>
      <td><input type="varchar" size="20" name="first_name" id="first_name" required="required" onblur="validateForm1()" /><span id="error2"></span></td></tr>
      <tr><td><label>Middle Name:</label></td>
      <td><input type="varchar" size="20" name="middle_name" id="middle_name" required="required" onblur="validateForm2()"/><span id="error3"></span></td></tr>
      <tr><td><label>Last Name:</label></td>
      <td><input type="varchar" size="20" name="last_name" id="last_name" required="required" onblur="validateForm3()" /><span id="error4"></span></td></tr>
      <tr><td><label>Gender:</label></td>
      <td><input type="radio" name="gender" id="gender" value="1" required="required">Male
      <input type="radio" name="gender" id="gender" value="0" required="required">Female</td></tr>
      <tr><td><label>Mobile - 1:</label></td>
      <td><input type="Number" size="10" name="mobile_1" id="mobile_1" required="required" onblur="validateForm4()" /><span id="error5"></span></td></tr>
      <tr><td><label>Mobile - 2:</label></td>
      <td><input type="Number" size="10" name="mobile_2" id="mobile_2" required="required" onblur="validateForm5()" /><span id="error6"></span></td></tr>
      <tr><td><label>Landline Number:</label></td>
      <td><input type="Number" size="11" name="landline" id="landline" required="required" onblur="validateForm6()" /><span id="error7"></span></td></tr>
      <tr><td><label>Email ID:</label></td>
      <td><input type="varchar" size="50" name="email" id="email" required="required" onblur="validateForm7()" /><span id="error8"></span></td></tr>
      <tr><td><label>Date of Birth:</label></td>
      <td><input type="date" name="dob" id="dob" required="required"/></td></tr>
      <tr><td><label>Local Street Address:</label></td>
      <td><input type="varchar" size="100" name="local_street_add" id="local_street_add" required="required" 
      onblur="validateForm8()" /><span id="error9"></span></td></tr>
      <tr><td><label>Local Area:</label></td>
      <td><input type="varchar" size="20" name="local_area" id="local_area" required="required" onblur="validateForm9()" /><span id="error10"></span></td></tr>
      <tr><td><label>Local State:</label></td>
      <td><select name="local_state" id="local_state" required="required" onchange="getLocCity(this.value)">
      <option value="">Select State</option>    
      <?php
          $query = "SELECT * FROM addr_state_table ORDER BY state_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $state_name) {
        ?>
        <option value="<?php echo $state_name["state_id"]; ?>"><?php echo $state_name["state_name"]; ?></option>
        <?php
          }
        ?>
      <tr><td><label>Local City :</label></td>
      <td><select name="local_city" id="local_city" required="required">  
                <option value = "">Local City</option>
                </select></td></tr>
      <tr><td><label>Local PINCODE:</label></td>
      <td><input type="number" size="6" name="local_pincode" id="local_pincode" required="required" onblur="validateForm12()" /><span id="error13"></span></td></tr>
      <tr><td><label>Permenent Street Address:</label></td>
      <td><input type="varchar" size="100" name="perm_street_add" id="perm_street_add" required="required" onblur="validateForm10()"/><span id="error11"></span></td></tr>
      <tr><td><label>Permenent Area:</label></td>
      <td><input type="varchar" size="20" name="perm_area" id="perm_area" required="required" onblur="validateForm11()" /><span id="error12"></span></td></tr>
      <tr><td><label>Permenent State:</label></td>
      <td><select name="perm_state" id="perm_state" required="required" onchange="getPermCity(this.value)">   
            <option value = "">Select State</option>
            <?php
          $query = "SELECT * FROM addr_state_table ORDER BY state_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $state_name) {
        ?>
        <option value="<?php echo $state_name["state_id"]; ?>"><?php echo $state_name["state_name"]; ?></option>
        <?php
          }
        ?></select></td></tr>
      <tr><td><label>Permenent City:</label></td>
      <td><select name="perm_city" id="perm_city" required="required">
              <option value = "">Select City</option>
              </select></td></tr>
      <tr><td><label>Permenent PINCODE:</label></td>
      <td><input type="int" size="6" name="perm_pincode" id="perm_pincode" required="required" onblur="validateForm13()" /><span id="error14"></span></td></tr>
      <tr><td><label>Blood Group:</label></td>
      <td><select name="blood_grp" id="blood_grp" required="required">    <option value = "  ">Select Blood Group</option>
                                          <option value = "A+">A+</option>
                                          <option value = "A-">A-</option>
                                          <option value = "B+">B+</option>
                                          <option value = "B-">B-</option>
                                          <option value = "O+">O+</option>
                                          <option value = "O-">O-</option>
                                          <option value = "AB+">AB+</option>
                                          <option value = "AB-">AB-</option> </select></td></tr>
        <tr><td><label>Marital Status:</label></td>
      <td><input type="radio" name="marital_status" id="marital_status" value="Single" required="required">Single
      <input type="radio" name="marital_status" id="marital_status" value="Married" required="required">Married</td></tr>
      <tr><td><label>Join Date:</label></td>
      <td><input type="date" name="join_date" id="join_date" required="required"/></td></tr>
      <tr><td><label>Left Date:</label></td>
      <td><input type="date" name="left_date" id="left_date"/></td></tr>
      <tr><td><label>Photograph :</label></td>
      <td><input type='file' name="photofile" id="photofile"></td></tr>
      <tr><td><label>CV Link :</label></td>
      <td><input type='file' name="cvfile" id="cvfile"></td><tr>
      <tr><td><label>Faculty Status:</label></td>
      <td><input type="radio" name="faculty_status" id="faculty_status" value="1" required="required">Faculty
      <input type="radio" name="faculty_status" id="faculty_status" value="0" required="required">Ex-Faculty</td></tr>
            
    <script>
      function getLocCity(val)
      {
          $.ajax({
          type: "POST",
          url: "selectcity.php",
          data:'state_id='+val,
          success: function(data){
          $("#local_city").html(data);
          }
          });
      }
      function getPermCity(val)
      {
          $.ajax({
          type: "POST",
          url: "selectcity.php",
          data:'state_id='+val,
          success: function(data){
          $("#perm_city").html(data);
          }
          });
      }
    </script>

      <tr><td align="right"><input type="submit" value="Submit" name="Submit"/>&nbsp;&nbsp;&nbsp;</td>
      <td><input type="reset" value= "Clear" name="Clear"/> </td></tr>
    </form>
  </fieldset>
  

          </center>
       
        </section>
      </div>
    </div>

 </body>
</html>