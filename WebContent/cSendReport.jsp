    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dept</title>
<!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
  <!-- simplebar CSS-->
  <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
</head>
<body class="bg-theme bg-theme1">

<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>
<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="index.html">
       <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
       <h5 class="logo-text">Ravi Construction</h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li>
        <a href="cDeptDashboard.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
      <li>
      <a href="cViewEmp.jsp">
          <i class="zmdi zmdi-face"></i> <span>View Employees</span>
        </a>
      </li>
       
      <li>
        <a href="cViewproject.jsp">
          <i class="zmdi zmdi-grid"></i> <span>View Projects</span>
        </a>
      </li>
       
      <li>
        <a href="index.html" >
          <i class="zmdi zmdi-lock"></i> <span>Logout</span>
        </a>
      </li>
    </ul>
   
   </div>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
      </ul>
     
  <ul class="navbar-nav align-items-center right-nav-link">
      <%= Getset.getDeptName() %>
    <li class="nav-item">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
        <span class="user-profile"><img src="assets/images/dept.jpg" class="img-circle" alt="user avatar"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
       <li class="dropdown-item user-details">
        <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="assets/images/dept.jpg" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-2 user-title"> <%= Getset.getDeptName() %></h6>
            <p class="user-subtitle">Dept@raviconstruction.com</p>
            </div>
           </div>
          </a>
        </li>
         
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-power mr-2"></i><a href="index.html">Logout</a></li>
      </ul>
    </li>
  </ul>
</nav>
</header>
<!--End topbar header-->

<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">

  <!--Start Dashboard Content-->
  <% Connection con = DbConection.connect();

   PreparedStatement pst =con.prepareStatement(" select * from task where pid=? and deptid=? "); 
   pst.setString(1,request.getParameter("pid"));
   pst.setInt(2,Getset.getDeptId());
   ResultSet rs = pst.executeQuery();
   
   if(rs.next())
   System.out.println("Proceed");
   else
   response.sendRedirect("cViewproject.jsp");
	   
 %>	 	 
 
  <div class="row mt-3">
      <div class="col-lg-6">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Report</div>
           <hr>
            <form action="SendReport" method="post" enctype="multipart/form-data">
           <div class="form-group">
            <label for="input-1">Weather</label>
            <input type="text" class="form-control" name="weather" placeholder="Weather Condition">
           </div>
           <div class="form-group">
            <label for="input-2">Weather Impact</label>
            <input type="text" class="form-control" name="wimp" placeholder="Any Impact">
           </div>
           <div class="form-group">
            <label for="input-3">Accident</label>
            <input type="text" class="form-control" name="acci" placeholder="If any else N/A">
           </div>
           <div class="form-group">
            <label for="input-4">Injury</label>
            <input type="text" class="form-control" name="inj" placeholder="If any else N/A">
           </div>
           <div class="form-group">
            <label for="input-5">Workdone</label>
            <input type="text" class="form-control" name="wd" placeholder="Work done %">
           </div>
            
           <div class="form-group">
            <label for="input-5">Description</label>
            <input type="textarea" class="form-control" name="descr" placeholder="Add Description in detail">
           </div>
           
           <div class="form-group">
            <label for="input-6">Equipments used</label>
            <input type="text" class="form-control" name="eqiuse" placeholder="Enter Details">
           </div>
           <div class="form-group">
            <label for="input-7">Material Delivery</label>
            <input type="text" class="form-control" name="matdel" placeholder="Enter type">
           </div>
           <div class="form-group">
            <label for="input-8">Material Quantity</label>
            <input type="text" class="form-control" name="matquan" placeholder="Enter Quantity">
           </div>
          <div class="form-group">
            <label for="input-9">Add Image</label>
            <input type="file" class="form-control" name="img" >
           </div>
           
           <div class="form-group">
            <button type="submit" class="btn btn-light btn-round px-5">Send</button>
          </div>
          
          <% 
             Getset.setPid(Integer.parseInt(request.getParameter("pid")));
            		
           %>
          
          </form>
         </div>
         </div>
      </div>
    </div><!--End Row-->
 

      <!--End Dashboard Content-->
	  
	<!--start overlay-->
		  <div class="overlay toggle-menu"></div>
		<!--end overlay-->
		
    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--Start footer-->
	<footer class="footer">
      <div class="container">
        <div class="text-center">
          <b>Project By : Ravindra Pawar CSE Student ( RCPIT Shirpur )
          <br>
          Under Guidence of : Engg. Sunil Joshi Sir ( R3sys Ltd. Nashik )</b>
        </div>
      </div>
    </footer>
	<!--End footer-->
	
  <!--start color switcher-->
   <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
		<li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>
      
     </div>
   </div>
  <!--end color switcher-->
   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
  <!-- Chart js -->
  
  <script src="assets/plugins/Chart.js/Chart.min.js"></script>
 
  <!-- Index js -->
  <script src="assets/js/index.js"></script>

</body>
</html>