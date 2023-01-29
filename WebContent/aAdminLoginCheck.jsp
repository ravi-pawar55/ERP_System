<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Check </title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.DbConection" %>

<% 
   Connection con = DbConection.connect();
   PreparedStatement pstm =con.prepareStatement(" select * from admin where email=? and password=?"); 
   pstm.setString(1,request.getParameter("email"));
   pstm.setString(2,request.getParameter("pwd"));
   
   ResultSet rs = pstm.executeQuery();
   
   if(rs.next())
   {
	   response.sendRedirect("aAdminDashboard.jsp");
   }else
   {
	   response.sendRedirect("aAdminLogin.html");
   }
   
%>
	
</body>
</html>