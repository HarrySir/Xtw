/**
 * 
 */
package edu.fjnu.xtw.domain;

import java.util.Date;

/**
 * @author lzx
 * 
 */
public class XtwDetail {
	private Integer detailId;
	private XtwUsers xtwUsers;
	private Date dates;
	private String location;
	private XtwGoods xtwGoods;
	private String detailDescription;
	private Integer state;
	private String phoneNumber;
	private XtwKeyWord xtwKeyWord;
	private XtwDetail xtwDetail;
	private String eventName;

	public XtwDetail() {
		super();
	}

	public XtwDetail(Integer detailId, XtwUsers xtwUsers, Date dates,
			String location, XtwGoods xtwGoods, String detailDescription,
			Integer state, String phoneNumber, XtwKeyWord xtwKeyWord,
			XtwDetail xtwDetail, String eventName) {
		super();
		this.detailId = detailId;
		this.xtwUsers = xtwUsers;
		this.dates = dates;
		this.location = location;
		this.xtwGoods = xtwGoods;
		this.detailDescription = detailDescription;
		this.state = state;
		this.phoneNumber = phoneNumber;
		this.xtwKeyWord = xtwKeyWord;
		this.xtwDetail = xtwDetail;
		this.eventName = eventName;
	}

	public Integer getDetailId() {
		return detailId;
	}

	public void setDetailId(Integer detailId) {
		this.detailId = detailId;
	}

	public XtwUsers getXtwUsers() {
		return xtwUsers;
	}

	public void setXtwUsers(XtwUsers xtwUsers) {
		this.xtwUsers = xtwUsers;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public XtwGoods getXtwGoods() {
		return xtwGoods;
	}

	public void setXtwGoods(XtwGoods xtwGoods) {
		this.xtwGoods = xtwGoods;
	}

	public String getDetailDescription() {
		return detailDescription;
	}

	public void setDetailDescription(String detailDescription) {
		this.detailDescription = detailDescription;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public XtwKeyWord getXtwKeyWord() {
		return xtwKeyWord;
	}

	public void setXtwKeyWord(XtwKeyWord xtwKeyWord) {
		this.xtwKeyWord = xtwKeyWord;
	}

	public XtwDetail getXtwDetail() {
		return xtwDetail;
	}

	public void setXtwDetail(XtwDetail xtwDetail) {
		this.xtwDetail = xtwDetail;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	@Override
	public String toString() {
		return "XtwDetail [detailId=" + detailId + ", xtwUsers=" + xtwUsers
				+ ", dates=" + dates + ", location=" + location + ", xtwGoods="
				+ xtwGoods + ", detailDescription=" + detailDescription
				+ ", state=" + state + ", phoneNumber=" + phoneNumber
				+ ", xtwKeyWord=" + xtwKeyWord + ", xtwDetail=" + xtwDetail
				+ ", eventName=" + eventName + "]";
	}

}
