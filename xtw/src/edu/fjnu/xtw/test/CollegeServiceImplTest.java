/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.service.impl.CollegeServiceImpl;
import edu.fjnu.xtw.service.inter.CollegeServiceInter;

/**
 * @author lzx
 *
 */
public class CollegeServiceImplTest {
	/**
	 * 测试通过学校id得到所有学院，并转化成json串
	 */
	@Test
	public void testGetAllCollegeBySchoolId(){
		CollegeServiceInter collegeServiceImpl = new CollegeServiceImpl();
		String str = collegeServiceImpl.getAllCollegeBySchoolId(1);
		System.out.println(str);
	}
}
