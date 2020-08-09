package com.userc;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet("/re")
public class re extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String un=request.getParameter("un");
		String ho=request.getParameter("ho");
		if(ho.equals(""))
			ho="��";
		String type=request.getParameter("type");
		userdao a=new userdao();
		try {
			a.addu(new User(id,ho,pw,un,type));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean c=a.em;
		if(c){
			response.sendRedirect("index.jsp");
		}else{
			request.getSession().setAttribute("er", "ID�Ѵ���!");
			response.sendRedirect("re.jsp");
		}
	}

}
