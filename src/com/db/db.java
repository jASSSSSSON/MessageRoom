package com.db;
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
public class db {
		private static final long serialVersionUID = 1L;
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		public int rsi=0;
		public db() throws ServletException, IOException {
			con();
		}
		protected void finalize() throws SQLException{
			cl();
		}
		public boolean con() throws ServletException, IOException{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");

			} catch (ClassNotFoundException e) {
				return false;
			}
			try {
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=UTC","root","");
				st=con.createStatement();
			}catch (SQLException e) {
	 			return false;
	    	}
			return true;
		};
		public void cl() throws SQLException{
			if(con!=null)
				con.close();
		};
		public ResultSet se(String sql) throws ServletException, IOException, SQLException{
			try {
				rs=st.executeQuery(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
	 	}
		public int up(String sql) throws ServletException, IOException, SQLException{
			rsi=st.executeUpdate(sql);
			return rsi;
		}
}
