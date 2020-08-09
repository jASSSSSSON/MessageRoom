<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page import="com.c.User" %>
<%@page import="com.c.tz" %>
<%@page import="java.util.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
String z="请登录";
String dc="登陆";
String uru="";
String aaa="";
String url="index.jsp";
tz u1=new tz(),u2=new tz(),u3=new tz();
	if(session.getAttribute("tzs")==null)
		response.sendRedirect("tzs");
	else{
	
	if(session.getAttribute("zt")!=null){
		z=((User)session.getAttribute("user")).getName();
		dc="登出";
		url="dc";
		uru="su.jsp";
	}
	ArrayList<tz> a=new ArrayList();
	a=(ArrayList<tz>)session.getAttribute("tzs");
	Iterator<tz> zs=a.iterator();
	u1=(tz)zs.next();
	u2=(tz)zs.next();
	u3=(tz)zs.next();
	}
%>
<link href="css2.css" rel="stylesheet" type="text/css" />
<script language="javascript">
var f=false
</script>
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
<div id="ab" onClick="location='fb.jsp'"></div>
<div id="user"><div id="tx"></div><a id="gr" href=<%=uru %> ><%=z %></a><br><a href=<%=url %> id="uq"><%=dc %></a></div>
</div>

<div  align="center">
<div id="d2" align="center">
<div id="ad" onclick="localtion='pd.jsp'"></div>
<div align="center" id="tz" >
  <div id="bt"><strong><%=u1.name%></strong></div>
  <div id="zt"><%=u1.text%></div>
  <div id="cz">
  <input id="dz" value="" type="submit"> 200
  <input id="sc" value="" type="submit">
  </div>
  <div id="xx"><%=u1.id%>  <%=u1.date%></div>
</div>

<div align="center" id="tz" >
  <div id="bt"><strong><%=u2.name%></strong></div>
  <div id="zt"><%=u2.text%></div>
  <div id="cz">
  <input id="dz" value="" type="submit"> 200
  <input id="sc" value="" type="submit">
  </div>
  <div id="xx"><%=u2.id%>  <%=u2.date%></div>
</div>

<div align="center" id="tz" >
  <div id="bt"><strong><%=u3.name%></strong></div>
  <div id="zt"><%=u3.text%></div>
  <div id="cz">
  <input id="dz" value="" type="submit"> 200
  <input id="sc" value="" type="submit">
  </div>
  <div id="xx"><%=u3.id%>  <%=u3.date%></div>
</div>




</div>
</div>
<script src="function2.js">
</script>
</body>
</html>/