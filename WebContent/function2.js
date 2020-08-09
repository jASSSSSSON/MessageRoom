// JavaScript Document
function m(i,id){	
	coo(id)
	document.getElementById(id).style.marginLeft="0px";
	document.getElementById(id).style.marginRight="0px";
	if(i%2!=0)
		setTimeout(function(){l(i,id)},200)
	else
		setTimeout(function(){r(i,id)},200)
	}
function l(i,id){
	co(id)
	document.getElementById(id).style.marginRight="0px";
	document.getElementById(id).style.marginLeft="-10px";
	if(i%2==0)
		setTimeout(function(){m(i,id)},200)
	else
		setTimeout(function(){l2(i,id)},200)
	}
function r(i,id){
	if(i<6){
		co(id);
		document.getElementById(id).style.marginLeft="0px";
		document.getElementById(id).style.marginRight="-5px";
		if(i%2==0)
			setTimeout(function(){r2(i,id)},200);
		else
			setTimeout(function(){m(i,id)},200);
	}
	co(id)
	}
function l2(i,id){
	coo(id)
	i++
	document.getElementById(id).style.marginRight="0px";
	document.getElementById(id).style.marginLeft="-10px";
	setTimeout(function(){l(i,id)},200)
	}
function r2(i,id){
	i++
	coo(id)
	document.getElementById(id).style.marginLeft="0px";
	document.getElementById(id).style.marginRight="-10px";
	setTimeout(function(){r(i,id)},200);
	}	
function co(id){
	document.getElementById(id).style.borderColor="#f00";
	}
function coo(id){
	document.getElementById(id).style.borderColor="#FFF";
	}	
function test(id){
	r(2,id);
	}
function chec(){
	f=true
	for(var i=0;i<document.forms.item(0).length;i++)
		if(document.forms.item(0).item(i).value==""){
			co(document.forms.item(0).item(i).id);
			f=false;
		}
	for(var i=0;i<document.forms.item(0).length;i++){
		if(document.forms.item(0).item(i).value==""){
			test(document.forms.item(0).item(i).id);
			break;	
		}
	}
}
function vc(id){
	document.getElementById(id).style.borderStyle="ridge";
	if(document.getElementById(id).value=="")
		co(id)
	else
		coo(id)
}
function of(id){
	document.getElementById(id).style.borderColor="#0F9";
	document.getElementById(id).style.borderStyle="inset";
	}
function g(){
	if(document.getElementById("Agreement").checked){
		document.getElementById("su").disabled=false
		}
	else
		document.getElementById("su").disabled=true
	}
function ove(i){
	document.getElementById(i).style.display="block";
	}
function lf(i){
	document.getElementById(i).style.display="none";
	}
function ose(){
	document.getElementById("se").style.background="url(se2.png)";
	}
function lse(){
	document.getElementById("se").style.background="url(se.png)";
	}
function pd(){
	var zt=document.getElementById("gr").innerHTML;
	if(zt=="访客")
		return false;
	else
		return true;
	}
function fb(){
	if(pd())
		document.forms.item(0).submit()
	else
		window.location.href();
	}