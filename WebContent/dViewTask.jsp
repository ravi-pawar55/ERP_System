    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Emp Dashboard</title>
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
        <a href="dEmpDashboard.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>Dashboard</span>
        </a>
      </li>
      <li>
        <a href="dViewproject.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>View Project</span>
        </a>
      </li>
      <li>
        <a href="dViewTask.jsp">
          <i class="zmdi zmdi-view-dashboard"></i> <span>View Task</span>
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
     <%= Getset.getEmpName() %>
    <li class="nav-item">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
        <span class="user-profile"><img src="assets/images/emp.png" class="img-circle" alt="user avatar"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
       <li class="dropdown-item user-details">
        <a href="javaScript:void();">
           <div class="media">
             <div class="avatar"><img class="align-self-start mr-3" src="assets/images/emp.png" alt="user avatar"></div>
            <div class="media-body">
            <h6 class="mt-2 user-title"><%= Getset.getEmpName() %></h6>
            <p class="user-subtitle">Employee@raviconstruction.com</p>
            </div>
           </div>
          </a>
        </li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><i class="icon-power mr-2"></i> <a href="index.html">Logout</a></li>
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

   PreparedStatement pst =con.prepareStatement(" select * from task where empid=? "); 
   //pst.setString(1,request.getParameter("pid"));
   pst.setInt(1,Getset.getEmpId());
   ResultSet rs = pst.executeQuery();
   
%> <% while(rs.next()){ %>
	 <div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">Task
		  <div class="card-action">
             <div class="dropdown">
              
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
                 <table class="table align-items-center table-flush table-borderless">
                  <thead>
                  <tbody>
                     <tr>
                     <th>Task Id</th>
                     <td><%= rs.getInt(1) %></td>
                     </tr><tr>
                     <th>Project Id</th>
                     <td><%= rs.getInt(2) %></td>
                     </tr><tr>
                     <th>Title</th>
                      <td><%= rs.getString(3) %></td>
                     </tr><tr>
                     <th>Priority</th>
                      <td><%= rs.getInt(4) %></td>
                     </tr><tr>
                     <th>location</th>
                     <td><%= rs.getString(5) %></td>
                     </tr><tr>
                     <th>Start Date</th>
                      <td><%= rs.getString(6) %></td>
                     </tr><tr>
                     <th>End Date</th>
                      <td><%= rs.getString(7) %></td>
                     </tr><tr>
                     <th>Manpower Req.</th>
                     <td><%= rs.getInt(8) %></td>
                     </tr><tr>
                     <th>Emp. Id</th>
                      <td><%= rs.getInt(10) %></td>
                     </tr><tr>
                     <th>Assign By</th>
                     <td><%= rs.getString(9) %></td>
                     </tr><tr>
                     <th>Add Comment</th>
                     <td><a href="dTaskComment.jsp?tid=<%=rs.getInt(1)%>">Comment</a></td>
                     </tr>
                      <tr>
                      <th>Task Plan Image </th>
                     <td><img src="GetTaskImg.jsp?id=<%=rs.getInt(1)%>" width="600px" ; height="300px"/></td>
                     </tr>
                   </tbody>
                   </thead>
                  </table>
               </div>
	   </div>
	 </div>
	</div> <%} %>
 
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