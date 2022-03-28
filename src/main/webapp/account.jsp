<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Bank Account Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
</head>
<body>
<div>
<div style="background-image: linear-gradient(to left,#A3D8EB, #719EC2);"><h1 style="text-align:center;margin-top:-10px;font-size:50px;color:#fff;">&nbsp;&nbsp;<br>Register Your Bank Account</h1><br><br><br><hr style="height:1px;color:#000;background-image: linear-gradient(to right,#A3D8EB, #719EC2);"></div><br>
	<form method="post" action="bankacclogic.jsp" style="margin-left:400px;">
  <div class="form-group col-md-7">
    <label><b>Name</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Name" name="Name" required>
  </div>

  <div class="form-group col-md-7">
    <label for="exampleInputEmail1"><b>Email</b></label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Email" name="Email" required>
  </div>
     <div class="form-group col-md-7">
    <label for="exampleInputEmail1"><b>Phone</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your Phone" name="Phone" required>
  </div> 
   <div class="form-group col-md-7">
    <label><b>Aadhar Card</b></label>
    <input type="text" class="form-control" placeholder="Enter Your Aadhar Number" name="Aadhar" required>
  </div>
  <div class="form-group col-md-7">
    <label><b>Ammount</b></label>
    <input type="text" class="form-control" placeholder="Enter Your Aadhar Number" name="Ammount" required>
  </div>
     <div class="form-group col-md-7">
    <label><b>Pan Card</b></label>
    <input type="text" class="form-control" placeholder="Enter Your PAN Number" name="Pan" required>
  </div>
  <div class="form-group  col-md-4">
    <label for="exampleInputPassword1"><b>Gender</b></label>
<select name="gen">
    <option value="Male">Male</option>
    <option value="Female" >Female</option>
    <option value="Other" >Other</option>
    
  </select>

</div>
  <div class="form-group  col-md-4">
    <label for="exampleInputPassword1"><b>Account Type</b></label>
<select name="acc">
    <option value="Savings">Savings</option>
    <option value="Recurring" >Recurring</option>
  </select>

</div>
  </div>
  <br>
  <button type="submit" class="btn" style="text-align:center;margin-left:500px;width:300px;height:40px;border-radius:0px;background:#24a0ed;color:#fff;">Register</button><br><br></div>
  </form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>