/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import edu.fjnu.md5.MD5Utils;
import edu.fjnu.xtw.dao.impl.UsersDaoImpl;
import edu.fjnu.xtw.dao.inter.UsersDaoInter;
import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.exception.UsersException;
import edu.fjnu.xtw.service.inter.UsersServiceInter;

/**
 * @author Administrator
 * 
 */
public class UsersServiceImpl implements UsersServiceInter {
	public UsersDaoInter usersDaoImpl = new UsersDaoImpl();

	/**
	 * 处理用户注册，将其密码进行加密，对账号和手机号唯一性进行校验，然后插入数据库
	 * @throws UsersException 
	 */
	@Override
	public void register(XtwUsers user) throws UsersException {
		String password = user.getPassword();
		user.setPassword(this.encryption(password));
		boolean isAccountNumberExist = this.isAccountNumberExist(user.getAccountNumber());
		boolean isPhoneNumberExist = this.isPhoneNumberExist(user.getPhoneNumber());
		if (isAccountNumberExist) {
			throw new UsersException("用户名已存在");
		}
		else if (isPhoneNumberExist) {
			throw new UsersException("手机号码已存在");
		}
		else {
			usersDaoImpl.addUser(user);			
		}
	}

	/**
	 * 对密码进行MD5加密操作
	 */
	@Override
	public String encryption(String str) {
		MD5Utils md5Utils = new MD5Utils();
		return md5Utils.getMD5(str);
	}

	/**
	 * 判断账号是否存在
	 */
	@Override
	public boolean isAccountNumberExist(String accountNumber) {
		boolean flag = false;
		XtwUsers users = usersDaoImpl.findByAccountNumber(accountNumber);
		if (users != null && users.getAccountNumber().equals(accountNumber)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * 判断手机号是否存在
	 */
	@Override
	public boolean isPhoneNumberExist(String phoneNumber) {
		boolean flag = false;
		XtwUsers users = usersDaoImpl.findByPhoneNumber(phoneNumber);
		if (users != null && users.getPhoneNumber().equals(phoneNumber)) {
			flag = true;
		}
		return flag;
	}

	/**
	 * 判断登录账号是否存在，密码是否正确，不存在或不正确则抛出异常
	 */
	@Override
	public XtwUsers login(XtwUsers users) throws UsersException {
		users.setPassword(this.encryption(users.getPassword()));
		XtwUsers userFind = usersDaoImpl.findByAccountNumber(users.getAccountNumber());
		if (userFind == null) {
			throw new UsersException("账号不存在");
		}
		else if (!users.getPassword().equals(userFind.getPassword())) {
			throw new UsersException("密码错误");
		}
		else {
			return userFind;
		}
	}
	
	
	
}
