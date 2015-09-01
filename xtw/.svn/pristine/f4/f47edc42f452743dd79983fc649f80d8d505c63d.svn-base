package edu.fjnu.xtw.web.filter;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * 处理get请求的中文编码问题
 * 采用装饰者模式
 * @author lzx
 *
 */
public class EncodingRequest extends HttpServletRequestWrapper {
	
	private HttpServletRequest req;
	
	/**
	 * 构造函数
	 * @param request
	 */
	public EncodingRequest(HttpServletRequest request) {
		super(request);
		this.req = request;
	}

	/**
	 * 覆盖了父类函数，对中文编码问题进行处理
	 * 先转换成字节数组，再转换成字符串
	 */
	public String getParameter(String name) {
		String value = req.getParameter(name);
		//处理编码问题
		try {
			value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
		}
		catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		return value;
	}
}
