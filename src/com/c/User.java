package com.c;
public class User {
	public String name;
	public String pw;
	public String hobby;
	public String id;
	public String type;
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public User(){};
	public User(String id,String ho,String pw,String name,String type){
		this.hobby=ho;
		this.name=name;
		this.pw=pw;
		this.id=id;
		this.type=type;
	};
	User(User o){
		this.name=o.name;
		this.pw=o.pw;
		this.id=o.id;
		this.hobby=o.hobby;
		this.type=o.type;
	}
	boolean check(User o){
		if(name.equals(o.name)&&pw.equals(o.pw))
			return true;
		else
			return false;
		
	}
	User ru(){
		return this;
	}
	public String show() {
		return "id="+id+"\tpassword="+pw+"\tname="+name+"\thobby"+hobby+"\ttype="+type;
	}
}
