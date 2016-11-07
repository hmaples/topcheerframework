package com.topcheer.tools;

import java.util.regex.Pattern;

import org.apache.commons.lang3.StringUtils;

public class RegexUtil {

	/**
	 * 手机号11位数字
	 * 
	 * @param mobilePhone
	 * @return
	 */
	public static boolean checkHandPhone(String handPhone) {
		// String regex = "^[0-9]\\d{10}$";
		String regex = "^[0-9]{11}$";
		Pattern pattern = Pattern.compile(regex);
		return pattern.matcher(StringUtils.trim(handPhone)).find();
	}

	/**
	 * 邮箱地址
	 * 
	 * @param mobilePhone
	 * @return
	 */
	public static boolean checkEmail(String email) {
		String regex = "^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
		Pattern pattern = Pattern.compile(regex);
		return pattern.matcher(StringUtils.trim(email)).find();
	}

	/**
	 * 18位身份证号
	 * 
	 * @param mobilePhone
	 * @return
	 */
	public static boolean checkNewIDCard(String idNo) {
		// String regex =
		// "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{4}$";
		String regex = "^[1-9]\\d{5}[1-9]\\d{3}((0[1-9])|(1[0-2]))(([0|1|2]\\d)|3[0-1])(\\d{3})(\\d|X|x)$";// 身份证正则表达式(18位)
		Pattern pattern = Pattern.compile(regex);
		return pattern.matcher(StringUtils.trim(idNo)).find();
	}

	/**
	 * 15位身份证号
	 * 
	 * @param mobilePhone
	 * @return
	 */
	public static boolean checkOldIDCard(String idNo) {
		String regex = "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$";
		Pattern pattern = Pattern.compile(regex);
		return pattern.matcher(StringUtils.trim(idNo)).find();
	}

}
