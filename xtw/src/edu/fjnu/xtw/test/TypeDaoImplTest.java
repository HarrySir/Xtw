/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.dao.impl.TypeDaoImpl;
import edu.fjnu.xtw.dao.inter.TypeDaoInter;
import edu.fjnu.xtw.domain.XtwType;

/**
 * @author Administrator
 *
 */
public class TypeDaoImplTest {
	/**
	 * 测试通过ID查找
	 * past
	 */
	@Test
	public void testFindById(){
		TypeDaoInter typeDaoImpl = new TypeDaoImpl();
		XtwType type = typeDaoImpl.findById(1);
		System.out.println(type);
	}
}
