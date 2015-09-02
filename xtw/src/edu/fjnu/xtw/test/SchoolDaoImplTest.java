/**
 * 
 */
package edu.fjnu.xtw.test;

import java.util.List;

import org.junit.Test;

import edu.fjnu.xtw.dao.impl.SchoolDaoImpl;
import edu.fjnu.xtw.dao.inter.SchoolDaoInter;
import edu.fjnu.xtw.domain.XtwSchool;

/**
 * @author Administrator
 *
 */
public class SchoolDaoImplTest {
	/**
	 * 测试通过学校名查找学校
	 * past
	 */
	@Test
	public void testFindBySchoolName(){
		SchoolDaoInter schoolDaoImpl = new SchoolDaoImpl();
		XtwSchool school = schoolDaoImpl.findBySchoolName("福建师范大学");
		System.out.println(school);
	}
	
	/**
	 * 测试通过Id查找学校
	 * past
	 */
	@Test
	public void testFindById(){
		SchoolDaoInter schoolDaoImpl = new SchoolDaoImpl();
		XtwSchool school = schoolDaoImpl.findById(1);
		System.out.println(school);
	}
	
	/**
	 * 加载所有学校
	 * past
	 */
	@Test
	public void testLoadAll(){
		SchoolDaoInter schoolDaoImpl = new SchoolDaoImpl();
		List<XtwSchool> schoolList = schoolDaoImpl.loadAll();
		for (XtwSchool school : schoolList) {
			System.out.println(school);
		}
	}
	
	/**
	 * 添加一所学校
	 * past
	 */
	@Test
	public void testAdd(){
		SchoolDaoInter schoolDaoImpl = new SchoolDaoImpl();
		XtwSchool school = new XtwSchool();
		school.setSchoolName("福建医科大学");
		schoolDaoImpl.add(school);
	}
}
