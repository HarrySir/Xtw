/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import edu.fjnu.xtw.dao.inter.DetailDaoInter;
import edu.fjnu.xtw.domain.XtwDetail;

import edu.fjnu.xtw.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * @author Administrator
 * 
 */
public class DetailDaoImpl implements DetailDaoInter {
	private static final String ADD_Detail = "insert into XTW_DETAIL values(seq_on_detail.nextval,?,?,?,?,?,?,?,?,?,?)";

	@Override
	public void addDetail(XtwDetail detail) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			// 调用getConnection()方法得到数据库连接
			conn = JdbcUtils.getInstance().getConnection();
			// 关联SQL语句到pstmt
			pstmt = conn.prepareStatement(ADD_Detail);
			// 设置SQL语句中的参数
			// 样版 ：pstmt.setString(1, users.getAccountNumber());
			pstmt.setInt(1, detail.getXtwUsers().getUserId());
			pstmt.setDate(2, new java.sql.Date(detail.getDates().getTime()));
			pstmt.setString(3, detail.getLocation());
			pstmt.setInt(4, detail.getXtwGoods().getGoodsId());
			pstmt.setString(5, detail.getDetailDescription());
			pstmt.setInt(6, detail.getState());
			pstmt.setString(7, detail.getPhoneNumber());
			pstmt.setInt(8, detail.getXtwKeyWord().getKeywordId());
			pstmt.setInt(9, detail.getToDetailId());
			pstmt.setString(10, detail.getEventName());

			// 执行SQL语句
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 关闭SQL语句
			JdbcUtils.getInstance().releaseRes(conn, pstmt, null);
		}
	}

}
