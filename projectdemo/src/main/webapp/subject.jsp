<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.subject.*"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addsubject.jsp">
<div align="center">
<table border="1">
<h1>Learners Academy</h1>
<input type="submit" value="addsubject">
<h1><i>Subject Datails</i></h1>
<tr><th>Subject Id</th><th>Subject Name</th><th>Edit</th><th>Delete</th></tr>
<%SubjectDao dao=new SubjectDao();
List<Subject> list=dao.display();
for(Subject s:list){
%>
<tr><td><%=s.getSubid() %></td>
<td><%=s.getSubname() %></td>
<td><a href="editsub.jsp?id=<%=s.getSubid()%>">Edit</a></td>
<td><a href="deletesub.jsp?id=<%=s.getSubid()%>">Delete</a></td></tr>
<%} %>
</table>
</div>
</form>

</div>
</body>
</html>