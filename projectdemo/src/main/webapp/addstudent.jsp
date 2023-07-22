<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="studentcontroller.jsp">
<div align="center">
<h1><i>Learners Academy</i></h1>
<h2>Student Information</h2>
<table border="1">
<tr><td>First Name <input type="text" name="fname"></td></tr>
<tr><td>Last Name <input type="text" name="lname"></td></tr>
<tr><td>Phone no <input type="text" name="phno"></td></tr>
<tr><td>address <input type="text" name="address"></td></tr>
<tr><td>DOB <input type="date" name="dob"></td></tr>
<tr><td>Student class <input type="text" name="stclass"></td></tr>
<tr><td> <input type="submit" name="add"></td></tr>
</table>
</div>
</form>
</body>
</html>