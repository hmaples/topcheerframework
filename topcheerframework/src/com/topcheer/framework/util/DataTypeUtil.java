package com.topcheer.framework.util;

import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import com.topcheer.framework.log.LogWriter;

/**
 * @author 
 * 
 */
@SuppressWarnings("unchecked")
public class DataTypeUtil {

	/**
	 *计算两个日期相差多少天
	 * 
	 * @param d1
	 * @param d2
	 * @return
	 */
	public static long calendarMinus(Calendar d1, Calendar d2) {
		if (d1 == null || d2 == null) {
			return 0;
		}
		return (d1.getTimeInMillis() - d2.getTimeInMillis()) / (3600 * 24000);
	}

	/**
	 * String型转为long类型
	 * 
	 * @return long
	 */
	public static long stringTolong(String str) {
		long l = 0;
		try {
			l = Long.parseLong(str);
		} catch (Exception e) {

		}
		return l;
	}

	/**
	 * String转为double类型
	 * 
	 * @return double
	 */
	public static double stringTodouble(String str) {
		double d = 0.00;
		try {
			d = Double.parseDouble(str);
		} catch (Exception e) {

		}
		return d;
	}

	// ----------------------日期、时间相关转化函数--------------------------

	/**
	 * 将 String型 转到 java.sql.Date 格式
	 * 
	 * @param String
	 *            格式表示的日期
	 * @return java.sql.Date 格式表示的日期
	 */
	public static Date stringToDate(String str) {
		DateFormat df = null;
		if (str == null || str.trim().length() == 0)
			return null;
		try {
			df = new SimpleDateFormat("yyyy-MM-dd");
			return df.parse(str);
		} catch (ParseException aioe) {
			return null;
		}
	}

	/**
	 * 将String类型转为Calendar类型
	 * 
	 * @return Calendar
	 */
	public static Calendar stringToCalendar(String str) {
		Date date = stringToDate(str);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		return cal;
	}

	/**
	 * 将String类型转为Timestamp类型 param String("yyyy-MM-dd HH:mm:ss" 格式)
	 * 
	 * @return Timestamp
	 */
	public static Timestamp stringToTimestamp(String str) {
		Timestamp sdate = null;
		if (str != null) {
			try {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date dt = df.parse(str);
				Calendar cal = Calendar.getInstance();
				cal.setTime(dt);
				return new Timestamp(cal.getTimeInMillis());
			} catch (Exception e) {
			}
		}
		return sdate;
	}

	/**
	 * 字符串转换Timestamp 根据传入的String格式日期（yyyy-mm-dd），和 数字型天数（可为负值），计算天数
	 * 比如计算"2007-4-30"的前5天 calendarCaculate("2007-4-30",-5)； 比如计算"2007-4-30"的后5天
	 * calendarCaculate("2007-4-30",5)；
	 * 
	 * @param 传入
	 *            "yyyy-mm-dd"的年月日格式
	 * @param 传入
	 *            int型计算天数
	 * @return 输出计算后日期
	 */
	public static Timestamp stringToTimestamp(String str, int num) {
		Timestamp sdate = null;
		if (str != null) {
			try {
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				Date dt;
				dt = df.parse(str);
				Calendar cal = Calendar.getInstance();
				cal.setTime(dt);
				cal.add(Calendar.DAY_OF_MONTH, num);
				return new Timestamp(cal.getTimeInMillis());
			} catch (ParseException e) {
				LogWriter.daoError("字符串转换Timestamp出现异常");
			}
		}
		return sdate;
	}

	/**
	 * 将日期格式从 java.util.Calendar 转到 java.sql.Timestamp 格式
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return java.sql.Timestamp 格式表示的日期
	 */
	public static Timestamp calendarToTimestamp(Calendar cal) {
		if (cal == null)
			return null;
		else
			return new Timestamp(cal.getTimeInMillis());
	}

	/**
	 * 将Calendar转为String类型
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return String("yyyy-MM-dd" 格式)
	 */
	public static String calendarToString(Calendar cal) {
		String sdate = "";
		if (cal != null) {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			sdate = df.format(cal.getTime());
		}
		return sdate;
	}

