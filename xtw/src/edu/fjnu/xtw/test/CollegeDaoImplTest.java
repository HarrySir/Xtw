/**
 * 
 */
package edu.fjnu.xtw.test;

import java.util.List;

import org.junit.Test;

import edu.fjnu.xtw.dao.impl.CollegeDaoImpl;
import edu.fjnu.xtw.dao.inter.CollegeDaoInter;
import edu.fjnu.xtw.domain.XtwCollege;

/**
 * @author lzx
 * 测试CollegeDaoImpl类的实现
 */
public class CollegeDaoImplTest {
	/**
	 * 测试通过学院名称，学校Id查找学院
	 * past
	 */
	@Test
	public void testFindByCollegeNameAndSchoolId(){
		CollegeDaoInter collegeDaoImpl = new CollegeDaoImpl();
		XtwCollege college = collegeDaoImpl.findByCollegeNameAndSchoolId("软件学院", 1);
		System.out.println(college);
	}
	
	/**
	 * 测试通过学校id查找所有学院
	 * past
	 */
	@Test
	public void testLoadAllCollegeBySchoolId(){
		CollegeDaoInter collegeDaoImpl = new CollegeDaoImpl();
		List<XtwCollege> collegeList = collegeDaoImpl.loadAllCollegeBySchoolId(1);
		for (XtwCollege college : collegeList) {
			System.out.println(college);
		}
	}
}
