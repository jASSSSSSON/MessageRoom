<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆失败</title>
<style type="text/css">
#tit{
	background-color: #666;
	height: 40px;
	width: 1905px;
	margin-left: -10px;
	padding-top: 0px;
	clear: both;
	margin-top:-20px;
}
</style>
<link href="css.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#3399FF">
<div id="tit">
<ul>
<li onmouseover="ove('o1')" onmouseout="lf('o1')">首页<div id="o1" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o2')" onmouseout="lf('o2')">活动通知<div id="o2" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o3')" onmouseout="lf('o3')">官方板块<div id="o3" style="display:none">a<br>b<br>c<br></div></li>
</ul>
</div>
<div align="center">
<div id="d" align="center">
<div id="c"><h2>
false!!!!!!!!!!!!<br>
inf=<%=session.getAttribute("er") %><br>
<input name="" onclick="location='re.jsp'" type="button"  value="前往注册"/>
<input name="" onclick="location='index.jsp'" type="button" value="返回登陆" />
</h2>
</div>
</div>
</div>
</body>
</html>