<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="error.jsp"%>
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

<div>
<div style="background-image: linear-gradient(to right,#7EC9F5, #3957ED);"><h1 style="text-align:center;margin-top:-10px;font-size:50px;color:#fff;">&nbsp;&nbsp;<br>Register Your Account</h1><br><br><br><hr style="height:1px;color:#000;background-image: linear-gradient(to right,#7EC9F5, #3957ED);"></div><br>

	<form method="post" action="regislogic.jsp" style="margin-left:400px">
  <div class="form-group col-md-7">
    <label><b>Name</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Name" name="Name">
  </div>

   <div class="form-group  col-md-7">
    <label for="exampleInputEmail1"><b>Phone</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Phone" name="Phone">
  </div> 

  <div class="form-group  col-md-7">
    <label for="exampleInputEmail1"><b>Email</b></label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" name="Email">
  </div>
   
  <div class="form-group  col-md-7">
    <label for="exampleInputPassword1"><b>Password</b></label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password" name="Password">
  </div>
  <br>
  <button type="submit" class="btn" style="margin-left:170px;width:150px;height:40px;border-radius:0px;background:#24a0ed;color:#fff;">Register</button><br><br>
</form></div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>