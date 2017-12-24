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

    <script>
      function validateForm()
      {
        
  if ((enr_no.value).length!=12) 
  {
    document.getElementById('enrno').innerHTML = "your Enrollment number should contain minimum 12 digits";
  }
  else
  {
    document.getElementById('enrno').innerHTML = "";
  }
}
   function validateForm1()
 {
  var text = /^[A-Za-z]+$/;
  
  if(ssc_board.value!=(text)) 
  {
    if ((ssc_board.value.)length>100)
  {
    document.getElementById('sscb').innerHTML = "Only 100 Charactors please!!!!";
  }
  else
  {
    document.getElementById('sscb').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('sscb').innerHTML = "only alphabets please!!!!";
  }
  
}
  function validateForm2()
{
  var text = /^[A-Za-z]+$/;
  if(ssc_medium.value!=(text))
  {
    if ((ssc_medium.value.)length>15)
  {
    document.getElementById('sscm').innerHTML = "Only 15 Charactors please!!!!";
  }
  else
  {
    document.getElementById('sscm').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('sscm').innerHTML = "only alphabets please!!!!";
  }
}
  function validateForm3()
{
  var text = /^[A-Za-z]+$/;
  if(ssc_school.value!=(text))
  {
    if ((ssc_school.value.)length>60)
  {
    document.getElementById('sscs').innerHTML = "Only 60 Charactors please!!!!";
  }
  else
  {
    document.getElementById('sscs').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('sscs').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm4()
{
  if ((ssc_pass_year.value).length != 4)
   {
    document.getElementById('sscpy').innerHTML = "you have to enter 4 digits";  
   }
   else
   {
    document.getElementById('sscpy').innerHTML = "";
   }
}
  function validateForm5()
{
  var text = /^[A-Za-z]+$/;
  if(h_ed_type.value!=(text))
  {
    if ((h_ed_type.value.)length>8)
  {
    document.getElementById('hed').innerHTML = "Only 8 Charactors please!!!!";
  }
  else
  {
    document.getElementById('hed').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('hed').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm6()
{
  var text = /^[A-Za-z]+$/;
  if(h_ed_board.value!=(text))
  {
    if ((h_ed_board.value.)length>100)
  {
    document.getElementById('hedb').innerHTML = "Only 100 Charactors please!!!!";
  }
  else
  {
    document.getElementById('hedb').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('hedb').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm7()
{
  var text = /^[A-Za-z]+$/;
  if(h_ed_medium.value!=(text))
  {
    if ((h_ed_medium.value.)length>15)
  {
    document.getElementById('hedm').innerHTML = "Only 15 Charactors please!!!!";
  }
  else
  {
    document.getElementById('hedm').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('hedm').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm8()
{
  var text = /^[A-Za-z]+$/;
  if(h_ed_inst.value!=(text))
  {
    if ((h_ed_inst.value.)length>100)
  {
    document.getElementById('hedi').innerHTML = "Only 100 Charactors please!!!!";
  }
  else
  {
    document.getElementById('hedi').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('hedi').innerHTML = "only alphabets please!!!!";
  
  }
}
  function validateForm9()
{
  if ((h_ed_pass_year.value).length != 4)
   {
    document.getElementById('hedpy').innerHTML = "you have to enter 4 digits";  
   }
   else
   {
    document.getElementById('hedpy').innerHTML = "";
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
            <li class="active treeview">
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
            <li class="active">Student Previous Academic Details</li>
          </ol>
        </section>
        <section>
          <center>

          <fieldset>
    <legend><h1>Student Previous Academic Details</h1></legend>
    <table cellpadding="7px">
    <form name="student_previous_acad_details" action="student_previous_acad_details_conn.php" method="POST">

      <tr><td><label>Enrollment Number:</label></td>
      <td><input type="Number" size="12" name="enr_no" id="enr_no" required="required" onblur="validateForm()" /><span id="enrno"></span></td></tr>
      <tr><td><label>SSC Board:</label></td>
      <td><input type="varchar" size="100" name="ssc_board" id="ssc_board" required="required" onblur="validateForm1()" /><span id="sscb"></span></td></tr>
      <tr><td><label>SSC Medium:</label></td>
      <td><input type="varchar" size="15" name="ssc_medium" id="ssc_medium" required="required" onblur="validateForm2()" /><span id="sscm"></span> </td></tr>
      <tr><td><label>SSC School:</label></td>
      <td><input type="varchar" size="60" name="ssc_school" id="ssc_school" required="required" onblur="validateForm3()" /><span id="sscs"></span></td></tr>
      <tr><td><label>SSC Result:</label></td>
      <td><input type="double" name="ssc_result" id="ssc_result" required="required"/></td></tr>
      <tr><td><label>SSC Passing Year:</label></td>
      <td><input type="year" size="4" name="ssc_pass_year" id="ssc_pass_year" required="required" onblur="validateForm4()" /><span id="sscpy"></span></td></tr>
      <tr><td><label>Higher Education Type:</label></td>
      <td><input type="varchar" size="8" name="h_ed_type" id="h_ed_type" required="required" onblur="validateForm5()" /><span id="hed"></span></td></tr>
      <tr><td><label>Higher Education Board:</label></td>
      <td><input type="varchar" size="100" name="h_ed_board" id="h_ed_board" required="required" onblur="validateForm6()" /><span id="hedb"></span></td></tr>
      <tr><td><label>Higher Education Medium:</label></td>
      <td><input type="varchar" size="15" name="h_ed_medium" id="h_ed_medium" required="required" onblur="validateForm7()" /><span id="hedm"></span></td></tr>
      <tr><td><label>Higher Education Institute:</label></td>
      <td><input type="varchar" size="100" name="h_ed_inst" id="h_ed_inst" required="required" onblur="validateForm8()" /><span id="hedi"></span></td></tr>
      <tr><td><label>Higher Education Result:</label></td>
      <td><input type="double" name="h_ed_result" id="h_ed_result" required="required"/></td></tr>
      <tr><td><label>Higher Education Pass Year:</label></td>
      <td><input type="year" size="4" name="h_ed_pass_year" id="h_ed_pass_year" required="required" onblur="validateForm9()" /><span id="hedpy"></span></td></tr>
      
        <tr><td align="right"><input type="submit" value="Submit" name="Submit"/>&nbsp;&nbsp;&nbsp;</td>
        <td><input type="reset" value= "Clear" name="Clear"/></td></tr> 
    </form>
</table>
  </fieldset>

          </center>
       
        </section>
      </div>
    </div>

 </body>
</html>