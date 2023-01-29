 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
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
        <a href="aAdminDashboard.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
      <li>
        <a href="aAddEng.jsp"  >
          <i class="zmdi zmdi-account-circle"></i> <span>Add Engineer/Architect</span>
        </a>
      </li>
       <li>
        <a href="aAddEmp.jsp" >
          <i class="zmdi zmdi-account-circle"></i> <span>Add Employee</span>
        </a>
      </li><li>
        <a href="aAddDept.jsp" >
          <i class="zmdi zmdi-account-circle"></i> <span>Add Department</span>
        </a>
      </li><li>
        <a href="aNewProject.jsp">
          <i class="zmdi zmdi-account-circle"></i> <span>Create New Project</span>
        </a>
      </li>
      <li>
        <a href="aViewEmp.jsp">
          <i class="zmdi zmdi-face"></i> <span>View Employees</span>
        </a>
      </li>
      <li>
        <a href="aViewDept.jsp">
          <i class="zmdi zmdi-face"></i> <span> View Departments</span>
        </a>
      </li>
      <li>
        <a href="aViewproject.jsp">
          <i class="zmdi zmdi-grid"></i> <span>View Project</span>
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
     Admin
    <li class="nav-item">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
        <span class="user-profile"><img src="assets/images/Admin.jpg" class="img-circle" alt="user avatar"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
       <li class="dropdown-item user-details">
        <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="assets/images/Admin.jpg" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-2 user-title">Ravi Pawar</h6>
            <p class="user-subtitle">admin@raviconstruction.com</p>
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

	<div class="card mt-3">
    <div class="card-content">
        <div class="row row-group m-0">
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">50+</h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Projects<span class="float-right"><i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">1,20,57,550</h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Revenue <span class="float-right">+12% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">150+</h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Sites<span class="float-right"><i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">1020</h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Staff<span class="float-right"><i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
        </div>
    </div>
 </div>  
 

  <!--End Dashboard Content-->
  
<% 
   Connection con = DbConection.connect();
   PreparedStatement pstm =con.prepareStatement(" select * from project ");
   //pstm.setInt(1,Getset.getEnggId());
   ResultSet rs2 = pstm.executeQuery();
   
%>
	  
	 <div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">Active Projects List
		  <div class="card-action">
             <div class="dropdown">
              
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
                 <table class="table align-items-center table-flush table-borderless">
                  <thead>
                   <tr>
                     <th>Project ID</th>
                     <th>Name</th>
                     <th>Address</th>
                      
                     </tr>
                   </thead>
                   <tbody>
                   <% while(rs2.next()){ %>
                    <tr>
                     <td><%= rs2.getInt(1) %></td>
                     <td><%= rs2.getString(2) %></td>
                     <td><%= rs2.getString(3) %></td>
                      
                   </tr>
                   <%} %>
                 </tbody></table>
               </div>
	   </div>
	 </div>
	</div>
	
	
<% 
    
   PreparedStatement pstmt=con.prepareStatement("(select * from reports order by rid desc limit 3) order by rid ");
   //pstm.setInt(1,10);
   //pstm.setString(1,request.getParameter("pid"));
   ResultSet rs = pstmt.executeQuery();
%>
	 <div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">Recents Reports Summary
		  <div class="card-action">
             <div class="dropdown">
              
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
                 <table class="table align-items-center table-flush table-borderless">
                  <thead>
                   <tr>
                     <th>Report ID</th>
                     <th>Project ID</th>
                      
                     <th>Date</th>
                      <th>Work Done (%) </th>
                     </tr>
                   </thead>
                   <tbody>
                   <% while(rs.next()){ %>
                    <tr>
                     <td><%= rs.getInt(1) %></td>
                     <td><%= rs.getInt(2) %></td>
                     <td><%= rs.getTimestamp(14) %></td>
                     <td><%= rs.getInt(9) %></td>
                      
                   </tr>
                   <%} %>
                 </tbody></table>
               </div>
	   </div>
	 </div>
	</div>
	
	<% 
    
   PreparedStatement pst=con.prepareStatement("(select * from Comments order by cid desc limit 3 ) order by cid");
   //pstm.setInt(1,10);
   //pstm.setString(1,request.getParameter("pid"));
   ResultSet rs1 = pst.executeQuery();
%>
	 <div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">Recents Comments On Task
		  <div class="card-action">
             <div class="dropdown">
              
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
                 <table class="table align-items-center table-flush table-borderless">
                  <thead>
                   <tr>
                     <th>Comment ID</th>
                     <th>Task ID</th>
                     <th>Comment</th>
                     <th>Emp. ID</th>
                     <th>Dept. ID</th>
           
                     </tr>
                   </thead>
                   <tbody>
                   <% while(rs1.next()){ %>
                    <tr>
                     <td><%= rs1.getInt(1) %></td>
                     <td><%= rs1.getInt(2) %></td>
                     <td><%= rs1.getString(3) %></td>
                     <td><%= rs1.getInt(4) %></td>
                     <td><%= rs1.getInt(5) %></td>
                      
                   </tr>
                   <%} %>
                 </tbody></table>
               </div>
	   </div>
	 </div>
	</div>                          
	  
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
          <b>Project By : Ravindra Pawar CSE Student ( RCPIT Shirpur )</b>
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