	/**
	 * 将Calendar转为Date类型
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return Date
	 */
	public static Date calendarToDate(Calendar cal) {
		return stringToDate(calendarToString(cal));
	}

	/**
	 * 将Date转为String类型
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return String("yyyy-MM-dd" 格式)
	 */
	public static String dateToString(Date dt) {
		String sdate = "";
		if (dt != null) {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			sdate = df.format(dt);
		}
		return sdate;
	}

	/**
	 * 将Date转为Calendar类型
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return Calendar
	 */
	public static Calendar dateToCalendar(Date dt) {
		return stringToCalendar(dateToString(dt));
	}

	/**
	 * 将Date转为Timestamp类型
	 * 
	 * @param date
	 *            java.util.Calendar 格式表示的日期
	 * @return Timestamp
	 */
	public static Timestamp dateToTimestamp(Date dt) {
		return stringToTimestamp(dateToString(dt));
	}

	/**
	 * timestamp转为Calendar类型 默认使用 yyyy-MM-dd HH:mm:ss 格式
	 * 
	 * @return Calendar
	 */
	public static Calendar timestampToCalendar(Timestamp timestamp) {

		return stringToCalendar(timestampToString(timestamp));
	}

	/**
	 * timestamp转为Date类型 默认使用 yyyy-MM-dd HH:mm:ss 格式
	 * 
	 * @return Date
	 */
	public static Date timestampToDate(Timestamp timestamp) {

		return stringToDate(timestampToString(timestamp));
	}

	/**
	 * timestamp转为String类型 默认使用 yyyy-MM-dd HH:mm:ss 格式
	 * 
	 * @return String("yyyy-MM-dd HH:mm:ss" 格式)
	 */
	public static String timestampToString(Timestamp timestamp) {
		String rettime = "";
		if (timestamp != null) {
			SimpleDateFormat formatter = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			rettime = formatter.format(timestamp);
		}
		return rettime;
	}

	/**
	 * 取得系统当前时间
	 * 
	 * @return String yyyy-mm-dd hh:MM:ss
	 */
	public static String getCurrentDateTime() {
		Calendar rightNow = Calendar.getInstance();
		return timestampToString(calendarToTimestamp(rightNow));
	}

	/**
	 * 取得系统当前时间
	 * 
	 * @return String yyyy-mm-dd hh:MM:ss
	 */
	public static String getCurrentDateTime(String DateTimeStyle) {
		Calendar rightNow = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat(DateTimeStyle);
		return formatter.format(rightNow.getTime());
	}

	/**
	 * 取得系统当前时间
	 * 
	 * @return String yyyy-mm-dd
	 */
	public static String getCurrentDate() {
		Calendar rightNow = Calendar.getInstance();
		int year = rightNow.get(Calendar.YEAR);
		int month = rightNow.get(Calendar.MONTH) + 1;
		int day = rightNow.get(Calendar.DATE);
		return year + "-" + month + "-" + day;
	}

	/**
	 * 获取指定年月的最后一天
	 * 
	 * @param 传入
	 *            "yyyy-mm"的年月格式 比如 获得2007年4月份的最大日期：getMaxDate("2007-04"); =
	 *            "2007-04-30"
	 * @return 输出某年月的最后一天的日期
	 */

	public static Calendar getMaxDate(String str) {
		Calendar cal = null;
		if (str == null || str.trim().length() == 0)
			return null;
		String dateStr = str + "-01";
		cal = stringToCalendar(dateStr);
		int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(Calendar.DAY_OF_MONTH, maxDay);
		return cal;
	}

	/**
	 * 根据传入的String格式日期（yyyy-mm-dd），和 数字型天数（可为负值），计算天数 比如计算"2007-4-30"的前5天
	 * calendarCaculate("2007-4-30",-5)； 比如计算"2007-4-30"的后5天
	 * calendarCaculate("2007-4-30",5)；
	 * 
	 * @param 传入
	 *            "yyyy-mm"的年月格式
	 * @param 传入
	 *            int型计算天数
	 * @return 输出计算后日期
	 */
	public static Calendar calendarCaculate(String strdate, int num) {
		Calendar cal = stringToCalendar(strdate);
		cal.add(Calendar.DAY_OF_MONTH, num);
		return cal;
	}

