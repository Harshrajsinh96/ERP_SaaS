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
  var letters = /^[A-Z a-z]+$/;
  if (topic.value.match(letters))
  {
    if ((topic.value).length > 255)
  {
    document.getElementById('error1').innerHTML = "Max Size Is 255!";
  }
  else
  {
    document.getElementById('error1').innerHTML = "";
  }
  }
  else
  {
  document.getElementById('error1').innerHTML = "Only Alphabets Please!";
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
            <li class="active treeview">
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
            <li class="active">Circular Information</li>
          </ol>
        </section>
        <section>
          <center>

      <fieldset>
      <legend><h1>Circular Information</h1></legend>
      <table cellpadding="7px">
      <form name="circular_info" action="circular_info_conn1.php" method="POST" enctype='multipart/form-data'>

      <tr><td><label>Topic:</label></td>
      <td><input type="text" size="100" name="topic" id="topic" required="required" onblur="validateForm()" /><span id="error1"></span></td></tr>
      
      <tr><td><label>Link:</label></td>
      <td><input type='file' name="topiclink" id="topiclink" required="required"></td></tr>

      <tr><td><label>Circular Date :</label></td>
      <td><input type="date" name="circ_date" id="circ_date" required="required"/></td></tr>
      
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