<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Delete Project</title>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>
<body>
<%
   Connection con =  DbConection.connect();
   PreparedStatement psts =con.prepareStatement("delete from project where pid=?"); 
   psts.setInt(1,Integer.parseInt(request.getParameter("id")));
   int i = psts.executeUpdate();
   
   if(i>0)
	   response.sendRedirect("aViewproject.jsp");
   else
	   response.sendRedirect("aAdminDashboard.jsp");
   
%>
</body>
</html>