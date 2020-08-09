package com.dao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import com.c.User;
import com.db.db;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class userdao{
	db dbc;
	int er;
	ResultSet rs=null;
	public boolean em=false;
	ArrayList<User> Users=new ArrayList<User>();
	public userdao() throws ServletException, IOException {
		dbc=new db();
		Users=new ArrayList<User>();
	}
	public User getU(String id) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		rs=dbc.se("select * from user where id="+id);
		if(rs.next())
			return new User(rs.getString("id"),rs.getString("hobby"),rs.getString("password"),rs.getString("username"),rs.getString("type"));
		return new User();
	}
	public ArrayList<User> se(String sql) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		rs=dbc.se(sql);
		while(rs.next()){
			Users.add(new User(rs.getString("id"),rs.getString("hobby"),rs.getString("password"),rs.getString("username"),rs.getString("type")));
		}
		em=Users.isEmpty();
		return Users;
	}
	public ArrayList<User> selectu(String id,String pw) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		return se("select * from user where id="+id+" and password="+pw);
	}
	public void addu(User u) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		dbc.up("insert into user values('"+u.id+"','"+u.hobby+"','"+u.pw+"','"+u.name+"','"+u.type+"')");
		er=dbc.rsi;
	}
	public void deleteu(String id) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		dbc.up("delete from user where id='"+id+"'");
		er=dbc.rsi;
	}
	public void updateu(User u) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		dbc.up("update user set set type='"+u.type+"',password='"+u.pw+"',username='"+u.name+"',hobby='"+u.hobby+"' where id='"+u.id+"'");
		er=dbc.rsi;
	}
	public ArrayList<User> getAllUser() throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		return se("select * from user");
	}
	public ArrayList<User> selectu(String id) throws ServletException, IOException, SQLException{
		Users=new ArrayList<User>();
		return se("select * from user where id="+id);
	}
	
}

