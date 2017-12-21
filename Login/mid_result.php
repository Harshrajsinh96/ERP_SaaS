<?php
  include_once "connection.php";
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>FACULTY | Activities</title>
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
    if (enr_no.value.match(numbers))
    {
    if ((enr_no.value).length != 12)
    {
      document.getElementById('error1').innerHTML = "Size Is 12!";
    }
    else
    {
      document.getElementById('error1').innerHTML = "";
    }
    }
    else
    {
      document.getElementById('error1').innerHTML = "Only Numbers Please!";
      return false;
    }
    }

    function validateForm1()
    {
      var numbers = /^[0-9]+$/; 
      if (sub_marks.value.match(numbers))
    {
      if ((sub_marks.value).length > 2)
    {
      document.getElementById('error2').innerHTML = "Max Size Is 2!";
    }
    else
    {
      document.getElementById('error2').innerHTML = "";
    }
    }
    else
    {
      document.getElementById('error2').innerHTML = "Only Numbers Please!";
      return false;
    }
    }

    function validateForm2()
    {
      var numbers = /^[0-9]+$/; 
      if (total_marks.value.match(numbers))
     {
      if ((total_marks.value).length != 2)
    {
     document.getElementById('error3').innerHTML = "Max Size Is 2!";
    }
    else
    {
      document.getElementById('error3').innerHTML = "";
    }
    }
    else
    {
      document.getElementById('error3').innerHTML = "Only Numbers Please!";
      return false;
    }
    }
  </script>
 </head>
  
 <body class="skin-blue">
    <div class="wrapper">
      <header class="main-header">
        <a href="index_faculty.php" class="logo"><b>Faculty </b>AIT</a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="files/faculty-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">FACULTY</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="user-header">
                    <img src="files/faculty-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      FACULTY - Ahmedabad Institute of Technology
                      <small>Established 2004</small>
                    </p>
                  </li>
                   <li class="user-footer">
                      <div class="pull-left">
                      <button style="height:32px; width:75px">FACULTY</button>
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
              <img src="files/faculty-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>Faculty - AIT</p>
              <i class="fa fa-circle text-success"></i> Logged In</a>
            </div>
          </div>
          
          <ul class="sidebar-menu">
            <li class="header">MODULES</li>
            <li class="treeview">
              <a href="index_faculty.php">
              <i class="fa fa-edit"></i> <span>Home</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="assignment_master.php">
                <i class="fa fa-edit"></i> <span>Assignment Master</span> 
              </a>
            </li>
            <li class="treeview">
              <a href="circular_info1.php">
                <i class="fa fa-edit"></i> <span>Circular Information</span>
               </a>
            </li>
            <li>
              <a href="media_details1.php">
                <i class="fa fa-edit"></i> <span>Media Details</span>
              </a>
            </li>
            <li class="active treeview">
              <a href="mid_result.php">
                <i class="fa fa-edit"></i> <span>Midsem Result</span>
              </a>
            </li>
                       
        </section>
      </aside>

      <div class="content-wrapper">
        <section class="content-header">
          <h1>
            FACULTY
            <small>Ahmedabad Institute of Technology</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index_faculty.php"><i class="fa fa-edit"></i> Home</a></li>
            <li class="active">Midsem Result</li>
          </ol>
        </section>
        <section>
          <center>

    <fieldset>
    <legend><h1>Midsem Result</h1></legend>
    <table cellpadding="7px">
    <form name="mid_result" action="mid_result_conn.php" method="POST">

    <tr><td><label>Enrollment Number :</label></td>
    <td><input type="varchar" size="12" name="enr_no" id="enr_no" required="required"
    onblur="validateForm()" /><span id="error1"></span></td></tr>
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
    <td><select name="sem_id" id="sem_id" required="required" onchange="getSub(this.value)">
                <option value = "">Select Semester</option>
                </select></td></tr>
    <tr><td><label>Subject :</label></td>
    <td><select name="sub_id" id="sub_id" required="required" >
                <option value = "">Select Sub</option>
                </select></td></tr>
    <tr><td><label>Subject Marks :</label></td>
    <td><input type="tinyint" size="2" name="sub_marks" id="sub_marks" required="required" onblur="validateForm1()"/><span id="error2"></span></td></tr>
    <tr><td><label>Exam Type ID :</label></td>
    <td><select name="exam_type_id" required="required">
        <option value="">Select ExamId</option>
        <?php
          $query = "SELECT * FROM exam_type_master ORDER BY exam_type"; 
          $results = mysqli_query($connection, $query);

          foreach ($results as $exam_type) {
        ?>
        <option value="<?php echo $exam_type["exam_type_id"]; ?>"><?php echo $exam_type["exam_type"]; ?></option>
        <?php
          }
        ?>
    <tr><td><label>Total Marks :</label></td>
    <td><input type="tinyint" size="2" name="total_marks" id="total_marks" required="required" onblur="validateForm2()"/><span id="error3"></span></td></tr>
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