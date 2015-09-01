package edu.fjnu.xtw.web.servlet;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.xtw.service.impl.UsersServiceImpl;
import edu.fjnu.xtw.service.inter.UsersServiceInter;

public class CheckUserServlet extends HttpServlet {

	/**
	 * admin:陈尚强
	 * AJAX异步验证
	 */
	
	public CheckUserServlet() {
		super();
	}

	

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String userid=request.getParameter("userid");
		UsersServiceInter user=new UsersServiceImpl();
		System.out.println(userid);
		System.out.println(userid);
		System.out.println(userid);
		System.out.println(userid);
		
		
		
		if(user.isAccountNumberExist(userid))
		{
			out.print("true");
		}
		else{
			out.print("false");
		}
		out.close();
		
		
	}
	

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
