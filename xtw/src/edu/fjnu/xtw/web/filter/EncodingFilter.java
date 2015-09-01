package edu.fjnu.xtw.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodingFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		/*
		 * 处理get请求编码问题
		 * 调包request
		 * 	1.写一个request的装饰类
		 * 	2.在放行时，使用我们自己的request
		 */
		if (req.getMethod().equals("GET")) {	//判断请求方式
			//创建自己的request装饰类
			EncodingRequest encodingRequest = new EncodingRequest(req);
			//放行，使用自己的request对象
			chain.doFilter(encodingRequest, response);
		}
		else if (req.getMethod().equals("POST")) {
			//处理post请求编码问题
			req.setCharacterEncoding("UTF-8");
			chain.doFilter(req, response);
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
