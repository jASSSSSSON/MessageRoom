package com.c;

import java.util.ArrayList;

public class space{
	public User u;
	public ArrayList p;
	public ArrayList s;
	public String j;
	public boolean se;
	public ArrayList getp() {
		return p;
	}
	public void setp(ArrayList p){
		this.p = p;
	}
	public ArrayList gets() {
		return s;
	}
	public void sets(ArrayList s){
		this.s = s;
	}
	public String getj() {
		return j;
	}
	public void setj(String j){
		this.j = j;
	}
	space(){}
	public space(User u,ArrayList p,ArrayList s,String j,boolean se){
		this.u=u;
		this.p=p;
		this.s=s;
		this.j=j;
		this.se=se;
	};
	space(space o){
		this.u=o.u;
		this.p=o.p;
		this.s=o.s;
		this.j=o.j;
		this.se=o.se;
	}
}
