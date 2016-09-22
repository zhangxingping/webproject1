package com.mbsq.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 数据库帮助类
 * 
 * @author TJ
 */
public class DbUtils {
	static String user = "root";
	static String password = "root";
	static String url = "jdbc:mysql://127.0.0.1/mbsq_db";
	static String driver = "com.mysql.jdbc.Driver";

	static {
		// 注册驱动
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取数据库的连接
	 * 
	 * @return Connection
	 */
	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 关闭数据库的相关连接
	 * 
	 * @param rs
	 * @param pstmt
	 * @param conn
	 */
	public static void close(ResultSet rs, PreparedStatement pstmt,
			Connection conn) {
		try {
			if (null != rs) {
				rs.close();
			}

			if (null != pstmt) {
				pstmt.close();
			}

			if (null != conn) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