	/**
	 * 根据传入的Calendar类型，和 数字型天数（可为负值），计算天数 比如计算"2007-4-30"的前5天
	 * calendarCaculate(calendar,-5)； 比如计算"2007-4-30"的后5天
	 * calendarCaculate(calendar,5)；
	 * 
	 * @param 传入
	 *            "yyyy-mm"的年月格式
	 * @param 传入
	 *            int型计算天数
	 * @return 输出计算后日期
	 */
	public static Calendar calendarCaculate(Calendar calendar, int num) {
		calendar.add(Calendar.DAY_OF_MONTH, num);
		return calendar;
	}

	/**
	 * 根据传入的String类型 如：2007-01-01 ,2007-12-31,计算他们之间年月，返回包含年月的list
	 * 比如计算2007-01-01 ,2007-12-31之间相差的月份
	 * caculateDateNum("2007-01-01","2007-12-31")；返回 list
	 * 包含了{200701、200702、200703
	 * 、200704、200705、200706、200707、200701、200709、200710、200711、200712}
	 * 
	 * @param 传入
	 *            "yyyy-mm-dd"的年月日格式
	 * @param 传入
	 *            "yyyy-mm-dd"的年月日格式
	 * @return 输出返回包含年月为'yyyymm'格式的list
	 */
	public static ArrayList caculateDateNum(String startDate, String endDate) {
		ArrayList loop = new ArrayList();

		// 获取查询年份
		String startYear = startDate.substring(0, 4);
		String endYear = endDate.substring(0, 4);
		// 获取查询月份
		String startMonth = startDate.substring(5, 7);
		String endMonth = endDate.substring(5, 7);
		// 计算月份数量,放入数组中
		if (Long.parseLong(startYear) == Long.parseLong(endYear)) {
			long loopmonth = Long.parseLong(endMonth)
					- Long.parseLong(startMonth);
			for (int i = 0; i <= loopmonth; i++) {
				long tempmonth = Long.parseLong(startMonth) + i;
				if (tempmonth < 10) {
					loop.add(startYear + "0" + tempmonth);
				} else {
					loop.add(startYear + tempmonth);
				}
			}
		}

		if (Long.parseLong(startYear) < Long.parseLong(endYear)) {
			final int maxMonth = 12;
			final int minMonth = 1;
			long loopyear = Long.parseLong(endYear) - Long.parseLong(startYear);
			for (int i = 0; i <= loopyear; i++) {
				String tempYear = String.valueOf(Long.parseLong(startYear) + i);
				if (tempYear.equals(startYear)) {
					long loopmonth = maxMonth - Long.parseLong(startMonth);
					for (int j = 0; j <= loopmonth; j++) {
						long tempmonth = Long.parseLong(startMonth) + j;
						if (tempmonth < 10) {
							loop.add(tempYear + "0" + tempmonth);
						} else {
							loop.add(tempYear + tempmonth);
						}
					}
				} else if (tempYear.equals(endYear)) {
					long loopmonth = Long.parseLong(endMonth);
					for (int j = minMonth; j <= loopmonth; j++) {
						long tempmonth = j;
						if (tempmonth < 10) {
							loop.add(tempYear + "0" + tempmonth);
						} else {
							loop.add(tempYear + tempmonth);
						}
					}
				} else {
					for (int j = minMonth; j <= maxMonth; j++) {
						long tempmonth = j;
						if (tempmonth < 10) {
							loop.add(tempYear + "0" + tempmonth);
						} else {
							loop.add(tempYear + tempmonth);
						}
					}
				}
			}
		}
		return loop;
	}

