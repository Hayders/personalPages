package com.sap.hcm.cloud.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER_INFO")
public class UserInfo {

	/**
	 * serialVersionUID
	 */
	// private static final long serialVersionUID = 3076344025960353297L;

	@Id
	@Column(name = "USER_ID", length = 50)
	private String userId;

	@Column(name = "USER_NAME", length = 50)
	private String userName;

	@Column(name = "USER_PWD", length = 50)
	private String password;

	@Column(name = "USER_SEX", length = 50)
	private String sex;

	@Column(name = "USER_EMAIL", length = 50)
	private String email;

	@Column(name = "USER_TELNUMBER", length = 50)
	private String telNumber;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

}
