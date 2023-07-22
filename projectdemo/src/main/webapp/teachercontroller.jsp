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
<div align="center">
<h1>Teachers List</h1>
<%Teacher t=new Teacher();
TeacherDao dao=new TeacherDao();
t.setTname(request.getParameter("teacher"));
int value=dao.addteacher(t);
if(value>0){
	response.sendRedirect("successteacher.jsp");
}
%>
</div>
</body>
</html>