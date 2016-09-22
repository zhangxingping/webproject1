package com.mbsq.domain;

/**
 * 用户实体
 * @author TJ
 */
public class User {
	private String uno;//学号
    private String upwd;//密码
    private String uphone;//注册账号的手机号码
    private String unicheng;//用户的昵称
    
	public User() {
		super();
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUno() {
		return uno;
	}
	public void setUno(String uno) {
		this.uno = uno;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUnicheng() {
		return unicheng;
	}
	public void setUnicheng(String unicheng) {
		this.unicheng = unicheng;
	}
	public User(String uno, String upwd, String uphone,
			String unicheng) {
		super();
		this.uno = uno;
		this.upwd = upwd;
		this.uphone = uphone;
		this.unicheng = unicheng;
	}
}
