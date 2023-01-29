   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Engg Login Check </title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>

<% 
   Connection con = DbConection.connect();
   PreparedStatement pstm =con.prepareStatement(" select * from employee where email=? and password=?"); 
   pstm.setString(1,request.getParameter("email"));
   pstm.setString(2,request.getParameter("pwd"));
   
   ResultSet rs = pstm.executeQuery();
   
   if(rs.next())
   {   
	   Getset.setEmpId(rs.getInt(1));
	   Getset.setEmpName(rs.getString(2));
	   response.sendRedirect("dEmpDashboard.jsp");
   }else
   {
	   response.sendRedirect("dEmpLogin.html");
   }
   
%>
	
</body>
</html>