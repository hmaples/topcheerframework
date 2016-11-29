package com.topcheer.restful.framework.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 功能概述：
 * 
 */
public class PageUtil {

	/**
	 * 功能描述：总页数计算
	 * 
	 * @param
	 * @return int
	 * 
	 */
	public static int calPageNum(int totalNum, String pageSize) {

		if (totalNum % Integer.parseInt(pageSize) == 0) {
			return totalNum / Integer.parseInt(pageSize);
		} else {
			return totalNum / Integer.parseInt(pageSize) + 1;
		}
	}

	/**
	 * 功能描述：分页处理
	 * 
	 * @param targetList
	 *            操作结果集
	 * @param currPage
	 *            当前页
	 * @param pageSize
	 *            每页条数
	 * @return void
	 * 
	 */
	@SuppressWarnings("unchecked")
	public static List formatPageSize(List targetList, String currPage,
			String pageSize) {

		List resultList = new ArrayList();

		// 首记录index
		int startIndex = (Integer.parseInt(currPage) - 1)
				* Integer.parseInt(pageSize);
		// 尾记录index
		int endIndex = startIndex + Integer.parseInt(pageSize) - 1;
		if (endIndex >= targetList.size()) {
			endIndex = targetList.size() - 1;
		}

		for (int i = startIndex; i <= endIndex; i++) {
			resultList.add(targetList.get(i));
		}

		return resultList;
	}
}
