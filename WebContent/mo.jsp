<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String id="";
String pw="";
String un="";
String ho="";
String ty="";

id=session.getAttribute("mid").toString();
pw=session.getAttribute("pw").toString();
un=session.getAttribute("un").toString();
ho=session.getAttribute("ho").toString();
ty=session.getAttribute("ty").toString();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css.css" rel="stylesheet" type="text/css" />
<script language="javascript">
f=false
</script>
</head>

<body bgcolor="#3399FF">
<div id="ti">
<ul>
<li onmouseover="ove('o1')" onmouseout="lf('o1')">首页<div id="o1" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o2')" onmouseout="lf('o2')">活动通知<div id="o2" style="display:none">a<br>b<br>c<br></div></li>
<li onmouseover="ove('o3')" onmouseout="lf('o3')">官方板块<div id="o3" style="display:none">a<br>b<br>c<br></div></li>
</ul>
</div>
<div align="center" id="all">
<div id="d" align="center">
<div id="c">
<h2>注册</h2>
<form action="cz" method="post">
<table width="350" border="1">
  <tr>
    <td id="a1"><font>*</font>ID</td> 
    <td><%=id %></td>
    <td><input readonly="readonly" onfocus="of('i1')"  onblur="vc('i1')" id="i1" value="" name="mid" type="text" /></td>
  </tr>
  <tr>
    <td id="a1"><font>*</font>PassWord</td>
    <td><%=pw %></td>
    <td><input onfocus="of('i2')" onblur="vc('i2')" id="i2" value="" name="pw" type="text" /></td>
  </tr>
   <tr>
    <td id="a1">hobby</td>
    <td><%=ho %></td>
    <td><input onfocus="of('i4')" onblur="vc('i4')" id="i4" value=""  name="ho" type="text" /></td>
  </tr>
  <tr>
    <td id="a1"><font>*</font>Name</td>
    <td><%=id %></td>
    <td><input onfocus="of('i5')" onblur="vc('i5')" id="i5" value="" name="un" type="text" /></td>
  </tr>
  <tr>
    <td id="a1"><font>*</font>Type</td>
    <td><%=ty %></td>
    <td><select name="type">
      <option value="c">c</option>
      <option value="b">b</option>
      <option value="a">a</option>
      <option value="s">s</option>
    </select></td>
  </tr>
</table>
<input id="su" value="注册" type="submit" />
<input name="" type="reset" />
<input name="" onclick="location='index.jsp'" type="button" value="返回登陆" />
</form>
</div>
</div>
</div>
<script src="function1.js">
</script>
</body>
</html>
