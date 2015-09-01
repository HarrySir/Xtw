/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.dao.impl.UsersDaoImpl;
import edu.fjnu.xtw.dao.inter.UsersDaoInter;
import edu.fjnu.xtw.domain.XtwUsers;

/**
 * @author Administrator
 *
 */
public class UsersDaoImplTest {
	/**
	 * 测试添加用户
	 * past
	 */
	@Test
	public void testAddUser(){
		UsersDaoInter usersDaoImpl = new UsersDaoImpl();
		XtwUsers user = new XtwUsers();
		user.setAccountNumber("xuewenjie");
		user.setStuNumber("123012013080");
		user.setPassword("xwh852456");
		user.setUserName("薛文杰");
		user.setPhoneNumber("18695607266");
		user.setQqNumber("450738420");
		user.setEmail("450738420@qq.com");
		usersDaoImpl.addUser(user);
	}
	
	/**
	 * 测试通过账号查找
	 * past
	 */
	@Test
	public void testFindByAccountNumber(){
		UsersDaoInter usersDaoImpl = new UsersDaoImpl();
		XtwUsers user = usersDaoImpl.findByAccountNumber("lzx@qq.com");
		System.out.println(user);
	}
	
	/**
	 * 测试通过电话号码查找
	 * past
	 */
	@Test
	public void testFindByPhoneNumber(){
		UsersDaoInter usersDaoImpl = new UsersDaoImpl();
		XtwUsers user = usersDaoImpl.findByAccountNumber("lzx@qq.com");
		System.out.println(user);
	}
}
