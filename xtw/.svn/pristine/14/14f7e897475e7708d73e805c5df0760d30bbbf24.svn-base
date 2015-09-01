/**
 * 
 */
package edu.fjnu.xtw.dao.inter;

import java.util.List;

import edu.fjnu.xtw.domain.XtwCollege;

/**
 * @author lzx
 *
 */
public interface CollegeDaoInter {
	/**
	 * 通过学校id和学院名称查找学院
	 * @param collegeName
	 * @param schoolId
	 * @return
	 */
	public XtwCollege findByCollegeNameAndSchoolId(String collegeName, Integer schoolId);
	
	/**
	 * 通过id查找学院
	 * @param collegeId
	 * @return
	 */
	public XtwCollege findById(Integer collegeId);
	
	/**
	 * 通过学校id查找属于该学校所有学院
	 * @param id
	 * @return
	 */
	public List<XtwCollege> loadAllCollegeBySchoolId(Integer id);
}
