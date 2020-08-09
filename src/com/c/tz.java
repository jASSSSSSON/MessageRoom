package com.c;

import java.util.ArrayList;

public class tz {
	public String name;
	public String text;
	public String date;
	public int type;
	public int n;
	public String id;
	public int z;
	public ArrayList pl=new ArrayList<pl>();
	public tz(String name,String date,String text,int type,int n,String id,int z,ArrayList pl){
		this.name=name;
		this.id=id;
		this.date=date;
		this.n=n;
		this.text=text;
		this.type=type;
		this.z=z;
		this.pl=pl;
	}
	public tz() {
		this.name="xxx";
		this.id="xxx";
		this.date="xxx";
		this.n=0;
		this.text="xxx";
		this.type=0;
		this.z=20;
		this.pl=new ArrayList();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public void copyt(tz a){
		this.name=a.name;
		this.date=a.date;
		this.n=a.n;
		this.text=a.text;
		this.type=a.type;
		this.z=a.z;
		this.pl=pl;
	}
	public void copyt(String name,String date,String text,int type,int n,String id,int z,ArrayList pl){
		this.id=id;
		this.name=name;
		this.date=date;
		this.n=n;
		this.text=text;
		this.type=type;
		this.z=z;
		this.pl=pl;
	}
}
