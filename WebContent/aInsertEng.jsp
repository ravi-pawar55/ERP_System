 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Add Eng</title>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>
<body>
 <% Connection con =  DbConection.connect();
		   PreparedStatement psts;
		try {
			psts = con.prepareStatement(" insert into engineers values (?,?,?,?,?,?)");
			psts.setInt(1, 0);
			psts.setString(2, request.getParameter("name"));
			psts.setString(3, request.getParameter("email"));
			psts.setString(4, request.getParameter("contact"));
			psts.setString(5, request.getParameter("pwd"));
			psts.setString(6, request.getParameter("desin"));
			 
			
			int i = psts.executeUpdate();
			
			if(i>0)
				response.sendRedirect("aAdminDashboard.jsp");
			else
				response.sendRedirect("aAddEng.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} %>
</body>
</html>