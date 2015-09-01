/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import com.mchange.v2.c3p0.impl.NewPooledConnection;

import edu.fjnu.xtw.dao.impl.CollegeDaoImpl;
import edu.fjnu.xtw.dao.inter.CollegeDaoInter;
import edu.fjnu.xtw.domain.XtwCollege;
import edu.fjnu.xtw.service.inter.CollegeServiceInter;

/**
 * @author Administrator
 *
 */
public class CollegeServiceImpl implements CollegeServiceInter {
	private CollegeDaoInter collegeDaoImpl = new CollegeDaoImpl();
	
	@Override
	public XtwCollege findByCollegeNameAndSchoolId(String collegeName,
			Integer schoolId) {
		return collegeDaoImpl.findByCollegeNameAndSchoolId(collegeName, schoolId);
	}

	@Override
	public String getAllCollegeBySchoolId(Integer id) {
		//通过ID得到所有所属学院
		List<XtwCollege> collegeList = collegeDaoImpl.loadAllCollegeBySchoolId(id);
		//创建json对象
		JSONArray jsonArray = JSONArray.fromObject(collegeList);
		//将json对象转换成字符串
		String jsonString = jsonArray.toString();
		return jsonString;
	}

}