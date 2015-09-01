/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.fjnu.xtw.dao.inter.TypeDaoInter;
import edu.fjnu.xtw.domain.XtwType;
import edu.fjnu.xtw.utils.JdbcUtils;

/**
 * @author Administrator
 *
 */
public class TypeDaoImpl implements TypeDaoInter {
	private static final String FIND_BY_NAME = "select * from XTW_TYPE where typeName=?";
	private static final String FIND_BY_ID = "select * from XTW_TYPE where typeId=?";
	
	/**
	 * 通过类型名查找出类型对象
	 */
	@Override
	public XtwType findByName(String typeName) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwType type = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_NAME);
			pstmt.setString(1, typeName);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				type = new XtwType();
				type.setTypeId(rset.getInt("typeId"));
				type.setTypeName(rset.getString("typeName"));
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return type;
	}

	/**
	 * 通过tpeyId查找类型对象
	 */
	@Override
	public XtwType findById(Integer typeId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwType type = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_ID);
			pstmt.setInt(1, typeId);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				type = new XtwType();
				type.setTypeId(rset.getInt("typeId"));
				type.setTypeName(rset.getString("typeName"));
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return type;
	}

}
