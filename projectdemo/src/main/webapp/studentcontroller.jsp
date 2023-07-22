<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.example.learner.student.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Student List</h1>
<%Student st=new Student();
StudentDao dao=new StudentDao();
st.setFirstname(request.getParameter("fname"));
st.setLstname(request.getParameter("lname"));
st.setPhoneno(Long.parseLong(request.getParameter("phno")));
st.setAddress(request.getParameter("address"));
String bdate=request.getParameter("dob");
SimpleDateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd");
Date date=dateformat.parse(bdate);
st.setDateofbirth(date);
st.setStudentclass(request.getParameter("stclass"));
int row=dao.addstudents(st);
if(row>0){
response.sendRedirect("successstdnt.jsp");
}%>
</body>
</html>