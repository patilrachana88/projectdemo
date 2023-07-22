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
<%Admin admin=new Admin(); 
AdminDao dao=new AdminDao();
admin.setUser(request.getParameter("user"));
admin.setPassword(request.getParameter("password"));
String value=dao.addadmin(admin);
if(value!=null){
	response.sendRedirect("success.jsp");
}
%>
</body>
</html>