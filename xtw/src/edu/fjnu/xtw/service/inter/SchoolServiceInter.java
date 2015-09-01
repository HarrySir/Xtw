/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwSchool;

/**
 * @author Administrator
 *
 */
public interface SchoolServiceInter {
	/**
	 * 通过学校名字查找学校
	 * @param schoolName
	 * @return
	 */
	public XtwSchool findBySchoolName(String schoolName);
	
	/**
	 * 得到所有学校的list，把它转换成json，再返回字符串
	 * @return
	 */
	public String getAllSchool();
	
	/**
	 * 通过学校id查找学校
	 * @param id
	 * @return
	 */
	public XtwSchool findBySchoolId(Integer id);
}
