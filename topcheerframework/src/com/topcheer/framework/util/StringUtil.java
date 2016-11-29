package com.topcheer.restful.framework.util;

import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 功能概述：
 * 
 */
public class StringUtil {
	/**
	 * 替换字符串中特有的字符
	 * 
	 * **/
	public static String strReplace(String str, String[] prex) {
		if (null != str && !"".equals(str)) {
			if (null != prex && prex.length > 0) {
				for (int i = 0; i < prex.length; i++) {
					if (str.startsWith(prex[i])) {
						str = str.replaceFirst(prex[i], "");
					}
				}
			}
		}
		return str;
	}

	public static String prexStrReplace(String str, String[] prex) {
		if (null != str && !"".equals(str)) {
			if (null != prex && prex.length > 0) {
				for (int i = 0; i < prex.length; i++) {
					if (str.startsWith(prex[i])) {
						str = str.replace(prex[i], "");
					}
				}
			}
		}
		return str;
	}

	/**
	 * 将null字符串转换为空串
	 * 
	 * **/
	public static String null2String(String str) {
		return str == null || "null".equalsIgnoreCase(str) ? "" : str;
	}

	/**
	 * 判断字符串是否为空
	 * 
	 * **/
	public static boolean isEmpty(final String value) {
		return value == null || value.trim().length() == 0
				|| "null".endsWith(value);
	}

	/**
	 * 将字符串转换为大写
	 * 
	 * */
	public static String StringToUpper(String str) {
		String daxie = str.toUpperCase();
		return daxie;
	}

	/**
	 * 将字符串转换为小写
	 * 
	 * */
	public static String StringToLower(String str) {
		String daxie = str.toLowerCase();
		return daxie;
	}

	public static String StringBufferToStr(StringBuffer sb) {
		if (0 != sb.length()) {
			String str = sb.toString();
			int a = str.lastIndexOf(",");
			String endStr = str.substring(0, a);
			return endStr;
		} else {
			return "";
		}

	}

	/**
	 * 计算字符串长度
	 * 
	 * @param value
	 * @return
	 */
	public static double length(String value) {
		double valueLength = 0;
		char[] ch = value.toCharArray();

		for (char c : ch) {
			if (CharUtil.isChinese(c)) {
				valueLength += 3;
			} else {
				valueLength += 1;
			}
		}

		return Math.ceil(valueLength);
	}

	/**
	 * 判断字符串是否包含空格
	 * 
	 * @param str
	 * @return
	 */
	public static boolean checkBlank(String str) {
		boolean flag = false;

		Pattern pattern = Pattern.compile("[\\s]+");
		Matcher matcher = pattern.matcher(str);
		while (matcher.find()) {
			flag = true;
		}

		return flag;
	}

	public static String StringToHex(String str, boolean isuper, String charset) {
		String strAff = "";
		try {
			if (null != str) {
				byte[] data = str.getBytes(charset);
				StringBuffer sb = new StringBuffer();
				if (null != data) {
					for (int i = 0; i < data.length; i++) {
						int d = data[i] & 0xFF;
						String s = Integer.toHexString(d);
						if (isuper)
							s = s.toUpperCase();
						if (d < 16)
							sb.append('0');
						sb.append(s);
					}
				}
				strAff = sb.toString();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return strAff;
	}

	public static void main(String[] args) {
		String prex[] = { "DE|", "AD", "QU" };
		String appId = "DEUACDEPADMIN";
		System.out.println(StringToHex("！", true, "GBK"));
		/*
		 * appId = strReplace(appId,prex);
		 * System.out.println(StringToLower(appId)); StringBuffer sb = new
		 * StringBuffer(); sb.append("SH0001"); sb.append(",");
		 * sb.append("SH0002"); sb.append(","); sb.append("SH0003");
		 * sb.append(",");
		 * 
		 * System.out.println(" endStr:"+StringBufferToStr(sb));
		 */
	}
}
