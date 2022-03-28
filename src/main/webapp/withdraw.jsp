<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<style>
	body{
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

<div style="background-image: linear-gradient(to right,#7EC9F5, #3957ED);height:250px;margin-top:0px !important;">
<br><br><br>
	<h1 style="text-align:center;color:#fff;">Withdraw</h1></div><br>
	<form method="post" action="withdrawlogic.jsp" style="margin-left:500px;">
  <div class="form-group col-md-5" >
    <label><b>Sender Name</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="sender_name" required>
  </div>
  
  <div class="form-group  col-md-5">
    <label for="exampleInputPassword1"><b>Ammount</b></label>
    <input type="number" class="form-control" name="ammount_send" required>
  </div>
  
  <br>
  <button type="submit" class="btn" style="margin-left:110px;width:160px;background:#24a0ed;color:#fff;">Transfer</button><br><br>
  
</form>
      <a href="dashboard.jsp"><button type="submit" style="margin-left:10px !important;width:160px;background:#24a0ed;color:#fff;border:none;">Go Back To Dashboard</button></a>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>