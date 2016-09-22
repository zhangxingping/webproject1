package com.mbsq.servlet.user;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbsq.domain.User;
import com.mbsq.service.UserService;

/**
 * 用户注册
 * 
 * @author TJ
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// System.out.println("注册访问servlet");

		User user = new User();
		user.setUno(request.getParameter("uno"));
		user.setUpwd(request.getParameter("upwd"));
		user.setUphone(request.getParameter("uphone"));
		String nicheng = request.getParameter("nicheng");
		nicheng = URLEncoder.encode(nicheng, "UTF-8");// 中文处理

		boolean result = new UserService().insertUser(user);
		String json = "";
		if (result) {
			json = "{\"register\":\"successed\"}";
		} else {
			json = "{\"register\":\"failed\"}";
		}
		response.getWriter().write(json);
	}
}
