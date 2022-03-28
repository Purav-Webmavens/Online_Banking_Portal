<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error/error_signup.jsp"%>
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
				out.println("<h4 style=\"color:red;text-align:center;margin-top:-470px\">Username Already Exist!!!</h4>");
				RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
				rd.include(request,response);
%>

</body>
</html>