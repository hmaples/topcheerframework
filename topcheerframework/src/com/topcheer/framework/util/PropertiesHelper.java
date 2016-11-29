package com.topcheer.restful.framework.util;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.ResourceBundle;

public class PropertiesHelper {

	public static String getIsDeployProductWebValue(String key) {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/system_deploy_config");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static String getPropertyValue(String fileName, String key) {
		ResourceBundle rb = ResourceBundle.getBundle(fileName);
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static String getESBURL(String key) {
		ResourceBundle rb = ResourceBundle.getBundle("properties/esbconfig");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static String getCacheSynURL(String key) {
		ResourceBundle rb = ResourceBundle.getBundle("properties/SERVER_IP");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static int getRecordUserCount(String key) {
		ResourceBundle rb = ResourceBundle.getBundle("properties/uacp");
		String value = rb.getString(key.toUpperCase()).trim();
		int count = Integer.parseInt(value);
		return count;
	}

	public static String getUsrActMapServiceConfig(String key) {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/usractmap_package");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static void main(String args[]) {
		String deployWebWay = PropertiesHelper
				.getIsDeployProductWebValue("ISPRODUCTWEB");
		System.out.println("部署网段的方式：是否为生产网？" + deployWebWay);

		System.out.println(getUsrActMapServiceConfig("upp"));

	}

	public static String getWebServiceConfig(String key) {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/webServicesConfig");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static Enumeration<String> getWebServiceConfigKeys() {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/webServicesConfig");
		Enumeration<String> keys = rb.getKeys();
		return keys;
	}

	public static String getWebServiceConfig_mapping(String key) {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/webServicesConfig_mapping");
		String value = rb.getString(key.toUpperCase()).trim();
		return value;
	}

	public static List<String> getWebServiceCofig_mappingKeys() {
		ResourceBundle rb = ResourceBundle
				.getBundle("properties/webServicesConfig_mapping");
		Enumeration<String> keys = rb.getKeys();
		List<String> keyList = new ArrayList<String>();
		while (keys.hasMoreElements()) {
			keyList.add(keys.nextElement().toUpperCase().trim());
		}
		return keyList;
	}

	public static String getPropertyValueByKeyUnchanged(String fileName,
			String key) {
		ResourceBundle rb = ResourceBundle.getBundle(fileName);
		String value = rb.getString(key).trim();
		return value;
	}

}
