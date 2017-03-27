<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<% 
PrintWriter pw = response.getWriter();
response.setContentType("text/html");
String id = request.getParameter("user_name");


HttpSession hs=request.getSession();
hs.setAttribute("User",id);
    	%>
<body>
<h1>STUDENT ID NO: <%=id%></h1>
<a href="/StudentResult/Student/details.jsp">View Informtaion</a>
<a href="/StudentResult/Student/result.jsp">View Result</a>
<a href="/StudentResult/Student/update.jsp">Update Info</a>
<a href="/StudentResult/Student/logout.jsp">Logout</a>

</body>
</html>
