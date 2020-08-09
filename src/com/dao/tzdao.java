package com.dao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.c.pl;
import com.c.tz;
import com.db.db;


public class tzdao {
	db db;
	int er;
	ResultSet rs=null;
	boolean em=false;
	public ArrayList<tz> se(String sql) throws ServletException, IOException, SQLException{
		ArrayList<tz> tzs=new ArrayList<tz>();
		rs=db.se(sql);
		if(rs.next()){
			tzs.add(new tz(rs.getString("name"),rs.getString("date"),rs.getString("text"),rs.getInt("type"),rs.getInt("n"),rs.getString("id"),rs.getInt("z"),new ArrayList<pl>()));
		}
		em=tzs.isEmpty();
		return tzs;
	}
	public tzdao() throws ServletException, IOException {
		db=new db();
	}
	public ArrayList<tz> selectubn(String name) throws ServletException, IOException, SQLException{
		return se("select * from tz where name="+name);
	}
	public void addtz(tz t) throws ServletException, IOException, SQLException{
		db.up("insert into tz(name,text,date,type,id,z,pl) values('"+t.name+"','"+t.text+"','"+t.date+"','"+t.type+"','"+t.id+"','"+t.z+"','"+t.pl+"')");
		er=db.rsi;
	}
	public void deleteu(String n) throws ServletException, IOException, SQLException{
		db.up("delete from tz where n='"+n+"'");
		er=db.rsi;
	}
	public void updateu(tz t) throws ServletException, IOException, SQLException{
		db.up("update tz set set type='"+t.type+"',name='"+t.name+"',text='"+t.text+"',date='"+t.date+"',id='"+t.id+"',z='"+t.z+"',pl='"+t.pl+"' where n='"+t.n+"'");
		er=db.rsi;
	}
	public ArrayList<tz> getAlltz() throws ServletException, IOException, SQLException{
		return se("select * from tz");
	}
	public ArrayList<tz> selecttzbi(String id) throws ServletException, IOException, SQLException{
		return se("select * from tz where id="+id);
	}
	public ArrayList<tz> gettopt() throws ServletException, IOException, SQLException{
		ArrayList<tz> tzs=new ArrayList<tz>();
		rs=db.se("select * from tz order by n DESC");
		while(rs.next()){
			tzs.add(new tz(rs.getString("name"),rs.getString("date"),rs.getString("text"),rs.getInt("type"),rs.getInt("n"),rs.getString("id"),rs.getInt("z"),new ArrayList<pl>()));
		}
		System.out.println(tzs);
		em=tzs.isEmpty();
		return tzs;
	}
}
