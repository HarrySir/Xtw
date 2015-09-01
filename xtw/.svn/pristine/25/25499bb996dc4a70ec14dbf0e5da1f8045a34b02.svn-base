/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.service.impl.SchoolServiceImpl;
import edu.fjnu.xtw.service.inter.SchoolServiceInter;

/**
 * @author lzx
 *
 */
public class SchoolServiceImplTest {
	/**
	 * 测试得到所有学校
	 * past
	 */
	@Test
	public void testGetAllSchool(){
		SchoolServiceInter schoolServiceImpl = new SchoolServiceImpl();
		String str = schoolServiceImpl.getAllSchool();
		System.out.println(str);
	}
	
	/**
	 * 测试通过id查找学校
	 * past
	 */
	@Test
	public void testFindBySchoolId(){
		SchoolServiceInter schoolServiceImpl = new SchoolServiceImpl();
		System.out.println(schoolServiceImpl.findBySchoolId(1));
	}
}