	/**
	 * 
	 * Method Description:<br>
	 * <font color="blue">把源对象属性值 拷贝至 目标对象 相匹配的
	 * 属性中去，源对象和目标对象可以是JavaBean、Map（HashMap、Hashtable、Properties等）类型。</font><br>
	 * <b>适用范围：</b><br>
	 * 1，JavaBean对象属性值拷贝至Map（HashMap、Hashtable、Properties等）类型中;<br>
	 * 2，JavaBean对象属性值拷贝至另一个JavaBean中; <br>
	 * 3，Map（HashMap、Hashtable、Properties等）类型对象属性值拷贝至一个JavaBean中;<br>
	 * 4，Map（HashMap、Hashtable、Properties等）类型对象属性值拷贝至一个Map类型对象中;<br>
	 * 
	 * @param: Object srcObject --源对象
	 * @param: Object targetObject --目标对象
	 * @param: String[] ignoreProperties --忽略拷贝的属性（如果不想拷贝某些属性，可以传入属性名称数组）
	 * 
	 * @return: target Object
	 */
	public static Object CopyProperties(Object srcObject, Object targetObject,
			String[] ignoreProperties) {
		if (srcObject instanceof Map) {
			if (targetObject instanceof Map) {
				Map2Map((Map) srcObject, (Map) targetObject, ignoreProperties);
			} else {
				Map2Bean((Map) srcObject, targetObject, ignoreProperties);
			}
		} else {
			if (targetObject instanceof Map) {
				Bean2Map(srcObject, (Map) targetObject, ignoreProperties);
			} else {
				Bean2Bean(srcObject, targetObject, ignoreProperties);
			}
		}

		return targetObject;
	}

