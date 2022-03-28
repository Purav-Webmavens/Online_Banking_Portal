<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.b{
		cursor:pointer !important;
	
	}
</style>
<meta charset="ISO-8859-1">
<title>View Table</title>
</head>
<body>
 <div style="text-align:right">
		<a href="logout.jsp"><button class="b" type="submit" style="width:150px;height:50px;background:none;border:1px solid lightgray;font-size:20px;border-radius:42px;margin-top:20px;color:#000;margin-right:10px;">Sign Out</button></a>
	</div>
	<%
	String u="admin",p="123",u1,p1;
	u1=request.getParameter("name");
	p1=request.getParameter("password");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/prac_12", "root", "root");
	Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs1 = stmt.executeQuery("select * from bank_account");
	Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = stmt1.executeQuery("select * from signup");
	if(u.equals(u1) && p.equals(p1))
	{
		out.print("<h2>Customer Registration Details</h2>");
		out.println("<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"Style.css\" /></head><body>");
		out.print("<table border=1");
		out.print("<tr>");
		out.print("<th>");
		out.print("Name");
		out.print("</th>");
		out.print("<th>");
		out.print("Phone");
		out.print("</th>");
		out.print("<th>");
		out.print("Email");
		out.print("</th>");
		out.print("<th>");
		out.print("Password");
		out.print("</th>");
		out.print("</tr>");
		
		while (rs.next()) 
		{
			out.print("<tr>");
			out.print("<td>" + rs.getString(1));
			out.print("</td>");
			out.print("<td>" + rs.getString(2));
			out.print("</td>");
			out.print("<td>" + rs.getString(3));
			out.print("</td>");
			out.print("<td>" + rs.getString(4));
			out.print("</td>");
			
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
		out.print("<h2>Bank Registration Details</h2>");
		out.println("<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"Style.css\" /></head><body>");
		out.print("<table border=1");
		out.print("<tr>");
		out.print("<th>");
		out.print("Name");
		out.print("</th>");
		out.print("<th>");
		out.print("Email");
		out.print("</th>");
		out.print("<th>");
		out.print("Phone");
		out.print("</th>");
		out.print("<th>");
		out.print("Aadhar");
		out.print("</th>");
		out.print("<th>");
		out.print("Pan");
		out.print("</th>");
		out.print("<th>");
		out.print("Gender");
		out.print("</th>");
		out.print("<th>");
		out.print("Account Type");
		out.print("</th>");
		out.print("<th>");
		out.print("Ammount");
		out.print("</th>");
		out.print("</tr>");
		while (rs1.next()) 
		{
			out.print("<tr>");
			out.print("<td>" + rs1.getString(1));
			out.print("</td>");
			out.print("<td>" + rs1.getString(2));
			out.print("</td>");
			out.print("<td>" + rs1.getString(3));
			out.print("</td>");
			out.print("<td>" + rs1.getString(4));
			out.print("</td>");
			out.print("<td>" + rs1.getString(5));
			out.print("</td>");
			out.print("<td>" + rs1.getString(6));
			out.print("</td>");
			out.print("<td>" + rs1.getString(7));
			out.print("</td>");
			out.print("<td>" + rs1.getInt(8));
			out.print("</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
		out.println("<h3 style=\"color:red;text-align:center;margin-top:-250px\">Wrong Credentials</h3>");
		rd.include(request, response);
	}
	
	%>
</body>
</html>