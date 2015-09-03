package edu.fjnu.xtw.web.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import edu.fjnu.xtw.domain.XtwDetail;
import edu.fjnu.xtw.domain.XtwGoods;
import edu.fjnu.xtw.domain.XtwKeyWord;
import edu.fjnu.xtw.domain.XtwType;
import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.nlpir.RunStopWord;
import edu.fjnu.xtw.service.impl.GoodsServiceImpl;
import edu.fjnu.xtw.service.impl.KeyWordServiceImpl;
import edu.fjnu.xtw.service.impl.TypeServiceImpl;
import edu.fjnu.xtw.service.inter.GoodsServiceInter;
import edu.fjnu.xtw.service.inter.KeyWordServiceInter;
import edu.fjnu.xtw.service.inter.TypeServiceInter;

public class PutLostServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		
		//得到工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//创建工厂解析器
		ServletFileUpload sfu = new ServletFileUpload(factory);
		List<FileItem> fileItemsList = null;
		try {
			//解析request，得到FileItem集合
			fileItemsList = sfu.parseRequest(request);
		} 
		catch (FileUploadException e) {
			e.printStackTrace();
		}
		//得到第一个表单项
		FileItem fileItemAct = fileItemsList.get(0);
		//得到表单项的内容
		String act = fileItemAct.getString();
		
		if (act.equals("putLostCardMessage")) {
			this.putLostCardMessage(request, response);
		}
		else if (act.equals("dailyGoods")) {
			this.putLostDailyGoods(request, response, fileItemsList);
		}
	}

	/**
	 * 处理用户发布日常用品招领信息
	 * @param request
	 * @param response
	 * @param fileItemsList
	 * @throws ServletException
	 * @throws IOException
	 * @throws ParseException 
	 */
	private void putLostDailyGoods(HttpServletRequest request, HttpServletResponse response, 
			List<FileItem> fileItemsList) throws ServletException, IOException {
		/*
		 * 处理日常用品类型
		 */
//		FileItem fileItemType = fileItemsList.get(1);
//		XtwType xtwType = this.dealWithType(fileItemType);
		
		//创建物品对象
		XtwGoods xtwGoods = new XtwGoods();
		//创建具体内容对象
		XtwDetail xtwDetail = new XtwDetail();
		
		//把type对象设置给物品对象
//		xtwGoods.setXtwType(xtwType);
		
		/*
		 * 处理拥有者的姓名
		 */
		FileItem fileItemOwnerName = fileItemsList.get(2);
		//得到姓名
		String ownerName = fileItemOwnerName.getString("UTF-8");
		//设置姓名到goods对象
		xtwGoods.setOwnerName(ownerName);
		
		/*
		 * 处理时间
		 */
		FileItem fileItemTime = fileItemsList.get(3);
		Date lostTime = null;
		try {
			lostTime = this.dealWithTime(fileItemTime);
		} 
		catch (ParseException e) {
			e.printStackTrace();
		}
		
		/*
		 * 处理地点
		 */
//		FileItem fileItemLocation = fileItemsList.get(4);
			
		/*
		 * 处理手机号码
		 */	 
		FileItem fileItemPhone = fileItemsList.get(5);
		String phone = fileItemPhone.getString("UTF-8");
		xtwDetail.setPhoneNumber(phone);
		
		/*
		 * 处理详细描述
		 */ 
		FileItem fileItemDetail = fileItemsList.get(6);
		//得到详细描述
		String detailDescription = fileItemDetail.getString("UTF-8");
		xtwDetail.setDetailDescription(detailDescription);
		/*
		 * 处理用户ID
		 */ 
//		XtwUsers user = (XtwUsers) request.getSession().getAttribute("session_user");
//		xtwDetail.setXtwUsers(user);
		/*以上past*/
		
		/*
		 * 处理关键词ID
		 */
		XtwKeyWord xtwKeyWord = this.dealWithKeyWord(xtwDetail.getDetailDescription());
		xtwDetail.setXtwKeyWord(xtwKeyWord);
		System.out.println(xtwDetail.getXtwKeyWord());
		
		
		
		/*
		 * 处理对应事件名称
		 */
		 
		xtwDetail.setEventName("失物");
		
		/*
		 * 处理上传的图片
		 */
//		FileItem fileItemPicture = fileItemsList.get(8);
//		byte[] pictureByte = IOUtils.toByteArray(fileItemPicture.getInputStream());
//		xtwGoods.setPicture(pictureByte);
		
		/*
		 * 添加物品，返回物品ID
		 */
//		GoodsServiceInter goodsServiceImpl = new GoodsServiceImpl();
//		Integer id = goodsServiceImpl.addGoods(xtwGoods);
//		xtwGoods.setGoodsId(id);
//		xtwDetail.setXtwGoods(xtwGoods);
		
		/*
		 * 处理对应事件ID
		 */
		
	}
	
	private void putLostCardMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 上传三步 
		 * 1.得到工厂 
		 * 2.通过工厂创建解析器 
		 * 3.解析request，得到FileItem集合
		 * 4.遍历FileItem集合，调用其API完成文件的保存
		 */
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfu = new ServletFileUpload(factory);
		try {
			List<FileItem> fileItemsList = sfu.parseRequest(request);
		} 
		catch (FileUploadException e) {
			e.printStackTrace();
		}
		
		
		//获取用户选择的卡类类型
		String cardTypeName = request.getParameter("cardTypeName");
		//创建service对象
		TypeServiceInter typeServiceImpl = new TypeServiceImpl();	
		XtwType type = typeServiceImpl.getTypeByName(cardTypeName);
		//创建物品对象
		XtwGoods goods = new XtwGoods();
		//创建具体内容对象
		XtwDetail detail = new XtwDetail();
		//设置类型到物品对象中
		goods.setXtwType(type);
		if (cardTypeName.equals("银行卡")) {
			//获取卡号
			String cardNumber = request.getParameter("cardNumber");
			//获取姓名
			String cardName = request.getParameter("cardName");
			//获取图片信息
			//....
			//保存到物品对象中
			goods.setCardNumber(cardNumber);
			goods.setOwnerName(cardName);
			//保存图片...
		}
		else if(cardTypeName.equals("餐卡")) {
			//获取学院
			String college = request.getParameter("college");
			//获取信息
			String cardName = request.getParameter("cardName");
			//获取图片信息
			//...
			//保存到物品对象中
			goods.setBrand(college);
			goods.setOwnerName(cardName);
			//保存图片...
		}
		else if(cardTypeName.equals("身份证")) {
			
		}
		else if (cardTypeName.endsWith("会员卡")) {
			
		}
	}
	
	/**
	 * 将详细描述提取出关键词，然后添加到数据库中，并返回关键词对象
	 * @param keyWordStr
	 * @return
	 */
	private XtwKeyWord dealWithKeyWord(String keyWordStr){
		KeyWordServiceInter keyWordServiceImpl = new KeyWordServiceImpl();
		System.out.println(keyWordStr);
		String keyWordString = null;
		try {
			keyWordString = keyWordServiceImpl.getKeyWordString(keyWordStr);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("提取关键字后：" + keyWordString);
		int id = keyWordServiceImpl.addKeyWord(keyWordString);
		XtwKeyWord xtwKeyWord = keyWordServiceImpl.findById(id);
		return xtwKeyWord;
	}
	
	/**
	 * 处理丢失时间，将字符串形式的时间转换成时间对象，并返回
	 * @param fileItemTime
	 * @return
	 * @throws UnsupportedEncodingException 
	 * @throws ParseException 
	 */
	private Date dealWithTime(FileItem fileItemTime) 
			throws UnsupportedEncodingException, ParseException{
		//得到用户选择的时间
		String lostTime = fileItemTime.getString("UTF-8");
		//创建格式化时间对象，指定格式
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		//转换成时间对象返回
		return dateFormat.parse(lostTime);
	}
	
	/**
	 * 得到用户选择的类型，返回类型对象
	 * @param fileItemType
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	private XtwType dealWithType(FileItem fileItemType) throws UnsupportedEncodingException{
		//得到日常用品类的类型
		String typeName = fileItemType.getString("UTF-8");
		TypeServiceInter typeServiceImpl = new TypeServiceImpl();
		//得到type对象
		XtwType xtwType = typeServiceImpl.getTypeByName(typeName);
		return xtwType;
	}
}
