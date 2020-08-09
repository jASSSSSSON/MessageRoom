<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.c.User" %>
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
#ct{
	padding-top:200px;
	width: 500px;
	height: 1200px;
	background-color:rgba(102,255,204,0.7)	

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
<div id="ct"><h2>
用户表：</h2>
<form id="form1" method="post" action="ma">
<table width="330" border="1">
<input type="text" id="xg" name="xg" style="display:none" />
	<tr>
	    <td>ID</td> 
	    <td>PassWord</td>
	    <td>UserName</td>
	    <td>Hobby</td>
	    <td>Type</td>
	    <td>Delete</td>
	    <td>Modify</td>
	  </tr>
<%! int len=0; %>
<%
	int idn=1;
	ArrayList<User> tem=(ArrayList<User>)session.getAttribute("users");
	Iterator iter=tem.iterator();
	len=tem.size();
	while(iter.hasNext()){
		User ta=(User)iter.next();
		String di="disabled='disabled'";
		if(!request.getSession().getAttribute("id").equals(ta.getId()))
			di="";
		String cz="cz('"+ta.getId()+"'";
		out.print("<tr>    <td>"+ta.getId()+"</td> <td>"+ta.getPw()+"</td><td>"+ta.getName()+"</td><td>"+ta.getHobby()+"</td><td>"+ta.getType()+"</td><td><input name='CheckboxGroup1' onclick='de()' type='checkbox' "+di+" value='"+ta.getId()+"' /></td><td><input name='CheckboxGroup2' onclick='cz()' value='"+ta.getId()+"'  type='checkbox' /></td></tr>");
	}
%>
</table>

<input id="su" disabled="disabled" onclick="de()" type="submit"  value="删除选中项"/>

<input type="button" disabled="disabled" id="mo" value="修改所选项" onclick="dz()"/>

<input name="" onclick="location='index.jsp'" type="button" value="退出" />
</form>
</div>
</div>
</div>
<script>
function cz(){
	var t=false
	for(var i=0;i<document.getElementsByName("CheckboxGroup2").length;i++){
		if(document.getElementsByName("CheckboxGroup2").item(i).checked){
			t=true;
		}
	}
	if(t)
		document.getElementById("mo").disabled=false
		else
			document.getElementById("mo").disabled=true
}
function dz(){
	document.forms.item(0).action="cz"
	document.getElementById("form1").submit()
	
}
function de(){
		var t=false
		for(var i=0;i<document.getElementsByName("CheckboxGroup1").length;i++){
			if(document.getElementsByName("CheckboxGroup1").item(i).checked){
				t=true;
			}
		}
		if(t)
			document.getElementById("su").disabled=false
			else
				document.getElementById("su").disabled=true
}
</script>
</body>
</html>