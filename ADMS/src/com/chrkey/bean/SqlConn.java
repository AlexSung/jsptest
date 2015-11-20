/*
 * SqlConn.java
 * Text file encoding: utf8
 */

package com.chrkey.bean;

import java.sql.*;

public class SqlConn {
	private String url = "jdbc:mysql://localhost:3306/adms";
	private String user = "Sung"; 
	private String password = "wnv.123";

	private Connection conn = null; 
	private Statement stmt = null; 
	private ResultSet rs = null; 

	public SqlConn() { 
		try {
			Class.forName("com.mysql.jdbc.Driver"); 

		} catch (java.lang.ClassNotFoundException e) {
			System.err.println("SqlConn():" + e.getMessage());
		}
	}

	public ResultSet executeQuery(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password); 
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					ResultSet.CONCUR_READ_ONLY); 
			rs = stmt.executeQuery(sql);
		} catch (SQLException ex) {
			System.err.println("SqlConn.executeQuery:" + ex.getMessage());
		}
		return rs;
	}

	public void executeUpdate(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
		} catch (SQLException ex) {
			System.err.println("SqlConn.executeUpdate: " + ex.getMessage());
		}
	}

	public void closeStmt() {
		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
