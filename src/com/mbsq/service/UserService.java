package com.mbsq.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mbsq.domain.User;
import com.mbsq.utils.DbUtils;

/**
 * 用户处理类
 * 
 * @author TJ
 */
public class UserService {
	String TAG = "AdminService";
	String userTB = "user_tb";// 管理员所在的数据库中的表

	/**
	 * 判断用户是否已经注册
	 * 
	 * @param user用户
	 * @return 是否是用户
	 */
	public boolean isUser(String sql) {
		Connection conn = DbUtils.getConnection();
		PreparedStatement ps = null;
		ResultSet result = null;
		try {
			ps = conn.prepareStatement(sql);
			result = ps.executeQuery(sql);
			result.next();
			if (result.getInt(1) != 0) {
				return true;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			DbUtils.close(result, ps, conn);
		}
		return false;
	}

	/**
	 * 判断用户是否注册成功
	 * 
	 * @return
	 */
	public boolean insertUser(User user) {
		System.out.println("注册的手机号：" + user.getUphone());
		String sql = "SELECT COUNT(*) FROM " + userTB + " WHERE uphone='"
				+ user.getUphone() + "'";
		if (isUser(sql)) {
			// 手机号码已经存在的情况
			return false;
		} else {
			String insert = "insert into user_tb (uno,uphone,upwd,unicheng) values('"
					+ user.getUno()
					+ "','"
					+ user.getUphone()
					+ "','"
					+ user.getUpwd() + "','" + user.getUnicheng() + "')";
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = null;
			try {
				ps = conn.prepareStatement(insert);
				ps.executeUpdate(insert);
				return true;

			} catch (SQLException e1) {
				e1.printStackTrace();
				return false;
			} finally {
				DbUtils.close(null, ps, conn);
			}
		}
	}
}
