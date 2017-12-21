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
  if (enr_no.value.match(numbers)) {      
  if ((enr_no.value).length != 12) 
  {
    document.getElementById('error1').innerHTML = "Invalid Enrollment Number!";
  }
  else
  {
    document.getElementById('error1').innerHTML = "";
  }
 }
  else{
        document.getElementById('error1').innerHTML = "Only Numbers Please!";
  }
}
 function validateForm1()
 {
  var text = /^[A-Za-z]+$/;
  
  if(f_first_name.value.match(text)) 
  {
    if ((f_first_name.value.)length>30)
  {
    document.getElementById('ffname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('ffname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('ffname').innerHTML = "Only Alphabets Please!";
  }
  
}
  function validateForm2()
{
  var text = /^[A-Za-z]+$/;
  if(f_middle_name.value.match(text))
  {
    if ((f_middle_name.value.)length>30)
  {
    document.getElementById('fmname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('fmname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('fmname').innerHTML = "Only Alphabets Please!";
  }
}
    function validateForm3()
{
  var text = /^[A-Za-z]+$/;
  if(f_last_name.value.match(text))
  {
    if ((f_last_name.value.)length>30)
  {
    document.getElementById('flname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('flname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('flname').innerHTML = "Only Alphabets Please!";
  
  }
}
  function validateForm4()
{
  if ((f_contact.value).length != 10)
   {
    document.getElementById('fphone').innerHTML = "Invalid Number!";  
   }
   else
   {
    document.getElementById('fphone').innerHTML = "";
   }
}
  function validateForm5()
{
  var text = /^[A-Za-z]+$/;
  if(f_ed_qual.value.match(text))
  {
    if ((f_ed_qual.value.)length>50)
  {
    document.getElementById('fedqual').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('fedqual').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('fedqual').innerHTML = "Only Alphabets Please!";
  
  }
}
function validateForm6()
{
  var text = /^[A-Za-z]+$/;
  if(f_occupation.value.match(text))
  {
    if ((f_occupation.value.)length>50)
  {
    document.getElementById('foccu').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('foccu').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('foccu').innerHTML = "Only Alphabets Please!";
  
  }
}
function validateForm7(){
        
  if ((f_ann_income.value).length>8) 
  {
    document.getElementById('fannin').innerHTML = "No More Than 8 Digits!";
  }
  else
  {
    document.getElementById('fannin').innerHTML = "";
  }
 }

  function validateForm8()
 {
  var text = /^[A-Za-z]+$/;
  
  if(m_first_name.value.match(text)) 
  {
    if ((m_first_name.value.)length>30)
  {
    document.getElementById('mfname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('mfname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('mfname').innerHTML = "Only Alphabets Please!";
  }
  
}
  function validateForm9()
{
  var text = /^[A-Za-z]+$/;
  if(m_middle_name.value.match(text))
  {
    if ((m_middle_name.value.)length>30)
  {
    document.getElementById('mmname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('mmname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('mmname').innerHTML = "Only Alphabets Please!";
  }
}
    function validateForm10()
{
  var text = /^[A-Za-z]+$/;
  if(m_last_name.value.match(text))
  {
    if ((m_last_name.value.)length>30)
  {
    document.getElementById('mlname').innerHTML = "Only 30 Charactors Please!";
  }
  else
  {
    document.getElementById('mlname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('mlname').innerHTML = "Only Alphabets Please!";
  
  }
}
  function validateForm11()
{
  if ((m_contact.value).length != 10)
   {
    document.getElementById('mphone').innerHTML = "Invalid Number!";  
   }
   else
   {
    document.getElementById('mphone').innerHTML = "";
   }
}
function validateForm12()
{
  var text = /^[A-Za-z]+$/;
  if(m_ed_qual.value.match(text))
  {
    if ((m_ed_qual.value.)length>50)
  {
    document.getElementById('medqual').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('medqual').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('medqual').innerHTML = "Only Alphabets Please!";
  
  }
}
function validateForm13()
{
  var text = /^[A-Za-z]+$/;
  if(m_occupation.value.match(text))
  {
    if ((m_occupation.value.)length>50)
  {
    document.getElementById('moccu').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('moccu').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('moccu').innerHTML = "Only Alphabets Please!";
  
  }
}
function validateForm14()
{
        
  if ((m_ann_income.value).length>8) 
  {
    document.getElementById('mannin').innerHTML = "No More Then 8 Digits!";
  }
  else
  {
    document.getElementById('mannin').innerHTML = "";
  }
 }
  function validateForm15()
 {
  var text = /^[A-Za-z]+$/;
  
  if(g_first_name.value.match(text)) 
  {
    if ((g_first_name.value.)length>50)
  {
    document.getElementById('gfname').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('gfname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('gfname').innerHTML = "Only Alphabets Please!";
  }
  
}
  function validateForm16()
{
  var text = /^[A-Za-z]+$/;
  if(g_middle_name.value.match(text))
  {
    if ((g_middle_name.value.)length>50)
  {
    document.getElementById('gmname').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('gmname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('gmname').innerHTML = "Only Alphabets Please!";
  }
}
    function validateForm17()
{
  var text = /^[A-Za-z]+$/;
  if(g_last_name.value.match(text))
  {
    if ((g_last_name.value.)length>50)
  {
    document.getElementById('glname').innerHTML = "Only 50 Charactors Please!";
  }
  else
  {
    document.getElementById('glname').innerHTML = "";
  }
  }
  else
  {
    document.getElementById('glname').innerHTML = "Only Alphabets Please!";
  
  }
}
  function validateForm18()
{
  if ((g_contact.value).length!=10)
   {
    document.getElementById('gphone').innerHTML = "Invalid Number!";  
   }
   else
   {
    document.getElementById('gphone').innerHTML = "";
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
            <li class="active treeview">
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
            <li class="active">Parent Detail Master</li>
          </ol>
        </section>
        <section>
          <center>

    <fieldset>
    <legend><h1>Parent Detail Master</h1></legend>
    <table cellpadding="7px">
    <form name="parent_detail_master" action="parent_detail_master_conn.php" method="POST" enctype='multipart/form-data'>

      <tr><td><label>Enrollment Number:</label></td>
      <td><input type="Number" size="12" name="enr_no" id="enr_no" required="required" onblur="validateForm()" /><span id="error1"></span></td></tr>
      <tr><td><label>Father First Name:</label></td>
      <td><input type="varchar" size="30" name="f_first_name" id="f_first_name" required="required" onblur="validateForm1()" /><span id="ffname"></span></td></tr>
      <tr><td><label>Father Middle Name:</label></td>
      <td><input type="varchar" size="30" name="f_middle_name" id="f_middle_name" required="required" onblur="validateForm2()" /><span id="fmname"></span></td></tr>
      <tr><td><label>Father Last Name:</label></td>
      <td><input type="varchar" size="30" name="f_last_name" id="f_last_name" required="required" onblur="validateForm3()" /><span id="flname"></span></td></tr>
      <tr><td><label>Father Contact:</label></td>
      <td><input type="Number" size="10" name="f_contact" id="f_contact" required="required" onblur="validateForm4()"/><span id="fphone"></span></td></tr>
      <tr><td><label>Father Email ID:</label></td>
      <td><input type="varchar" size="50" name="f_email" id="f_email" required="required"/></td></tr>
      <tr><td><label>Father Education Qualification:</label></td>
      <td><input type="varchar" size="50" name="f_ed_qual" id="f_ed_qual" required="required" onblur="validateForm5()" /><span id="fedqual"></span></td></tr>
      <tr><td><label>Father Occupation:</label></td>
      <td><input type="varchar" size="50" name="f_occupation" id="f_occupation" required="required" onblur="validateForm6()" /><span id="foccu"></span></td></tr>
      <tr><td><label>Father Annual Income:</label></td>
      <td><input type="Number" size="8" name="f_ann_income" id="f_ann_income" required="required" onblur="validateForm7()" /><span id="fannin"></span></td></tr>
      <tr><td><label>Father Date of Birth:</label></td>
      <td><input type="date" name="f_dob" id="f_dob" required="required"/></td></tr>
      <tr><td><label>Mother First Name:</label></td>
      <td><input type="varchar" size="30" name="m_first_name" id="m_first_name" required="required" onblur="validateForm8()" /><span id="mfname"></span></td></tr>
      <tr><td><label>Mother Middle Name:</label></td>
      <td><input type="varchar" size="30" name="m_middle_name" id="m_middle_name" required="required" onblur="validateForm9()" /><span id="mmname"></span></td></tr>
      <tr><td><label>Mother Last Name:</label></td>
      <td><input type="varchar" size="30" name="m_last_name" id="m_last_name" required="required" onblur="validateForm10()" /><span id="mlname"></span></td></tr>
      <tr><td><label>Mother Contact:</label></td>
      <td><input type="Number" size="10" name="m_contact" id="m_contact" required="required" onblur="validateForm11()" /><span id="mphone"></span></td></tr>
      <tr><td><label>Mother Email ID:</label></td>
      <td><input type="varchar" size="50" name="m_email" id="m_email" required="required"/></td></tr>
      <tr><td><label>Mother Education Qualification:</label></td>
      <td><input type="varchar" size="50" name="m_ed_qual" id="m_ed_qual" required="required" onblur="validateForm12()" /><span id="medqual"></span></td></tr>
      <tr><td><label>Mother Occupation:</label></td>
      <td><input type="varchar" size="50" name="m_occupation" id="m_occupation" required="required" onblur="validateForm13()" /><span id="moccu"></span></td></tr>
      <tr><td><label>Mother Annual Income:</label></td>
      <td><input type="Number" size="8" name="m_ann_income" id="m_ann_income" required="required" onblur="validateForm14()" /><span id="mannin"></span></td></tr>
      <tr><td><label>Mother Date of Birth:</label></td>
      <td><input type="date" name="m_dob" id="m_dob" required="required"/></td></tr>
      <tr><td><label>Guardian First Name:</label></td>
      <td><input type="varchar" size="50" name="g_first_name" id="g_first_name" onblur="validateForm15()" /><span id="gfname"></span></td></tr>
      <tr><td><label>Guardian Middle Name:</label></td>
      <td><input type="varchar" size="50" name="g_middle_name" id="g_middle_name" onblur="validateForm16()" /><span id="gmname"></span></td></tr>
      <tr><td><label>Guardian Last Name:</label></td>
      <td><input type="varchar" size="50" name="g_last_name" id="g_last_name" onblur="validateForm17()" /><span id="glname"></span></td></tr>
      <tr><td><label>Guardian Contact:</label></td>
      <td><input type="Number" size="10" name="g_contact" id="g_contact" onblur="validateForm18()" /><span id="gphone"></span></td></tr>
      <tr><td><label>Guardian Email ID:</label></td>
      <td><input type="varchar" size="50" name="g_email" id="g_email"/></td></tr>
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