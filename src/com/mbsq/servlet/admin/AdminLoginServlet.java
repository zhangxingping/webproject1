package com.mbsq.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbsq.domain.Administrator;
import com.mbsq.service.AdminService;

/**
 * 管理员登录处理
 * 
 * @author tangju
 */
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// System.out.println("登录处理");
		String aname = request.getParameter("aname");
		String apwd = request.getParameter("apwd");
		Administrator admin = new Administrator(aname, apwd);

		boolean isAdmin = new AdminService().isAdmin(admin);
		if (isAdmin) {// 密码正确 进入到主界面
			request.setAttribute("admin", admin);
			request.getRequestDispatcher("admin/mainmain.jsp").forward(request,
					response);
		} else {// 密码失败 跳转到登录界面 并显示错误信息
			request.setAttribute("login_error", "用户名或密码有误");
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);

		}
	}
}