	/**
	 * 
	 * Method Description:把JavaBean类型对象属性值 拷贝至另一个 JavaBean对象
	 * 
	 * @param: Object orangalObject,Object targetObject
	 * @return: target Object
	 */
	private static Object Bean2Bean(Object srcObject, Object targetObject,
			String[] excludeProperties) {
		// 1，获取srcObject和targetObject对象方法集合
		Method[] srcMethods = srcObject.getClass().getMethods();
		Method[] targetMethods = targetObject.getClass().getMethods();
		// 2,使用反射机制循环获取属性值
		for (int i = 0; i < srcMethods.length; i++) {
			// 源对象反射
			String srcMethodName = srcMethods[i].getName();
			// 跳过排除属性
			boolean isIgnore = false;
			if (excludeProperties != null) {
				for (int k = 0; k < excludeProperties.length; k++) {
					if (srcMethodName.toLowerCase().endsWith(
							excludeProperties[k].toLowerCase())) {
						isIgnore = true;
						break;
					}
				}
			}
			if (isIgnore) {
				continue;
			}
			try {
				if (srcMethodName.startsWith("get")
						&& !srcMethodName.equals("getClass")) {
					Object[] getParamValue = new Object[] {};
					Object returnValue = srcMethods[i].invoke(srcObject,
							getParamValue);
					for (int j = 0; j < targetMethods.length; j++) {
						String targetMethodName = targetMethods[j].getName();
						if (targetMethodName.startsWith("set")) {
							if (srcMethodName.substring(3).equals(
									targetMethodName.substring(3))) {
								if (srcMethods[i].getReturnType().getName()
										.equals(
												targetMethods[j]
														.getParameterTypes()[0]
														.getName())) {
									Object[] targetMethodParamValue = new Object[] { returnValue };
									targetMethods[j].invoke(targetObject,
											targetMethodParamValue);
								} else {
									String targetMethodParamName = targetMethods[j]
											.getParameterTypes()[0].getName();
									String targetMethodParam = String
											.valueOf(returnValue);
									if ("int".equals(targetMethodParamName)
											|| "java.lang.Integer"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Integer
																.valueOf(targetMethodParam) });
									}
									if ("long".equals(targetMethodParamName)
											|| "java.lang.Long"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Long
																.valueOf(targetMethodParam) });
									}
									if ("double".equals(targetMethodParamName)
											|| "java.lang.Double"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Double
																.valueOf(targetMethodParam) });
									}
									if ("float".equals(targetMethodParamName)
											|| "java.lang.Float"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Float
																.valueOf(targetMethodParam) });
									}
									if ("byte".equals(targetMethodParamName)
											|| "java.lang.Byte"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Byte
																.valueOf(targetMethodParam) });
									}
									if ("boolean".equals(targetMethodParamName)
											|| "java.lang.Boolean"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { Boolean
																.valueOf(targetMethodParam) });
									}
									if ("char".equals(targetMethodParamName)
											|| "java.lang.Character"
													.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { (targetMethodParam) });
									}
									if ("java.lang.String"
											.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { targetMethodParam });
									}
									if ("java.util.Date"
											.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { (stringToDate(targetMethodParam)) });
									}
									if ("java.sql.Timestamp"
											.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { stringToTimestamp(targetMethodParam) });
									}
									if ("java.util.Calendar"
											.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { stringToCalendar(targetMethodParam) });
									}
									if ("java.sql.Date"
											.equals(targetMethodParamName)) {
										targetMethods[j]
												.invoke(
														targetObject,
														new Object[] { stringToDate(targetMethodParam) });
									}
								}
								break;
							}
						}
					}
				}
			} catch (Exception e) {
			}
		}
		return targetObject;
	}

	/**
	 * 
	 * Method Description:把JavaBean类型对象属性值 拷贝至 Map对象
	 * 
	 * @param: Object orangalObject,Object targetObject
	 * @return: target Object
	 */
	private static Object Bean2Map(Object srcObject, Map targetObject,
			String[] excludeProperties) {
		// 1，获取srcObject和targetObject对象方法集合
		Method[] srcMethods = srcObject.getClass().getMethods();
		// 2,使用反射机制循环获取属性值
		for (int i = 0; i < srcMethods.length; i++) {
			// 源对象反射
			String srcMethodName = srcMethods[i].getName();
			// 跳过排除属性
			boolean isIgnore = false;
			if (excludeProperties != null) {
				for (int k = 0; k < excludeProperties.length; k++) {
					if (srcMethodName.toLowerCase().endsWith(
							excludeProperties[k].toLowerCase())) {
						isIgnore = true;
						break;
					}
				}
			}
			if (isIgnore) {
				continue;
			}
			try {
				if (srcMethodName.startsWith("get")
						&& !srcMethodName.equals("getClass")) {
					Object[] getParamValue = new Object[] {};
					Object returnValue = srcMethods[i].invoke(srcObject,
							getParamValue);
					String targetMethodParamName = returnValue.getClass()
							.getName();
					String key = srcMethodName.substring(3, 4).toLowerCase()
							+ srcMethodName.substring(4);
					if ("int".equals(targetMethodParamName)) {
						targetObject.put(key, Integer.valueOf(String
								.valueOf(returnValue)));
					} else if ("long".equals(targetMethodParamName)) {
						targetObject.put(key, Long.valueOf(String
								.valueOf(returnValue)));
					} else if ("double".equals(targetMethodParamName)) {
						targetObject.put(key, Double.valueOf(String
								.valueOf(returnValue)));
					} else if ("float".equals(targetMethodParamName)) {
						targetObject.put(key, Float.valueOf(String
								.valueOf(returnValue)));
					} else if ("byte".equals(targetMethodParamName)) {
						targetObject.put(key, Byte.valueOf(String
								.valueOf(returnValue)));
					} else if ("boolean".equals(targetMethodParamName)) {
						targetObject.put(key, Boolean.valueOf(String
								.valueOf(returnValue)));
					} else if ("char".equals(targetMethodParamName)) {
						targetObject.put(key, String.valueOf(returnValue));
					} else {
						targetObject.put(key, returnValue);
					}
				}
			} catch (Exception e) {
			}
		}
		return targetObject;
	}

	/**
	 * 
	 * Method Description:把Map类型对象属性值 拷贝至 Map对象
	 * 
	 * @param: Object orangalObject,Object targetObject
	 * @return: target Object
	 */
	private static Object Map2Map(Map srcObject, Map targetObject,
			String[] excludeProperties) {
		Set keys = srcObject.keySet();
		for (Iterator it = keys.iterator(); it.hasNext();) {
			// 取值
			String key = (String) it.next();
			Object value = srcObject.get(key);
			// 跳过排除属性
			boolean isIgnore = false;
			if (excludeProperties != null) {
				for (int k = 0; k < excludeProperties.length; k++) {
					if (key.equals(excludeProperties[k])) {
						isIgnore = true;
						break;
					}
				}
			}
			if (isIgnore) {
				continue;
			}
			// 赋值
			targetObject.put(key, value);
		}
		return targetObject;
	}

	/**
	 * 
	 * Method Description: 把Map类型对象属性值 拷贝至 JavaBean对象
	 * 
	 * @param: Object orangalObject,Object targetObject
	 * @return: target Object
	 */
	private static Object Map2Bean(Map srcObject, Object targetObject,
			String[] excludeProperties) {
		// 1，获取srcObject对象属性
		Set fields = srcObject.keySet();
		// 2,使用反射机制循环获取属性值
		for (Iterator it = fields.iterator(); it.hasNext();) {
			// 源对象反射
			String fieldName = (String) it.next();
			// 跳过排除属性
			boolean isIgnore = false;
			if (excludeProperties != null) {
				for (int k = 0; k < excludeProperties.length; k++) {
					if (fieldName.equals(excludeProperties[k])) {
						isIgnore = true;
						break;
					}
				}
			}
			if (isIgnore) {
				continue;
			}
			Object returnValue = srcObject.get(fieldName);
			// 获取目标对象反射方法
			String setMethodName = "set"
					+ fieldName.substring(0, 1).toUpperCase()
					+ fieldName.substring(1);
			// 判断目标方法是否存在
			Method[] targetMethods = targetObject.getClass().getMethods();
			for (int j = 0; j < targetMethods.length; j++) {
				if (targetMethods[j].getName().equals(setMethodName)) {
					// 3,目标对象set赋值
					try {
						if (returnValue instanceof Object) {
							Object[] targetMethodParamValue = new Object[] { returnValue };
							targetMethods[j].invoke(targetObject,
									targetMethodParamValue);
						} else {
							String targetMethodParamName = targetMethods[j]
									.getParameterTypes()[0].getName();
							String targetMethodParam = String
									.valueOf(returnValue);
							if ("int".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Integer
												.valueOf(targetMethodParam) });
							}
							if ("long".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Long
												.valueOf(targetMethodParam) });
							}
							if ("double".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Double
												.valueOf(targetMethodParam) });
							}
							if ("float".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Float
												.valueOf(targetMethodParam) });
							}
							if ("byte".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Byte
												.valueOf(targetMethodParam) });
							}
							if ("boolean".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { Boolean
												.valueOf(targetMethodParam) });
							}
							if ("char".equals(targetMethodParamName)) {
								targetMethods[j].invoke(targetObject,
										new Object[] { (targetMethodParam) });
							}
						}
					} catch (Exception e) {
					}
					break;
				}
			}

		}
		return targetObject;
	}

	/**
	 * 将Date类转换为XMLGregorianCalendar
	 * 
	 * @param date
	 * @return
	 */
	public static XMLGregorianCalendar dateToXmlDate(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		DatatypeFactory dtf = null;
		try {
			dtf = DatatypeFactory.newInstance();
		} catch (DatatypeConfigurationException e) {
		}
		XMLGregorianCalendar dateType = dtf.newXMLGregorianCalendar();
		dateType.setYear(cal.get(Calendar.YEAR));
		// 由于Calendar.MONTH取值范围为0~11,需要加1
		dateType.setMonth(cal.get(Calendar.MONTH) + 1);
		dateType.setDay(cal.get(Calendar.DAY_OF_MONTH));
		dateType.setHour(cal.get(Calendar.HOUR_OF_DAY));
		dateType.setMinute(cal.get(Calendar.MINUTE));
		dateType.setSecond(cal.get(Calendar.SECOND));
		return dateType;
	}

	/**
	 * 将XMLGregorianCalendar转换为Date
	 * 
	 * @param cal
	 * @return
	 */
	public static Date xmlDate2Date(XMLGregorianCalendar cal) {
		return cal.toGregorianCalendar().getTime();
	}
	// public static void main(String args[]){
	// TestBean bean1 = new TestBean();
	// TestBean2 bean2 = new TestBean2();
	// bean1.setA("test");
	// bean1.setB(1);
	// bean1.setC(2.2);
	// bean1.setD(new Long(3));
	// ArrayList list = new ArrayList();
	// list.add("aa");
	// bean1.setE(list);
	//		
	// HashMap map1 = new HashMap();
	// HashMap map2 = new HashMap();
	// CopyProperties(bean1, map1,null);
	// CopyProperties(map1, bean2,null);
	// CopyProperties(map1, map2,null);
	// CopyProperties(bean1, bean2,null);
	// System.out.print("ok");
	// }
}
