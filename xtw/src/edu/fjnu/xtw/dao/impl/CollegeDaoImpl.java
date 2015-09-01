/**
 * 
 */
package edu.fjnu.xtw.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mchange.v2.c3p0.impl.NewPooledConnection;

import edu.fjnu.xtw.dao.inter.CollegeDaoInter;
import edu.fjnu.xtw.dao.inter.SchoolDaoInter;
import edu.fjnu.xtw.domain.XtwCollege;
import edu.fjnu.xtw.domain.XtwSchool;
import edu.fjnu.xtw.utils.JdbcUtils;

/**
 * @author Administrator
 *
 */
public class CollegeDaoImpl implements CollegeDaoInter {
	private SchoolDaoInter schoolDaoImpl = new SchoolDaoImpl();
	private static final String FIND_COLLEGE = "select * from XTW_COLLEGE where schoolId=? and collegeName=?";
	private static final String FIND_BY_COLLEGE_ID = "select * from XTW_COLLEGE where collegeId=?";
	private static final String LOAD_ALL_COLLEGE_BY_SCHOOL_ID = "select * from XTW_COLLEGE where schoolId=?";
	
	/**
	 * 通过学院名称和学校Id查找学院信息
	 */
	@Override
	public XtwCollege findByCollegeNameAndSchoolId(String collegeName, Integer schoolId) {		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwCollege college = null;
		XtwSchool school = null;
		
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_COLLEGE);
			pstmt.setInt(1, schoolId);
			pstmt.setString(2, collegeName);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				college = new XtwCollege();
				school = new XtwSchool();
				college.setCollegeId(rset.getInt("collegeId"));
				school = schoolDaoImpl.findById(rset.getInt("schoolId"));
				college.setXtwSchool(school);
				college.setCollegeName(rset.getString("collegeName"));
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return college;
	}

	/**
	 * 通过学院Id查找学院信息
	 */
	@Override
	public XtwCollege findById(Integer collegeId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwCollege college = null;
		
		try {
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(FIND_BY_COLLEGE_ID);
			pstmt.setInt(1, collegeId);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			if (rset.next()) {
				college = new XtwCollege();
				college.setCollegeId(rset.getInt("collegeId"));
				college.setXtwSchool(schoolDaoImpl.findById(rset.getInt("schoolId")));
				college.setCollegeName(rset.getString("collegeName"));
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return college;
	}

	@Override
	public List<XtwCollege> loadAllCollegeBySchoolId(Integer id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		XtwCollege college = null;
		List<XtwCollege> collegeList = new ArrayList<XtwCollege>();
		
		try {
			//得到数据库连接
			conn = JdbcUtils.getInstance().getConnection();
			pstmt = conn.prepareStatement(LOAD_ALL_COLLEGE_BY_SCHOOL_ID);
			//设置参数
			pstmt.setInt(1, id);
			rset = pstmt.executeQuery();
			if (rset == null) {
				return null;
			}
			//封装查询结果到对象中
			while (rset.next()) {
				college = new XtwCollege();
				college.setCollegeId(rset.getInt("collegeId"));
				//通过id查找school对象
				XtwSchool school = schoolDaoImpl.findById(rset.getInt("schoolId"));
				college.setXtwSchool(school);
				college.setCollegeName(rset.getString("collegeName"));
				collegeList.add(college);
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			JdbcUtils.getInstance().releaseRes(conn, pstmt, rset);
		}
		return collegeList;
	}

}
