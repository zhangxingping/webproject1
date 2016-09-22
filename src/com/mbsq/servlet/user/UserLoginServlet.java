package com.mbsq.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbsq.service.UserService;

/**
 * app端用户登录:返回是否是用户的结果
 * 
 * @author TJ
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("登录处理");
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");

		String sql = "SELECT COUNT(*) FROM user_tb" + " WHERE (uno='" + uname
				+ "' or uphone='" + uname + "') &&upwd='" + upwd + "'";
		boolean isUser = new UserService().isUser(sql);
		String json = "{user_login:" + isUser + "}";
		response.getWriter().write(json);
	}
}
