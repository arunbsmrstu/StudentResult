<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.ServletContext"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/table.css">
	  <link rel="stylesheet" type="text/css" href="/StudentResult/Office/css/regi.css">
	 <link rel="stylesheet" type="text/css" href="/StudentResult/bootstrap/css/bootstrap-theme.css">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="/StudentResult/bootstrap/js/main.js"></script>
	<script src="/StudentResult/bootstrap/js/bootstrap.js"></script>
	<title>office admin</title></head>
<body>
<b><form color="RED" name="f1" width="600" align="center"
			action="/StudentResult/Office/update.jsp" method="post">
			<h1 align="center">
				<font color=blue>Registration Form</font>
			</h1>
			<table align="center">
			
		             <tr>
					<td>Email:</td>
					<td><input type="text" name="st_email" placeholder="Enter Email" required="required" /></td>
				</tr>
				<tr>
					<td>Contact No:</td>
					<td><input type="text" name="st_cont" placeholder="Enter Contact No" required="required" /></td>
				</tr>
				<tr>
					<td>Present Address:</td>
					<td><input type="text" name="st_pres" placeholder="Enter Present Address" required="required" /></td>
				</tr>
				
				<tr align="center">
					<td></td>
					<td><input type="submit" class="btn btn-primary" name="submit" value="Submit"></br>
						</br><input type="reset" name="reset" class="btn btn-primary" value="Reset"></td>
				</tr>

			</table>

		</form></b>
</body>

<% 
PrintWriter pw = response.getWriter();
response.setContentType("text/html");
String id = request.getParameter("st_id");


HttpSession hs=request.getSession();
hs.setAttribute("User",id);
    	%>
</html>
