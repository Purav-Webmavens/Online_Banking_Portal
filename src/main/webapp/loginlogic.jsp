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
					
			String in1 = request.getParameter("sign_in_user_name");
			String in2 = request.getParameter("sign_in_user_password");
			PreparedStatement P2=con.prepareStatement("INSERT INTO login VALUES(?,?)");
			P2.setString(1,in1); 
			P2.setString(2,in2);
			P2.executeUpdate();
			Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String selectQ = "select * from `signup`";
			ResultSet rs = stmt.executeQuery(selectQ);


			Statement stmt1=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String selectQ1 = "select * from `bank_account`";
			ResultSet rs1 = stmt1.executeQuery(selectQ1);

			
			int count=0,count1=0;
		
			while(rs.next()) {
				if(rs.getString("Name").equals(in1) && rs.getString("Password").equals(in2)) {					
					count=1;
					break;
				}
			
				else if(rs.getString("Name").equals(in1)){
					count=2;
				}
				
			}
		
			while(rs1.next()) {
				if(rs1.getString("FullName").equals(in1)) {
					session.setAttribute("Username", rs1.getString("FullName"));

					count1=1;
					
					break;
				}


				
			}
			
			if(count==1 && count1==1) {
				RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
				rd.forward(request,response);
			}
			 if(count1!=1 && count==1){
				RequestDispatcher rd=request.getRequestDispatcher("account.jsp");
				rd.forward(request,response);
			}
			 if(count==2){
				out.println("<h5 style=\"color:red;text-align:right;margin-right:250px;margin-top:-400px;\">Incorrect Password</h5>");
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.include(request,response);				
				
			}
		
			if(count==0){
				out.println("<h3 style=\"color:red;text-align:center;margin-top:-470px\">You Don't Have Acc.</h3>");

				RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
				rd.include(request,response);

			}
			

%>

</body>
</html>