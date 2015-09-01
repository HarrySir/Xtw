/**
 * 
 */
package edu.fjnu.xtw.domain;

/**
 * @author lzx
 * 
 */
public class XtwUsers {
	private Integer userId;
	private String accountNumber;
	private String stuNumber;
	private String password;
	private String ageinPassword;
	private String userName;
	private String phoneNumber;
	private String qqNumber;
	private String email;
	private XtwCollege xtwCollege;

	public XtwUsers() {
		super();
	}

	public XtwUsers(Integer userId, String accountNumber, String stuNumber,
			String password, String ageinPassword, String userName,
			String phoneNumber, String qqNumber, String email,
			XtwCollege xtwCollege) {
		super();
		this.userId = userId;
		this.accountNumber = accountNumber;
		this.stuNumber = stuNumber;
		this.password = password;
		this.ageinPassword = ageinPassword;
		this.userName = userName;
		this.phoneNumber = phoneNumber;
		this.qqNumber = qqNumber;
		this.email = email;
		this.xtwCollege = xtwCollege;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getStuNumber() {
		return stuNumber;
	}

	public void setStuNumber(String stuNumber) {
		this.stuNumber = stuNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAgeinPassword() {
		return ageinPassword;
	}

	public void setAgeinPassword(String ageinPassword) {
		this.ageinPassword = ageinPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getQqNumber() {
		return qqNumber;
	}

	public void setQqNumber(String qqNumber) {
		this.qqNumber = qqNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public XtwCollege getXtwCollege() {
		return xtwCollege;
	}

	public void setXtwCollege(XtwCollege xtwCollege) {
		this.xtwCollege = xtwCollege;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("XtwUsers [userId=");
		builder.append(userId);
		builder.append(", accountNumber=");
		builder.append(accountNumber);
		builder.append(", stuNumber=");
		builder.append(stuNumber);
		builder.append(", password=");
		builder.append(password);
		builder.append(", ageinPassword=");
		builder.append(ageinPassword);
		builder.append(", userName=");
		builder.append(userName);
		builder.append(", phoneNumber=");
		builder.append(phoneNumber);
		builder.append(", qqNumber=");
		builder.append(qqNumber);
		builder.append(", email=");
		builder.append(email);
		builder.append(", xtwCollege=");
		builder.append(xtwCollege);
		builder.append("]");
		return builder.toString();
	}

}
