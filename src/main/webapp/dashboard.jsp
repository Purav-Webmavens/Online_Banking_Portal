<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>
	.deposit:hover{
		cursor:pointer;
	}
	
	.withdraw:hover{
		cursor:pointer;		
	}
	.b:hover{
		cursor:pointer;
	}
	.b{
		background:
	}
	
	.username{
	font-size:20px !important;
    position: fixed;
      top: 10px;
      left: 50px;
      width: 500px;
      cursor:context-menu;
	}
	
</style>
</head>
<body>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="jakarta.servlet.*" %>
<%@page import="jakarta.servlet.annotation.WebServlet" %>
<%@page import="jakarta.servlet.http.HttpServlet" %>

<br>
<div style="background-image: linear-gradient(to right,#7EC9F5, #3957ED);height:250px;margin-top:-30px !important;">
	 <div style="text-align:right">
		<a href="logout.jsp"><button class="b" type="submit" style="width:150px;height:50px;background:none;border:1px solid lightgray;font-size:20px;border-radius:42px;margin-top:20px;color:#fff;margin-right:10px;">Sign Out</button></a>
	</div>
	
	<h1 style="text-align:center;color:#fff;margin-top:40px;">Dashboard</h1></div>
	<div style="background:#fff !important;margin-top:-100px;">
	<div style="margin-top:200px;margin-left:250px;">
		<a href="deposit.jsp"><button class="deposit" type="submit" style="width:300px;height:150px;border:solid 1px #7EC9F5;font-size:30px;background:#fff;color:#7EC9F5;border-radius:42px">Deposit</button></a>
	</div>
	<div style="margin-left:800px;margin-top:-150px">
		<a href="withdraw.jsp"><button class="withdraw" type="submit" style="width:300px;height:150px;border:solid 1px tomato;font-size:30px;background:#fff;color:tomato;border-radius:42px;">Withdraw</button></a>
	</div></div>
	  <%String username=(String)session.getAttribute("Username");%>
			<div class="username">			
				<i style="font-weight:700;">
					Welcome
				</i> 
				<%=username%>
			</div>
				<%
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/prac_12","root","root");
					Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
					String selectQ = "select * from `bank_account`";
					ResultSet rs = stmt.executeQuery(selectQ);
			
			%>  

	
</body>
</html>