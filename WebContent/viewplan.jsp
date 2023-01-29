<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.connection.Getset"%>
<%@page import="com.connection.DbConection"%>
<%@page import="java.sql.*"%>
 
<%

int id = Integer.parseInt(request.getParameter("pid"));
Getset.setPid(id);
%>
<img src="projectplan.jsp" width="100%px"  height="100%px" ;/>
</body>
</html>