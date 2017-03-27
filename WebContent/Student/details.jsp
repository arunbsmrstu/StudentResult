<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<% 
PrintWriter pw = response.getWriter();
response.setContentType("text/html");

HttpSession hs=request.getSession();
String id=(String)hs.getAttribute("User");
    	%>
<body>
<h1>STUDENT ID NO: <%=id%></h1>

<table   border="1" align="center">

<% 


//	String st=request.getParameter("st_id");


ServletContext sc=getServletContext();
Connection con=(Connection)sc.getAttribute("Connection");

try{
	
PreparedStatement ps = con.prepareStatement("select * from student_information where ST_ID=?");
ps.setString(1,id); ////here id hobe
ResultSet rs=ps.executeQuery();

    while(rs.next()) 
    { 
    	
    	if(id.equals(rs.getString(1))){
			
    		%>
    		<tr>
<td color='red'>Student ID</td>
<td>Student Name</td>
<td>Department</td>
<td>Session</td>
<td>Date Of Birth</td>
<td>Blood Group</td>
<td>City</td>
<td>Email</td>
<td>Contact No</td>
<td>Present Address</td>
<td>Permanent Address</td>
<td>Password</td>


</tr>
    		
        	<tr>
        	<td><%=rs.getString(1)%></td>
        	<td><%=rs.getString(2)%></td>
        	<td><%=rs.getString(3)%></td>
        	<td><%=rs.getString(4)%></td>
        	<td><%=rs.getString(5)%></td>
        	<td><%=rs.getString(6)%></td>
        	<td><%=rs.getString(7)%></td>
        	<td><%=rs.getString(8)%></td>
        	<td><%=rs.getString(9)%></td>
        	<td><%=rs.getString(10)%></td>
        	<td><%=rs.getString(11)%></td>
        	<td><%=rs.getString(12)%></td>
        	
      </tr>
        	    	<% 
		
		}
    	else{%>
    		<h1>invalid</h1>
    		<% 
		    }
    	
    	
    }
    }
	catch(Exception ex)
	{
		System.out.println(ex);
	}

     
%>

<a href="/StudentResult/Student/home.jsp">Home</a>
</body>
</html>