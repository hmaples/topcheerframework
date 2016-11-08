package com.topcheer.STSService.dto;

import java.util.Date;
import com.topcheer.framework.dto.BaseDto;

public class UserInfo extends BaseDto {

	private String userName;
	private String passWord;
	private int id;
	private Integer inte;
	private Date date;
	private Long lon;
	private long lonn;

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the passWord
	 */
	public String getPassWord() {
		return passWord;
	}

	/**
	 * @param passWord
	 *            the passWord to set
	 */
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getInte() {
		return inte;
	}

	public void setInte(Integer inte) {
		this.inte = inte;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Long getLon() {
		return lon;
	}

	public void setLon(Long lon) {
		this.lon = lon;
	}

	public long getLonn() {
		return lonn;
	}

	public void setLonn(long lonn) {
		this.lonn = lonn;
	}

}
