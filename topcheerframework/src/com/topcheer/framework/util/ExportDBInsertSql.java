package com.topcheer.framework.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 * 功能概述：
 *
 */
public class ExportDBInsertSql {
	private static Connection conn = null;
	private static Statement sm = null;
//	private static String schema="DB2ADMIN";//模式名 
	private static String select="SELECT * FROM";//查询sql  
	private static String insert="INSERT INTO";//插入sql  
	private static String values="VALUES";//values关键字  
	private static String []table={"TC_TASK"};//table数组  
	private static List<String> insertList=new ArrayList<String>();//全局存放insertsql文件的数据  
	private static String filePath="C://PCCC/insertSQL.sql";//绝对路径 导出数据的文件 
	
	/**   
	 * * 导出数据库表   
	 * * @param args   
	 * * @throws SQLException    
	 * */  
	public static void main(String[] args) throws SQLException {   
		List<String> listSQL=new ArrayList<String>();   
		connectSQL("com.ibm.db2.jcc.DB2Driver", "jdbc:db2://192.168.8.110:50000/UACPDB", "db2inst1", "db2");//连接数据库   
		listSQL=createQuerySql();//创建查询语句   
		executeSQL(conn,sm,listSQL);//执行sql并拼装   
//		createFile();//创建文件  
	} 
	
	
	public static List<String> createQuerySql(){ 
		List<String> listSQL=new ArrayList<String>(); 
		for(int i=0;i<table.length;i++){    
			StringBuffer sb=new StringBuffer();    
//			sb.append(select).append(" ").append(schema).append(".").append(table[i]); 
			sb.append(select).append(" ").append(table[i]); 
			listSQL.add(sb.toString());   
		}   
		return listSQL; 
	} 
	
	/**   
	 * * 创建insertsql.txt并导出数据   
	 * */  
	private static void createFile() {   
		File file=new File(filePath);   
		if(!file.exists()){    
			try {     
				file.createNewFile();    
			} catch (IOException e) {     
				System.out.println("创建文件名失败！！");     
				e.printStackTrace();    
			}  
		}   
		FileWriter fw=null; 
		BufferedWriter bw=null;   
		try {    
			fw = new FileWriter(file);    
			bw = new BufferedWriter(fw);    
			if(insertList.size()>0){     
				for(int i=0;i<insertList.size();i++){      
					bw.append(insertList.get(i));      
					bw.append("\r\n");     
				}    
			}   
		} catch (IOException e) {    
			e.printStackTrace();   
		}finally{    
			try {     
				bw.close();     
				fw.close();   
			} catch (IOException e) {     
				e.printStackTrace();    
			}   
		}  
	} 
	
	/**   * 连接数据库 创建statement对象   
	 * * @param driver   
	 * * @param url  
	 *  * @param UserName   
	 *  * @param Password   
	 *  */  
	public static void connectSQL(String driver,String url,String UserName,String Password){   
		try{    
			Class.forName(driver).newInstance();    
			conn = DriverManager.getConnection(url, UserName, Password);    
			sm=conn.createStatement();   
			}catch(Exception e){    
				e.printStackTrace();   
			}  
	} 
	
	public static void executeSQL(Connection conn,Statement sm,List listSQL) throws SQLException{   
		List<String> insertSQL=new ArrayList<String>();   
		ResultSet rs=null;   
		try {    
			rs = getColumnNameAndColumeValue(sm, listSQL, rs);   
			} catch (SQLException e) {    
				e.printStackTrace();   
			}finally{     
				rs.close();        
				sm.close();        
				conn.close();   
			}  
	} 
	
