package com.userc;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.c.User;
import com.dao.userdao;

/**
 * Servlet implementation class re
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		userdao a=new userdao();
		ArrayList<User> tem=new ArrayList<User>();
		try {
			tem=a.selectu(id, pw);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(!a.em){
			Iterator<User> u=tem.iterator();
			User _user=(User)u.next();
			request.getSession().setAttribute("user", _user);
			request.getSession().setAttribute("zt", "1");
			response.sendRedirect("index1.jsp");
		}else{
				try {
					a.selectu(id);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(!a.em)
					request.getSession().setAttribute("er", "�������");
				else
					request.getSession().setAttribute("er", "ID����");
				request.getSession().setAttribute("zt", null);
				response.sendRedirect("fa.jsp");
			}
	}

}
