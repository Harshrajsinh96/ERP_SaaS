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
    if (ass_no.value.match(numbers))
    {
    if ((ass_no.value).length > 2)
    {
    document.getElementById('error1').innerHTML = "Max Size Is 2!";
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
            <li class="active treeview">
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
            <li class="treeview">
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
            <li class="active">Assignment Master</li>
          </ol>
        </section>
        <section>
          <center>

      <fieldset>
      <legend><h1>Assignment Master</h1></legend>
      <table cellpadding="7px">
      <form name="assingment_master" action="assignment_master_conn.php" method="POST" enctype='multipart/form-data'>
      
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
      <tr><td><label>Subject :</label></td>
        <td><select name="sub_id" id="sub_id" required="required" >
                <option value = "">Select Sub</option>
                </select></td></tr>
      <tr><td><label>Division :</label></td>
        <td><select name="division_id" id="division_id" required="required">
                <option value = "">Select Division</option>
                </select></td></tr>
      <tr><td><label>Assignment Number :</label></td>
      <td><input type="number" size="2" name="ass_no" id="ass_no" required="required" onblur="validateForm()" /><span id="error1"></span></td></tr>
      <tr><td><label>Link :</label></td>
      <td><input type="file" name="assfile" id="assfile" required="required"></td></tr>
      <tr><td><label>Assign Date :</label></td>
      <td><input type="date" name="assign_date" id="assign_date" required="required"/></td></tr>
      <tr><td><label>Submission Date :</label></td>
      <td><input type="date" name="submission_date" id="submission_date" required="required"/></td></tr>
      
      <tr><td align="right"><input type="submit" value="Submit" name="Submit"/>&nbsp;&nbsp;&nbsp;</td>
      <td><input type="reset" value= "Clear" name="Clear"/><td><tr>

      <script>
      function setBranch(data)
      { 
            hr = data;       
        }
      function setDiscipline(data)
      { 
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

       
        </section>
      </div>
    </div>

 </body>
</html>