	private static ResultSet getColumnNameAndColumeValue(Statement sm,    List listSQL, ResultSet rs) throws SQLException {   
		if(listSQL.size()>0){    
			for(int j=0;j<listSQL.size();j++){     
				String sql=String.valueOf(listSQL.get(j));     
				rs=sm.executeQuery(sql);     
				ResultSetMetaData rsmd = rs.getMetaData();           
				int columnCount = rsmd.getColumnCount();       
				while(rs.next()){      
					StringBuffer ColumnName=new StringBuffer();      
					StringBuffer ColumnValue=new StringBuffer();      
					for(int i=1;i<=columnCount;i++){       
						   
						if(i==1||i==columnCount){  
							if(i==1){
								ColumnName.append(rsmd.getColumnName(i));
							}
							if(i==columnCount){
								ColumnName.append(","+rsmd.getColumnName(i));   
							}  
							if(Types.CHAR == rsmd.getColumnType(i) || Types.VARCHAR == rsmd.getColumnType(i) || Types.LONGVARCHAR == rsmd.getColumnType(i)){         
								String value=""; 
								if(null==rs.getString(i)){        
									value="";       
								}else {   
									value=rs.getString(i).trim();       
								}   
								ColumnValue.append("'").append(value).append("',");      
							}else if(Types.SMALLINT == rsmd.getColumnType(i) || Types.INTEGER == rsmd.getColumnType(i)  || Types.BIGINT == rsmd.getColumnType(i) || Types.FLOAT == rsmd.getColumnType(i)   || Types.DOUBLE == rsmd.getColumnType(i) || Types.NUMERIC == rsmd.getColumnType(i)  || Types.DECIMAL == rsmd.getColumnType(i)){ 
								int	value=rs.getInt(i); 
								ColumnValue.append(value).append(",");        
							}else if(Types.DATE == rsmd.getColumnType(i) || Types.TIME == rsmd.getColumnType(i) || Types.TIMESTAMP == rsmd.getColumnType(i)){         
//								Timestamp value=rs.getTimestamp(i);       
//								if(null==value){ 
//									ColumnValue.append("current　timestamp");
//								}else{
//									ColumnValue.append("'").append(value).append("',"); 
//								} 
								ColumnValue.append("current　timestamp");
							}else{  
								String value=""; 
								if(null==rs.getString(i)){        
									value="";       
								}else {   
									value=rs.getString(i).trim();       
								} 
								ColumnValue.append(value).append(",");        
							}       
						}else{        
							ColumnName.append(","+rsmd.getColumnName(i));        
							if(Types.CHAR == rsmd.getColumnType(i) || Types.VARCHAR == rsmd.getColumnType(i) || Types.LONGVARCHAR == rsmd.getColumnType(i)){         
								String value=""; 
								if(null==rs.getString(i)){        
									value="";       
								}else {   
									value=rs.getString(i).trim();       
								} 
								ColumnValue.append("'").append(value).append("'").append(",");        
							}else if(Types.SMALLINT == rsmd.getColumnType(i) || Types.INTEGER == rsmd.getColumnType(i)  || Types.BIGINT == rsmd.getColumnType(i) || Types.FLOAT == rsmd.getColumnType(i)  || Types.DOUBLE == rsmd.getColumnType(i) || Types.NUMERIC == rsmd.getColumnType(i)|| Types.DECIMAL == rsmd.getColumnType(i)){         
								int	value=rs.getInt(i); 
								ColumnValue.append(value).append(",");        
							}else if(Types.DATE == rsmd.getColumnType(i) || Types.TIME == rsmd.getColumnType(i)|| Types.TIMESTAMP == rsmd.getColumnType(i)){         
//								Timestamp value=rs.getTimestamp(i);
//								if(null==value){ 
//									ColumnValue.append("current　timestamp").append(",");
//								}else{
//									ColumnValue.append("'").append(value).append("',"); 
//								}
								ColumnValue.append("current　timestamp").append(",");
							}else{ 
								String value=""; 
								if(null==rs.getString(i)){        
									value="";       
								}else {   
									value=rs.getString(i).trim();       
								}  
								ColumnValue.append(value).append(",");        
							}       
						}         
					}      
					System.out.println(ColumnName.toString());     
					System.out.println(ColumnValue.toString());      
					insertSQL(j,ColumnName, ColumnValue);     
				}    
			}   
		}   
		return rs;  
	} 
	
	/**   
	 * * 拼装insertsql 放到全局list里面  
	 *  * @param ColumnName   
	 *  * @param ColumnValue   
	 *  */  
	private static void insertSQL(int i,StringBuffer ColumnName,StringBuffer ColumnValue) {   
//		for(int i=0;i<table.length;i++){    
			StringBuffer insertSQL=new StringBuffer();    
//			insertSQL.append(insert).append(" ").append(schema).append(".").append(table[i]).append("(").append(ColumnName.toString()).append(")").append(values).append("(").append(ColumnValue.toString()).append(");");
			insertSQL.append(insert).append(" ").append(table[i]).append("(").append(ColumnName.toString()).append(")").append(values).append("(").append(ColumnValue.toString()).append(");");
			insertList.add(insertSQL.toString());    
			System.out.println(insertSQL.toString()); 
			createFileTemp(i,insertList);
//		}  
	} 
	
	
	/**   
	 * * 创建insertsql.txt并导出数据   
	 * */  
	private static void createFileTemp(int tb,List<String> insertLt) {   
		File file=new File(table[tb]);   
		if(!file.exists()){    
			try {     
				file.createNewFile();    
			} catch (IOException e) {     
				System.out.println("创建文件名失败！！");     
				e.printStackTrace();    
			}  
		}   
		FileWriter fw=null; 
		BufferedWriter bw=null;   
		try {    
			fw = new FileWriter(file);    
			bw = new BufferedWriter(fw);    
			if(insertLt.size()>0){     
				for(int i=0;i<insertLt.size();i++){      
					bw.append(insertLt.get(i));      
					bw.append("\r\n");     
				}    
			}   
		} catch (IOException e) {    
			e.printStackTrace();   
		}finally{    
			try {     
				bw.close();     
				fw.close();   
			} catch (IOException e) {     
				e.printStackTrace();    
			}   
		}  
	} 
}
