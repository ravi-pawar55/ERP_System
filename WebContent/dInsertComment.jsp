<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="com.connection.*" %>
<body>
<% Connection con =  DbConection.connect();
		   PreparedStatement psts;
		try {
			psts = con.prepareStatement(" insert into comments values (?,?,?,?,?)");
			psts.setInt(1, 0);
			psts.setInt(2,Getset.getTid());
			psts.setString(3, request.getParameter("cmt"));
			psts.setInt(4,Getset.getEmpId());
			psts.setInt(5,0);
			 
			int i = psts.executeUpdate();
			
			if(i>0)
				response.sendRedirect("dViewTask.jsp");
			else
				response.sendRedirect("dTaskComment.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} %>

</body>
</html>