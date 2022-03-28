<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="jakarta.servlet.*" %>
<%@page import="jakarta.servlet.annotation.WebServlet" %>
<%@page import="jakarta.servlet.http.HttpServlet" %>

<%			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/prac_12","root","root");
					
			String in1 = request.getParameter("Name");
			String in2 = request.getParameter("Phone");
			String in3 = request.getParameter("Email");
			String in4 = request.getParameter("Password");
			PreparedStatement P2=con.prepareStatement("INSERT INTO signup VALUES(?,?,?,?)");
			P2.setString(1,in1);
			P2.setString(2,in2);
			P2.setString(3,in3);
			P2.setString(4,in4);
			P2.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request,response);

%>

</body>
</html>