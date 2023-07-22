<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.admin.copy2.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Admin admin=(Admin)session.getAttribute("admin"); %>
<%= "welcome to "+admin.getUser() %><br><br>
<a href="menu.jsp">Go to Menu</a>

</body>
</html>