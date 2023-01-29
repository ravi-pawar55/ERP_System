<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.connection.*"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>

<%
 
 String id = request.getParameter("id");
 Connection con = DbConection.connect();
 try{  
    PreparedStatement ps = con.prepareStatement("select * from project where pid=?");
    ps.setInt(1,Getset.getPid());
    ResultSet rs1 = ps.executeQuery();
 
    if(rs1.next()){
        Blob blob = rs1.getBlob("p_img");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
        response.setContentType("p_img/gif");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
    }
}
catch(Exception e){
    e.printStackTrace();
}  
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>

</body>
</html>