<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contact</title>
</head>
<body>
<%
String name=request.getParameter("nm");
String mobile=request.getParameter("mb");
String email=request.getParameter("em");
String msg=request.getParameter("msg");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","Shital2002");
PreparedStatement psmt=con.prepareStatement("insert into contact values(?,?,?,?)");
psmt.setString(1,name);
psmt.setString(2,mobile);
psmt.setString(3,email);
psmt.setString(4,msg);
psmt.executeUpdate();

%>
<h1 style="color:red;text-align:center;"><%out.print("Thank you For Contact us");%></h1>
</body>
</html>