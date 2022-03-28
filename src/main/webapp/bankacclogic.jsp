<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bank Account Registration</title>
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
			String in2 = request.getParameter("Email");
			String in3 = request.getParameter("Phone");
			String in4 = request.getParameter("Aadhar");
			String in5 = request.getParameter("Pan");
			String in6 = request.getParameter("gen");
			String in7 = request.getParameter("acc");
			String in8 = request.getParameter("Ammount");
			
			PreparedStatement P2=con.prepareStatement("INSERT INTO bank_account VALUES(?,?,?,?,?,?,?,?)");
			P2.setString(1,in1);
			P2.setString(2,in2);
			P2.setString(3,in3);
			P2.setString(4,in4);
			P2.setString(5,in5);
			P2.setString(6,in6);
			P2.setString(7,in7);
			P2.setString(8,in8);
			P2.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
			rd.include(request,response);

%>
</body>
</html>