/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.RestoreAction;

import edu.fjnu.xtw.dao.inter.CollegeDaoInter;
import edu.fjnu.xtw.dao.inter.UsersDaoInter;
import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.utils.JdbcUtils;

/**
 * @author Administrator
 *
 */
public class UsersDaoImpl implements UsersDaoInter {
	private CollegeDaoInter collegeDaoImpl = new CollegeDaoImpl();
	private static final String ADD_USER = "insert into XTW_USERS values(seq_on_users.nextval,?,?,?,?,?,?,?,?)";
	private static final String FIND_BY_ACCOUNT = "select * from XTW_USERS where accountNumber=?";
	private static final String FIND_BY_PHONE = "select * from XTW_USERS where phoneNumber=?";
	
	
	/**
	 * 把users插入数据库
	 */
	@Override
	public void addUser(XtwUsers users) {
		//创建连接声明
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			//调用getConnection()方法得到数据库连接
			conn = JdbcUtils.getInstance().getConnection();
			//关联SQL语句到pstmt
			pstmt = conn.prepareStatement(ADD_USER);
			//设置SQL语句中的参数
			pstmt.setString(1, users.getAccountNumber());
			pstmt.setString(2, users.getStuNumber());
			pstmt.setString(3, users.getPassword());
			pstmt.setString(4, users.getUserName());
			pstmt.setString(5, users.getPhoneNumber());
			pstmt.setString(6, users.getQqNumber());
			pstmt.setString(7, users.getEmail());
			pstmt.setInt(8, users.getXtwCollege().getCollegeId());//获取用户学院以及对应的学院ID
			//执行SQL语句
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			//关闭SQL语句
			JdbcUtils.getInstance().releaseRes(conn, pstmt, null);
		}
	}

	/**
	 * 通过用户名查找
	 */
	@Override
	public XtwUsers findByAccountNumber(String accountNumber) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwUsers user = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_ACCOUNT);
			pstmt.setString(1, accountNumber);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				user = new XtwUsers();
				user.setUserId(rset.getInt("userId"));
				user.setAccountNumber(rset.getString("accountNumber"));
				user.setStuNumber(rset.getString("stuNumber"));
				user.setPassword(rset.getString("password"));
				user.setUserName(rset.getString("userName"));
				user.setPhoneNumber(rset.getString("phoneNumber"));
				user.setQqNumber(rset.getString("QqNumber"));
				user.setEmail(rset.getString("email"));
				user.setXtwCollege(collegeDaoImpl.findById(rset.getInt("collegeId")));
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return user;
	}

	/**
	 * 通过手机号查找
	 */
	@Override
	public XtwUsers findByPhoneNumber(String phoneNumber) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwUsers user = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_PHONE);
			pstmt.setString(1, phoneNumber);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				user = new XtwUsers();
				user.setUserId(rset.getInt("userId"));
				user.setAccountNumber(rset.getString("accountNumber"));
				user.setStuNumber(rset.getString("stuNumber"));
				user.setPassword(rset.getString("password"));
				user.setUserName(rset.getString("userName"));
				user.setPhoneNumber(rset.getString("phoneNumber"));
				user.setQqNumber(rset.getString("QqNumber"));
				user.setEmail(rset.getString("email"));
				user.setXtwCollege(collegeDaoImpl.findById(rset.getInt("collegeId")));
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return user;
	}

}
