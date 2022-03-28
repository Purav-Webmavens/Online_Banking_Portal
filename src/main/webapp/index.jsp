<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Account Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<style>
	body{
		overflow:hidden;
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


  <img src="login.png" style="width:50%;height:30%;">
<h1 style="margin-left:750px;margin-top:-650px;"><br>&nbsp;&nbsp;Login</h1><br>
	<form method="post" style="margin-left:750px;"action="loginlogic.jsp">
  <div class="form-group col-md-8">
    <label><b>User Name</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your User Name" name="sign_in_user_name" required>
  </div>
  
  <div class="form-group  col-md-8">
    <label for="exampleInputPassword1"><b>Password</b></label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password" name="sign_in_user_password" required>
  </div>
  
  <br>
  <button type="submit" class="btn" style="margin-left:80px;width:260px;background:#24a0ed;color:#fff;">Login</button><br>
      <label><br>&nbsp;&nbsp;&nbsp;&nbsp;New Here? <a href="registration.jsp">Sign-Up</a></label>
      <br>&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin.jsp">Administartor login</a>
      
</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>