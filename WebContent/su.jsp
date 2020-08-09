<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.c.User" %>
<%@page import="com.c.tz" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!
	String id="";
	String un="";
	String ty="";
	String ho="";
%>
<%

String z="请登录";
String dc="登陆";
String uru="";
User u=new User();
String url="index.jsp";
	if(session.getAttribute("zt")!=null){
		z=((User)session.getAttribute("user")).getName();
		u=(User)session.getAttribute("user");
		dc="登出";
		url="dc";
		uru="su.jsp";
	}
	id=u.id;
	un=u.name;
	ty=u.type;
	ho=u.hobby;
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎您！<%=un %></title>
<link href="css2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
</style>
</head>
<body bgcolor="#3399FF">
<div id="ti" align="center">
<ul>
<li onmouseover="ove('o1')" onmouseout="lf('o1')">首页<div id="o1" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o2')" onmouseout="lf('o2')">活动通知<div id="o2" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o3')" onmouseout="lf('o3')">官方板块<div id="o3" style="display:none">a<br>b<br>c<br></div></li>
</ul>
<div id="ser"></div>
<div id="se" onMouseOver="ose()" onMouseOut="lse()"></div>
<div id="user"><div id="tx"></div><a id="gr" href=<%=uru %>><strong><%=z %></strong></a><br><a href=<%=url %> id="uq"><%=dc %></a></div>
</div>
<div id="all" align="center">
<div id="d" align="center">
<div id="c">
    <h2>登陆成功</h2>
<table width="300" border="1">
  <tr>
    <td id="a1">用户名</td>
    <td><%=un %></td>
  </tr>
  <tr>
    <td id="a1">ID</td>
    <td><%=id %></td>
  </tr>
  <tr>
    <td id="a1">hobby</td>
    <td><%=ho %></td>
  </tr>
  <tr>
    <td id="a1">type</td>
    <td><%=ty %></td>
  </tr>
</table>

<input name="" onclick="location='index.jsp'" type="button" value="退出" />
    </div>
    </div>
    </div>
</body>
</html>