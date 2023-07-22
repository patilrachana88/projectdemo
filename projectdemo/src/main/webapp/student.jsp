<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.student.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addstudent.jsp">
<div align="center">
<h1><i><b>Learners Academy</b></i></h1>
<input type="submit" value="addstudent"><br><br>
<h1><i>Student Deatils</i></h1>
<table border="1">
<tr><th>Student Id</th><th>First Name</th><th>Last Name</th><th>Student PhNo</th><th>Address</th><th>DOB</th><th>Class</th><th>Edit</th><th>Delete</th></tr>
<%StudentDao dao=new StudentDao();
List<Student> list=dao.display();
for(Student st:list){
%>
<tr><td><%=st.getSid()%></td>
<td><%=st.getFirstname()%></td>
<td><%=st.getLstname()%></td>
<td><%=st.getPhoneno()%></td>
<td><%=st.getAddress() %></td>
<td><%=st.getDateofbirth() %></td>
<td><%=st.getStudentclass() %></td>
<td><a href="editstudent.jsp?id=<%=st.getSid()%>">Edit</a></td>
<td><a href="deletestudent.jsp?id=<%=st.getSid()%>">Delete</a></td>
</tr>
<%} %>
</table>
</div>
</form>
</body>
</html>