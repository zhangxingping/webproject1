package com.mbsq.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mbsq.domain.Administrator;
import com.mbsq.utils.DbUtils;

/**
 * 管理员的处理类
 * 
 * @author tangju
 */
public class AdminService {
	String TAG="AdminService";
	String adminTB = "admin_tb";//管理员所在的数据库中的表
	
	/**
	 * @param administrator
	 * @return 是否是管理员
	 */
	public boolean isAdmin(Administrator administrator){
		String sql="SELECT COUNT(*) FROM "+adminTB 
			+" WHERE aname='"+administrator.getAdminName()
			+"'&&apwd='"+administrator.getAdminPwd()+"'";
		
		Connection conn = DbUtils.getConnection();
		PreparedStatement ps = null;
		ResultSet result = null;
		try {
			ps = conn.prepareStatement(sql);
			result = ps.executeQuery(sql);
			result.next();
			if(result.getInt(1)!=0){
				return true;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally{
			DbUtils.close(result, ps, conn);
		}
		return false;
	}
}
