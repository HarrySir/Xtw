/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import edu.fjnu.xtw.dao.inter.KeyWordDaoInter;
import edu.fjnu.xtw.domain.XtwKeyWord;
import edu.fjnu.xtw.utils.JdbcUtils;

/**
 * @author Administrator
 *
 */
public class KeyWordDaoImpl implements KeyWordDaoInter {
	private static final String ADD_KEYWORD = "insert into XTW_KEYWORD values(seq_on_keyword.nextval,?,?,?,?,?,?,?,?,?,?)";
	private static final String FIND_BY_ID = "select * from XTW_KEYWORD where keywordId=?";
	
	@Override
	public Object addKeyWord(XtwKeyWord keyWord) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rset = null;
		Object id = null;
		try{
			// 调用getConnection()方法得到数据库连接
			conn = JdbcUtils.getInstance().getConnection();
			// 关联SQL语句到pstmt
			pstmt = conn.prepareStatement(ADD_KEYWORD, Statement.RETURN_GENERATED_KEYS);
			// 设置SQL语句中的参数
			pstmt.setString(1, keyWord.getKeywordOne());
			pstmt.setString(2, keyWord.getKeywordTwo());
			pstmt.setString(3, keyWord.getKeywordThree());
			pstmt.setString(4, keyWord.getKeywordFour());
			pstmt.setString(5, keyWord.getKeywordFive());
			pstmt.setString(6, keyWord.getKeywordSix());
			pstmt.setString(7, keyWord.getKeywordSeven());
			pstmt.setString(8, keyWord.getKeywordEight());
			pstmt.setString(9, keyWord.getKeywordNine());
			pstmt.setString(10, keyWord.getKeywordTen());
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
		finally {
			// 关闭SQL语句
			JdbcUtils.getInstance().releaseRes(conn, pstmt, null);
		}
		return id;
	}
	
	@Override
	public XtwKeyWord findKeyWordById(Integer id) {
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rset = null;
		XtwKeyWord xtwKeyWord = null;
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_ID);
			pstmt.setInt(1, id);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				xtwKeyWord = new XtwKeyWord();
				xtwKeyWord.setKeywordId(rset.getInt("keywordId"));
				xtwKeyWord.setKeywordOne(rset.getString("keywordOne"));
				xtwKeyWord.setKeywordTwo(rset.getString("keywordTwo"));
				xtwKeyWord.setKeywordThree(rset.getString("keywordThree"));
				xtwKeyWord.setKeywordFour(rset.getString("keywordFour"));
				xtwKeyWord.setKeywordFive(rset.getString("keywordFive"));
				xtwKeyWord.setKeywordSix(rset.getString("keywordSix"));
				xtwKeyWord.setKeywordSeven(rset.getString("keywordSeven"));
				xtwKeyWord.setKeywordEight(rset.getString("keywordEight"));
				xtwKeyWord.setKeywordNine(rset.getString("keywordNine"));
				xtwKeyWord.setKeywordTen(rset.getString("keywordTen"));
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return xtwKeyWord;
	}

}
