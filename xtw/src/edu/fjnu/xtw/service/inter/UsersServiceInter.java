/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwUsers;
import edu.fjnu.xtw.exception.UsersException;

/**
 * @author Administrator
 *
 */
public interface UsersServiceInter {
	public void register(XtwUsers user) throws UsersException;
	public String encryption(String str);
	public boolean isAccountNumberExist(String accountNumber);
	public boolean isPhoneNumberExist(String phoneNumber);
	public XtwUsers login(XtwUsers users) throws UsersException;
}
