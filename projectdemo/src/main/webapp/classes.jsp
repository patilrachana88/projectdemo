
       <%@page import="com.example.learner.classes.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="addclasses.jsp">

<div align="center">
<table border="1">
<tr><td>
<div align="center">
<h1>Learners Academy</h1>
<input type="submit" value="addclass">
</td></tr>
</div>
</table>
</div>
</form>
<div align="center">
<h1>Classes</h1>
<Table border="2">
<tr><th>Classes Id </th>
<th>Classes Name </th>
<th>Edit action </th>
<th>Delete Action </th>
<th>Assign Teacher</th>
<th>Assign Subject</th>
<th>View Report</th></tr>
<%
ClassesDao dao=new ClassesDao();
List<Classes> list=dao.display();
for(Classes c:list){
%>	
<tr><td><%=c.getClassid() %></td>
<td><%=c.getClassname() %></td>
<td><a href="editclass.jsp?id=<%=c.getClassid()%>">Edit</a></td>
<td><a href="deleteclass.jsp?id=<%=c.getClassid()%>">Delete</a></td>
<td><a href="viewreport.jsp">Teacher Assign</a></td> 
<td><a href="viewreport.jsp">Subject Assign</a></td>
<td><a href="viewreport.jsp">View Report</a></td></tr>
<% }%>
</body>
</html>