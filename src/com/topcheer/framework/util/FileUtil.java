package com.topcheer.restful.framework.util;

import java.io.File;

/**
 * 功能概述：
 *
 */
public class FileUtil {
	
	public static File createTempFolder(String appId, String type, String recordId){

		String sid = recordId.substring(recordId.length() - 6, recordId.length());//序列号
		String day = recordId.substring(recordId.length() - 8, recordId.length() - 6);//日期
		String ym = recordId.substring(recordId.length() - 14, recordId.length() - 8);//年月
		
		File folder = new File("/"+appId+"/"+type+"/"+ym+"/"+day+"/"+sid);
		
		if(!folder.exists()) {//若目录不存在
			folder.mkdirs();//创建
		}
		
		return folder;
	}
	
	public static void createBUGTempFolder(String bugNo,String fileDir){
		
		File folder = new File("/jpc/BUG修复/"+bugNo+"/"+fileDir);
		
		if(!folder.exists()) {//若目录不存在
			folder.mkdirs();//创建
		}
	}
	
	public static File createBatchDataFolder(String rootPath, String appId, String type, String recordId){

		String sid = recordId.substring(recordId.length() - 6, recordId.length());//序列号
		String day = recordId.substring(recordId.length() - 8, recordId.length() - 6);//日期
		String ym = recordId.substring(recordId.length() - 14, recordId.length() - 8);//年月
		
		File folder = new File("/"+rootPath+"/"+appId+"/"+type+"/"+ym+"/"+day+"/"+sid);
		
		if(!folder.exists()) {//若目录不存在
			folder.mkdirs();//创建
		}
		
		return folder;
	}
	
	public static void main(String args[]){
		//System.out.println(DataTypeUtil.getCurrentDateTime());
		//createTempFolder("UACP","OP","UACPSH20140623000011");
		String fileDir = "/Uacp/Uacp_src/com/topcheer/businessmodel/staffStatusImproveManage";
		String bugNo = "BUG000431";
		FileUtil.createBUGTempFolder(bugNo, fileDir);
//		String recordId = "UACPSH20140623000011";
//		File file = FileUtil.createTempFolder("UACP", "SH", recordId);
//		String str = file.getPath();
//		String root = recordId.substring(0,4)+"/"+recordId.substring(4,6)
//		+"/"+recordId.substring(6,12)+"/"+recordId.substring(12,14)+"/"+recordId.substring(14, recordId.length());
//		System.out.println(root);
//		String ss = "C:/jjj/aa/jj.txt";
//		System.out.println(File.separator);
//		int a = ss.lastIndexOf(File.separator);
//		String fileName = ss.substring(a+1, ss.length());
//		String uuid = UUID.randomUUID().toString().replace("-","");
//		System.out.println(uuid);
//		Map<String,String[]> tempMapAry = test();
//		System.out.println(tempMapAry.get("userIdArray"));
	}
}
