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
            <li class="active treeview">
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
            <li class="active">Exam Schedule Master</li>
          </ol>
        </section>
        <section>
          <center>
          
    <fieldset>
    <legend><h1>Exam Schedule Master</h1></legend>
    <table cellpadding="7px">
    <form name="exam_schedule_master" action="exam_schedule_master_conn.php" method="POST">

      <tr><td><label>Discipline Name :</label></td>
      <td><select name="discipline_id" onchange="getBranch(this.value),getSem(this.value),setDiscipline(this.value)" >
        <option value="">Select Discipline</option>
        <?php
          $query = "SELECT * FROM discipline_master ORDER BY discipline_name"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $discipline_name) {
        ?>
        <option value="<?php echo $discipline_name["discipline_id"]; ?>"><?php echo $discipline_name["discipline_name"]; ?></option>
        <?php
          }
        ?>
      </select></td></tr>
      <tr><td><label>Branch Name :</label></td>
        <td><select name="branch_id" id="branch_id" required="required" onchange="setBranch(this.value)"> 
                <option value = "">Select Branch</option>
                </select></td></tr>
      <tr><td><label>Semester :</label></td>
        <td><select name="sem_id" id="sem_id" required="required" onchange="getDiv(this.value),getSub(this.value)">
                <option value = "">Select Semester</option>
                </select></td></tr>
      <tr><td><label>Division :</label></td>
        <td><select name="division_id" id="division_id" required="required">
                <option value = "">Select Division</option>
                </select></td></tr>
      <tr><td><label>Exam Type ID :</label></td>
      <td><select name="exam_type_id" id="exam_type_id" required="required">
                <option value = "">Select Exam Type</option>
                <?php
                $query = "SELECT * FROM exam_type_master ORDER BY exam_type"; 
                $results = mysqli_query($connection, $query);

              foreach ($results as $exam_type)
                {
                ?>
                <option value="<?php echo $exam_type["exam_type_id"]; ?>"><?php echo $exam_type["exam_type"]; ?></option>
                <?php
                }
                ?></select></td></tr>
      <tr><td><label>Subject :</label></td>
        <td><select name="sub_id" id="sub_id" required="required" >
                <option value = "">Select Sub</option>
                </select></td></tr>
      <tr><td><label>Date :</label></td>
      <td><input type="date" name="date" id="date" required="required"/></td></tr>
      <tr><td><label>Time :</label></td>
      <td><input type="time" name="time" id="time" required="required"/></td></tr>
          
      <tr><td align="right"><input type="submit" value="Submit" name="Submit"/>&nbsp;&nbsp;&nbsp;</td>
      <td><input type="reset" value= "Clear" name="Clear"/></td></tr>
    
     <script>
      function setBranch(data) { 
            hr = data;       
        }


      function setDiscipline(data) { 
            disci = data;       
        }

      function getBranch(val)
      {
          $.ajax({
          type: "POST",
          url: "selectbranch.php",
          data:'discipline_id='+val,
          success: function(data){
          $("#branch_id").html(data);
          }
          });
      }
      function getSem(val)
      {
          $.ajax({
          type: "POST",
          url: "selectsem.php",
          data:'discipline_id='+val,
          success: function(data){
          $("#sem_id").html(data);
          }
          });
      }
      function getSub(val)
      {
          $.ajax({
          type: "POST",
          url: "selectsub.php",
          data:'discipline_id='+disci+'&branch_id='+hr+'&sem_id='+val,
          success: function(data){
          $("#sub_id").html(data);
          }
          });
      }
      function getDiv(val)
      {
          $.ajax({
          type: "POST",
          url: "selectdivision.php",
          data:'sem_id='+val+'&branch_id='+hr,
          success: function(data){
          $("#division_id").html(data);
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