<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.c.User" %>
<%@page import="com.c.tz" %>
<%@page import="java.util.*" %>
<%
	if(session.getAttribute("test")==null)
		response.sendRedirect("test");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=session.getAttribute("n") %>
<%=session.getAttribute("test") %>
</body>
</html>