package edu.fjnu.xtw.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.exception.UsersException;
import edu.fjnu.xtw.service.impl.UsersServiceImpl;
import edu.fjnu.xtw.service.inter.UsersServiceInter;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置编码格式
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//创建对象
		XtwUsers user = new XtwUsers();
		XtwUsers userFind = null;
		UsersServiceInter usersServiceImpl = new UsersServiceImpl();
		//获取表单数据，保存到对象中
		user.setAccountNumber(request.getParameter("login_name"));
		user.setPassword(request.getParameter("login_password"));
		//调用service层中的方法
		try {
			userFind = usersServiceImpl.login(user);
		}
		catch (UsersException e) {
			//如果发生异常，则将异常信息保存到request域中
			System.out.println(e.getMessage());
			request.setAttribute("message", e.getMessage());
			//转发到登录界面
			request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
			return;
		}
		//把登陆者的信息存放到session域中
		request.getSession().setAttribute("session_user", userFind);
		//重定向到首页
		response.sendRedirect(request.getContextPath() + "/jsp/test.jsp");
	}

}
