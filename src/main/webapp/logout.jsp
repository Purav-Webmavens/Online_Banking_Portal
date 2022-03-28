<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Out</title>
</head>
<body>
	<%
		session.invalidate();
		RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
		rd1.include(request,response);
	%>
</body>
</html>