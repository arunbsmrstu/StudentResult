<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

  <style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}
</style>

</head>
<body>
<a href="creat_admin.html">New Admin</a>
<a href="creat_admin.html">Create office Admin</a>
<div class="dropdown">
<button onclick="myFunction()" class="dropbtn">Result Update</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="s1.jsp">1-1</a>
    <a href="s2.jsp">1-2</a>
    <a href="s3.jsp">2-1</a>
    <a href="s4.jsp">2-2</a>
    <a href="s5.jsp">3-1</a>
    <a href="s6.jsp">3-2</a>
    <a href="s7.jsp">4-1</a>
    <a href="s8.jsp">4-2</a>
  </div>
</div>


<Center>Result</Center><br><br>
<form action="result.jsp" method="post" align="center" >
Year-Semester<select name="semester">
<option value="1-1" selected>1-1</option>
<option value="1-2">1-2</option>
<option value="2-1">2-1</option>
<option value="2-2">2-2</option>
<option value="3-1">3-1</option>
<option value="3-2">3-2</option>
<option value="4-1">4-1</option>
<option value="4-2">4-2</option>
</select><br><br>
Student Id:<input type="text" name="student_id"  value="" required><br><br>
<input type="submit" id="btnSubmit" value="Result">
</form>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
} 

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if(openDropdown.classList.contains('show')){
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>



</body>
</html>