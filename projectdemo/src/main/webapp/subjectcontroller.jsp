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
<div align="center">
<h1>Subject Details are</h1>
<%Subject sub=new Subject();
SubjectDao dao=new SubjectDao();
sub.setSubname(request.getParameter("subject"));
int value=dao.addsubject(sub);
if(value>0){
	response.sendRedirect("successsub.jsp");
}
%>

</div>
</body>
</html>