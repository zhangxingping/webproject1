package com.mbsq.domain;

/**
 * 管理员实体
 * 
 * @author tangju
 */
public class Administrator {
	private String adminName;
	private String adminPwd;
	
	public Administrator() {
		super();
	}
	public Administrator(String adminName, String adminPwd) {
		super();
		this.adminName = adminName;
		this.adminPwd = adminPwd;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
}
