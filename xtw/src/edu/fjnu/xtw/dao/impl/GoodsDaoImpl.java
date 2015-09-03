/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.rowset.serial.SerialBlob;

import edu.fjnu.xtw.dao.inter.GoodsDaoInter;
import edu.fjnu.xtw.dao.inter.TypeDaoInter;
import edu.fjnu.xtw.domain.XtwGoods;
import edu.fjnu.xtw.utils.JdbcUtils;

/**
 * @author Administrator
 *
 */
public class GoodsDaoImpl implements GoodsDaoInter {
	private TypeDaoInter typeDaoImpl = new TypeDaoImpl();
	private static final String ADD_GOODS = "insert into XTW_GOODS values(seq_on_goods.nextval,?,?,?,?,?)";
	private static final String FIND_GOODS_BY_ID = "select * from XTW_GOODS where goodsId=?";
	
	
	@Override
	public Object addGoods(XtwGoods goods) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Object id = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(ADD_GOODS, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, goods.getXtwType().getTypeId());
			pstmt.setBlob(2, new SerialBlob(goods.getPicture()));
			pstmt.setString(3, goods.getBrand());
			pstmt.setString(4, goods.getCardNumber());
			pstmt.setString(5, goods.getOwnerName());
			pstmt.executeUpdate();
			rset = pstmt.getGeneratedKeys();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				id = rset.getObject(1);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, null);
		}
		return id;	
	}

	@Override
	public XtwGoods findById(Integer id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwGoods goods = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_GOODS_BY_ID);
			pstmt.setInt(1, id);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				goods = new XtwGoods();
				goods.setGoodsId(rset.getInt("goodsId"));
				goods.setXtwType(typeDaoImpl.findById(rset.getInt("typeId")));
				goods.setPicture(rset.getBytes("picture"));
				goods.setBrand(rset.getString("brand"));
				goods.setCardNumber(rset.getString("cardNumber"));
				goods.setOwnerName(rset.getString("ownerName"));
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return goods;
	}

	
}
