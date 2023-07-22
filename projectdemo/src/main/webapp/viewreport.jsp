<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="com.example.learner.classes.*" %>
    <%@page import="com.example.learner.subject.*" %>
    <%@page import="com.example.learner.teacher.*" %>
    <%@page import="com.example.learner.student.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Learners Academy</h1>
<h1>Add Techer</h1>
<label >select Teacher</label>
<select name="Teacher">
<option>--select--</option>
<option value="teacher">Neha</option>
<option value="teacher">Khushi</option>
<input type="submit" value="add">
</select>
<h1>Add Subject</h1>
<label >select Subject</label>
<select name="Subject">
<option>--select--</option>
<option value="Subname">java</option>
<option value="Subname">maths</option>
<input type="submit" value="add">
</select>

<h2>Class Report</h2>
<table border="1">
<tr><th>Student Class</th><th>Student Name</th><th>subject</th><th>Teacher</th></tr>
<%AllDao dao=new AllDao();
Student s=new Student();
Teacher t=new Teacher();
Subject sub=new Subject();
Classes cls=new Classes();
List<Student> list=dao.disaply3();
List<Teacher> list1=dao.disaply1();
List<Subject> list2=dao.disaply2();
List<Classes> list3=dao.disaply();
for(Student st:list)
for(Teacher tch:list1)
for(Subject sb:list2)
for(Classes clss:list3)
%>
<tr><td><%=cls.getClassname() %></td><td><%=s.getFirstname() %></td><td><%=sub.getSubname()%></td><td><%=t.getTname() %></td></tr>
</table>
</center>
</body>
</html>