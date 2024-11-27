<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login page</title>
</head>
<body>
<%



String email=request.getParameter("email");
String pass=request.getParameter("Pass");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","Shital2002");
PreparedStatement psmt=con.prepareStatement("insert into login values(?,?)");

psmt.setString(1,email);
psmt.setString(2,pass);
psmt.executeUpdate();
%>
<h2 style="color:blue;text-align:center">Login Successfully</h2>
</body>
</html>