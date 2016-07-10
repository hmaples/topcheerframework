package com.topcheer.test.dto;

import com.topcheer.framework.dto.BaseDto;

public class RegisterUser extends BaseDto{

	private String userName;
	private String phone;
	private String birthType;
	private String birthDay;
	private String worker;
	private String[] hobby;
	private String note;

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
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the birthType
	 */
	public String getBirthType() {
		return birthType;
	}

	/**
	 * @param birthType
	 *            the birthType to set
	 */
	public void setBirthType(String birthType) {
		this.birthType = birthType;
	}

	/**
	 * @return the birthDay
	 */
	public String getBirthDay() {
		return birthDay;
	}

	/**
	 * @param birthDay
	 *            the birthDay to set
	 */
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	/**
	 * @return the worker
	 */
	public String getWorker() {
		return worker;
	}

	/**
	 * @param worker
	 *            the worker to set
	 */
	public void setWorker(String worker) {
		this.worker = worker;
	}

	/**
	 * @return the hobby
	 */
	public String[] getHobby() {
		return hobby;
	}

	/**
	 * @param hobby
	 *            the hobby to set
	 */
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	/**
	 * @return the note
	 */
	public String getNote() {
		return note;
	}

	/**
	 * @param note
	 *            the note to set
	 */
	public void setNote(String note) {
		this.note = note;
	}

}
