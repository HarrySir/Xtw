/**
 * 
 */
package edu.fjnu.xtw.test;

import org.junit.Test;

import edu.fjnu.xtw.service.impl.UsersServiceImpl;
import edu.fjnu.xtw.service.inter.UsersServiceInter;

/**
 * @author Administrator
 *
 */
public class UsersServiceImplTest {
	/**
	 * 测试账号是否存在
	 * past
	 */
	@Test
	public void testIsAccountNumberExist(){
		UsersServiceInter usersServiceImpl = new UsersServiceImpl();
		boolean flag = usersServiceImpl.isAccountNumberExist("lizixin");
		System.out.println(flag);
	}
	
	/**
	 * 测试手机号码是否存在
	 * past
	 */
	@Test
	public void testIsPhoneNumberExist(){
		UsersServiceInter usersServiceImpl = new UsersServiceImpl();
		boolean flag = usersServiceImpl.isPhoneNumberExist("10366012564");
		System.out.println(flag);
	}
}
