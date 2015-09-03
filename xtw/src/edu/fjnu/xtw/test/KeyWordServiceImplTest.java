/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.service.impl.KeyWordServiceImpl;
import edu.fjnu.xtw.service.inter.KeyWordServiceInter;

/**
 * @author john
 *
 */
public class KeyWordServiceImplTest {
	/**
	 * 测试提取所给详细描述当中的关键字
	 * @throws Exception 
	 * 
	 */
	@Test
	
	public void testGetKeyWordString () throws Exception{
		String test = "具体位置是在西门，大概下午两点多丢的餐卡";
		KeyWordServiceInter keyWordServiceImpl = new KeyWordServiceImpl();
		System.out.println(keyWordServiceImpl.getKeyWordString(test));
	}
}
