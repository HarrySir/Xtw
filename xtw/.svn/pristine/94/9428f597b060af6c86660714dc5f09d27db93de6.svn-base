/**
 * 
 */
package edu.fjnu.xtw.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.RestoreAction;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * @author Administrator
 * 
 */
public class JdbcUtils {
	// 使用配置文件中的oracle-config配置
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource(
			"oracle-config");

	private static final JdbcUtils JDBC_UTILS = new JdbcUtils();

	private JdbcUtils() {

	}

	public static JdbcUtils getInstance() {
		return JDBC_UTILS;
	}

	/**
	 * 使用连接池，返回一个连接对象
	 * 
	 * @return
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 释放资源
	 * 
	 * @param conn
	 * @param pstmt
	 * @param rset
	 */
	public void releaseRes(Connection conn, PreparedStatement pstmt,
			ResultSet rset) {
		try {
			if (rset != null) {
				rset.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
