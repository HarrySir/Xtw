/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwCollege;

/**
 * @author Administrator
 *
 */
public interface CollegeServiceInter {
	/**
	 * 通过学院名称和学校id查找学院
	 * @param collegeName
	 * @param schoolId
	 * @return
	 */
	public XtwCollege findByCollegeNameAndSchoolId(String collegeName, Integer schoolId);
	
	/**
	 * 通过学校id得到该学校的所有学院
	 * @param id
	 * @return
	 */
	public String getAllCollegeBySchoolId(Integer id);
}
