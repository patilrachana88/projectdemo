<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.classes.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Classes classes=new Classes();
ClassesDao dao=new ClassesDao();
classes.setClassname(request.getParameter("classes"));
int value=dao.addclasses(classes);
if(value>0){
	response.sendRedirect("succesclass.jsp");
}
%>
</body>
</html>