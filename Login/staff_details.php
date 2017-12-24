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

   function validateForm1()
 {
  var text = /^[A-Za-z]+$/;
  
  if(first_name.value.match(text)) 
  {
    if ((first_name.value.)length>30)
  {
    document.getElementById('fname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('fname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('fname').innerHTML = "Only Alphabets Please!";
  }
  
}
  function validateForm2()
{
  var text = /^[A-Za-z]+$/;
  if(middle_name.value.match(text))
  {
    if ((middle_name.value.)length>30)
  {
    document.getElementById('mname').innerHTML = "Only 30 Charactors please!!!!";
  }
  else
  {
    document.getElementById('mname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('fmname').innerHTML = "only alphabets please!!!!";
  }
}
    function validateForm3()
{
  var text = /^[A-Za-z]+$/;
  if(last_name.value.match(text))
  {
    if ((last_name.value.)length>30)
  {
    document.getElementById('lname').innerHTML = "Only 30 Charactors please!!!!";
  }
  else
  {
    document.getElementById('lname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('lname').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm4()
  {
    if ((mobile_1.value).length<10)
   {
    document.getElementById('mob1').innerHTML = "you have not entered 10 digits";
   }
   else
   {
    document.getElementById('mob1').innerHTML = "";
   }
  }
  function validateForm5()
  {
    if ((mobile_2.value).length<10)
   {
    document.getElementById('mob2').innerHTML = "you have not entered 10 digits";
   }
   else
   {
    document.getElementById('mob2').innerHTML = "";
   }
  }
  function validateForm6()
  {
    if ((landline.value).length<15)
   {
    document.getElementById('landli').innerHTML = "you have not entered 15 digits";
   }
   else
   {
    document.getElementById('landli').innerHTML = "";
   }
  }
  function validateForm7()
  {
    if ((local_street_addr.value).length<100)
   {
    document.getElementById('locstadd').innerHTML = "you have not entered 100 digits";
   }
   else
   {
    document.getElementById('locstadd').innerHTML = "";
   }
  }
  function validateForm8()
  {
    if ((local_area.value).length<50)
   {
    document.getElementById('locarea').innerHTML = "you have not entered 50 digits";
   }
   else
   {
    document.getElementById('locarea').innerHTML = "";
   }
  }
  function validateForm9()
  {
    if ((local_pincode.value).length<6)
   {
    document.getElementById('locpin').innerHTML = "you have not entered 6 digits";
   }
   else
   {
    document.getElementById('locpin').innerHTML = "";
   }
  }
  function validateForm10()
  {
    if ((perm_street_addr.value).length<100)
   {
    document.getElementById('permstadd').innerHTML = "you have not entered 100 digits";
   }
   else
   {
    document.getElementById('permstadd').innerHTML = "";
   }
  }
  function validateForm11()
  {
    if ((perm_area.value).length<50)
   {
    document.getElementById('permarea').innerHTML = "you have not entered 50 digits";
   }
   else
   {
    document.getElementById('permarea').innerHTML = "";
   }
  }
  function validateForm12()
  {
    if ((perm_pincode.value).length<6)
   {
    document.getElementById('permpin').innerHTML = "you have not entered 6 digits";
   }
   else
   {
    document.getElementById('permpin').innerHTML = "";
   }
  } 
  function validateForm13()
{
  var text = /^[A-Za-z]+$/;
  if(designation.value.match(text))
  {
    if ((designation.value.)length>50)
  {
    document.getElementById('desig').innerHTML = "Only 50 Charactors please!!!!";
  }
  else
  {
    document.getElementById('desig').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('desig').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm14()
{
  var text = /^[A-Za-z]+$/;
  if(edu_quali.value.match(text))
  {
    if ((edu_quali.value.)length>50)
  {
    document.getElementById('eduquli').innerHTML = "Only 50 Charactors please!!!!";
  }
  else
  {
    document.getElementById('eduquli').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('eduquli').innerHTML = "only alphabets please!!!!";
  
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
            <li class="treeview">
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
            <li class="active treeview">
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
            <li class="active">Staff Details</li>
          </ol>
        </section>
        <section>
          <center>

          <fieldset>
    <legend><h1>Staff Details</h1></legend>
    <table cellpadding="7px">
    <form name="staff_details" action="staff_details_conn.php" method="POST" enctype='multipart/form-data'>
      <tr><td><label>Staff ID:</label></td>
      <td><input type="varchar" size="12" name="staff_id" id="staff_id" required="required" onblur="validateForm1()"><span id="fname"></span></td></tr>
      <tr><td><label>First Name:</label></td>
      <td><input type="varchar" size="30" name="first_name" id="first_name" required="required" onblur="validateForm1()"><span id="fname"></span></td></tr>
      <tr><td><label>Middle Name:</label></td>
      <td><input type="varchar" size="30" name="middle_name" id="middle_name" required="required" onblur="validateForm2()"><span id="mname"></span></td></tr>
      <tr><td><label>Last Name:</label></td>
      <td><input type="varchar" size="30" name="last_name" id="last_name" required="required" onblur="validateForm3()"><span id="lname"></span></td></tr>
      <tr><td><label>Mobile - 1:</label></td>
      <td><input type="Number" size="10" name="mobile_1" id="mobile_1" required="required" onblur="validateForm4()"><span id="mob1"></span></td></tr>
      <tr><td><label>Mobile - 2:</label></td>
      <td><input type="Number" size="10" name="mobile_2" id="mobile_2" required="required" onblur="validateForm5()"><span id="mob2"></span></td></tr>
      <tr><td><label>Landline Number:</label></td>
      <td><input type="Number" size="15" name="landline" id="landine" required="required" onblur="validateForm6()"><span id="landli"></span></td></tr>
      <tr><td><label>Local Street Address:</label></td>
      <td><input type="varchar" size="100" name="local_street_addr" id="local_street_addr" required="required" onblur="validateForm7()"><span id="locstadd"></span></td></tr>
      <tr><td><label>Local Area:</label></td>
      <td><input type="varchar" size="50" name="local_area" id="local_area" required="required" onblur="validateForm8()"><span id="locarea"></span></td></tr>
      <tr><td><label>Local State:</label></td>
      <td><select name="local_state" id="local_state" required="required" onchange="getLocalCity(this.value)">  
      <option value="">Select Local State</option>    
        <?php
          $query = "SELECT * FROM addr_state_table ORDER BY state_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $state_name)
          {
        ?>
        <option value="<?php echo $state_name["state_id"]; ?>"><?php echo $state_name["state_name"]; ?></option>
        <?php
          }
        ?>
        </select></td></tr>
        <tr><td><label>Local City:</label></td>
        <td><select name="local_city" id="local_city" required="required">  
        <option value="">Select Local City</option></select>
      <tr><td><label>Local PINCODE:</label></td>
      <td><input type="Number" size="6" name="local_pincode" id="local_pincode" required="required" onblur="validateForm9()"><span id="locpin"></span></td></tr>
      <tr><td><label>Permenent Street Address:</label></td>
      <td><input type="varchar" size="100" name="perm_street_addr" id="perm_street_addr" required="required"  onblur="validateForm10()"><span id="permstadd"></span></td></tr>
      <tr><td><label>Permenent Area:</label></td>
      <td><input type="varchar" size="50" name="perm_area" id="perm_area" required="required"  onblur="validateForm11()"><span id="permarea"></span></td></tr>
      <tr><td><label>Permenent State:</label></td>
      <td><select name="perm_state" id="perm_state" required="required" onchange="getPermCity(this.value)"> 
      <option value="">Select Permenent state</option>    
        <?php
          $query = "SELECT * FROM addr_state_table ORDER BY state_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $state_name)
          {
        ?>
        <option value="<?php echo $state_name["state_id"]; ?>"><?php echo $state_name["state_name"]; ?></option>
        <?php
          }
        ?>
        </select></td></tr>
      <tr><td><label>Permenent City:</label></td>
      <td><select name="perm_city" id="perm_city" required="required">
      <option value="">Select permenent city</option></select>  
      <tr><td><label>Permenent PINCODE:</label></td>
      <td><input type="Number" size="6" name="perm_pincode" id="perm_pincode" required="required" onblur="validateForm12()"><span id="permpin"></span></td></tr>
      <tr><td><label>Gender:</label></td>
      <td><input type="radio" name="gender" id="gender" value="1" required="required">Male
      <input type="radio" name="gender" id="gender" value="0">Female</td></tr>
      <tr><td><label>Email ID:</label></td>
      <td><input type="varchar" size="50" name="email" id="email" required="required"/></td></tr>
      <tr><td><label>Marital Status:</label></td>
      <td><input type="radio" name="marital_status" id="marital_status" value="Single" required="required">Single 
      <input type="radio" name="marital_status" id="marital_status" value="Married">Married</td></tr>
      <tr><td><label>Date of Birth:</label></td>
      <td><input type="date" name="dob" id="dob" required="required"/></td></tr>
      <tr><td><label>Blood Group:</label></td>
      <td><select name="blood_grp" required="required">     <option value = "  ">Select Blood Group</option>
                                  <option value = "A+">A+</option>
                                  <option value = "A-">A-</option>
                                  <option value = "B+">B+</option>
                                  <option value = "B-">B-</option>
                                  <option value = "O+">O+</option>
                                  <option value = "O-">O-</option>
                                  <option value = "AB+">AB+</option>
                                  <option value = "AB-">AB-</option> </select></td></tr>
          <tr><td><label>Department ID :</label></td>
        <td><select name="dept_id" id="dept_id" required="required">
        <option value="">Select Department Id</option>    
        <?php
          $query = "SELECT * FROM staff_department_master ORDER BY dept_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $dept_name)
          {
        ?>
        <option value="<?php echo $dept_name["dept_id"]; ?>"><?php echo $dept_name["dept_name"]; ?></option>
        <?php
          }
        ?>
        </select></td></tr>
      <tr><td><label>Designation :</label></td>
      <td><input type="varchar" size="50" name="designation" id="designation" required="required" onblur="validateForm13()"><span id="desig"></span> </td></tr>
      <tr><td><label>Education Qualification:</label></td>
      <td><input type="varchar" size="50" name="edu_quali" id="edu_quali" onblur="validateForm14()"><span id="eduquli"></span></td></tr>
      <tr><td><label>Photograph :</label></td>
      <td><input type='file' name="photofile" required="required"></td></tr>
      <tr><td><label>CV Link :</label></td>
      <td><input type='file' name="cvfile" required="required"></td></tr>
      <tr><td><label>Join Date:</label></td>
      <td><input type="date" name="join_date" id="join_date" required="required"/></td></tr>
      <tr><td><label>Left Date:</label></td>
      <td><input type="date" name="left_date" id="left_date" /></td></tr>
      <tr><td><label>Staff Status:</label></td>
      <td><input type="radio" name="staff_status" id="staff_status" value="1" required="required">Staff
      <input type="radio" name="staff_status" id="staff_status" value="0">Ex-Staff</td></tr>      


        <tr><td align="right"><input type="submit" value="Submit" name="Submit"/>&nbsp;&nbsp;&nbsp;</td>
        <td><input type="reset" value= "Clear" name="Clear"/></td> </tr>
    
      <script>
      function getLocalCity(val)
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
  </form>
  </table>
  </fieldset>

          </center>
       
        </section>
      </div>
    </div>

 </body>
</html>