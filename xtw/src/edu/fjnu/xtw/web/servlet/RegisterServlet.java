package edu.fjnu.xtw.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.xtw.domain.XtwCollege;
import edu.fjnu.xtw.domain.XtwSchool;
import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.exception.UsersException;
import edu.fjnu.xtw.service.impl.CollegeServiceImpl;
import edu.fjnu.xtw.service.impl.SchoolServiceImpl;
import edu.fjnu.xtw.service.impl.UsersServiceImpl;
import edu.fjnu.xtw.service.inter.CollegeServiceInter;
import edu.fjnu.xtw.service.inter.SchoolServiceInter;
import edu.fjnu.xtw.service.inter.UsersServiceInter;

public class RegisterServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String act = request.getParameter("act");
		if (act.equals("register")) {
			this.register(request, response);
		}
		else if (act.equals("loadSchool")) {
			this.loadSchool(request, response);
		}
		else if (act.equals("loadCollege")) {
			this.loadCollege(request, response);
		}
			
	}
	
	/**
	 * 加载所有属于指定学校的学院
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void loadCollege(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//得到页面发送过来的学校名称
		Integer schoolId = Integer.parseInt(request.getParameter("schoolId"));
		//创建service对象
		CollegeServiceInter collegeServiceImpl = new CollegeServiceImpl();
		
		//通过学校ID得到json字符串
		String jsonString = collegeServiceImpl.getAllCollegeBySchoolId(schoolId);
//		//发送到页面
		response.getWriter().print(jsonString);
	}
	
	/**
	 * 加载所有学校
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void loadSchool(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//创建service对象
		SchoolServiceInter schoolServiceImpl = new SchoolServiceImpl();
		//得到json字符串
		String jsonString = schoolServiceImpl.getAllSchool();
		//发送到页面
		response.getWriter().print(jsonString);
	}
	
	/**
	 * 处理用户注册
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		SchoolServiceInter schoolServiceImpl = new SchoolServiceImpl();
		CollegeServiceInter collegeServiceImpl = new CollegeServiceImpl();
		UsersServiceInter usersServiceImpl = new UsersServiceImpl();
		
		//封装表单对象
		XtwUsers user = new XtwUsers();
		XtwSchool school = schoolServiceImpl.findBySchoolName(request
				.getParameter("signup_school"));
		XtwCollege college = collegeServiceImpl.findByCollegeNameAndSchoolId(
				request.getParameter("signup_college"), school.getSchoolId());
		user.setAccountNumber(request.getParameter("signup_account"));
		user.setPassword(request.getParameter("signup_password"));
		user.setAgeinPassword(request.getParameter("signup_againPassword"));
		user.setStuNumber(request.getParameter("signup_number"));
		user.setUserName(request.getParameter("signup_name"));
		user.setPhoneNumber(request.getParameter("signup_phone_number"));
		user.setQqNumber(request.getParameter("signup_qq"));
		user.setEmail(request.getParameter("signup_email"));
		user.setXtwCollege(college);
		try {
			usersServiceImpl.register(user);
		} catch (UsersException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/jsp/index.jsp");
	}
}
