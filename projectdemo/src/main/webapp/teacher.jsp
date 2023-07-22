<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.teacher.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addteacher.jsp">
<div align="center">
<h1>Learners Academy</h1>
<h2>Add Teachers</h2>
<input type="submit" value="addteacher"><br><br>
<table border="1">
<tr><th>Teacher Id</th><th>Teacher Name</th><th>Edit</th><th>Delete</th></tr>
<%TeacherDao dao=new TeacherDao();
List<Teacher> list=dao.display();
for(Teacher t:list){
%>
<tr><td><%=t.getTid() %></td>
<td><%=t.getTname() %></td>
<td><a href="editteacher.jsp?id=<%=t.getTid()%>">Edit</a></td>
<td><a href="deleteteacher.jsp?id=<%=t.getTid()%>">Delete</a></td></tr>
<%} %>
</table>
</div>
</form>
</body>
</html>