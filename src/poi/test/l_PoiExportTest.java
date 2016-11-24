package poi.test;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class l_PoiExportTest extends HttpServlet {

	//private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
System.out.println("already OK ok ok");
		
		// 声明一个工作薄
        HSSFWorkbook wb = new HSSFWorkbook();
        //声明一个单子并命名
        HSSFSheet sheet = wb.createSheet("基本信息");
        HSSFSheet sheet2=wb.createSheet("选择题");
        //给单子名称一个长度
        sheet.setDefaultColumnWidth(15);
        sheet2.setDefaultColumnWidth(15);
        // 生成一个样式  
        HSSFCellStyle style = wb.createCellStyle();
        //创建第一行（也可以称为表头）
        HSSFRow row = sheet.createRow(0);
        HSSFRow row2 = sheet2.createRow(0);
        //样式字体居中
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        //给表头第一行一次创建单元格
        HSSFCell cell = row.createCell(0);
        cell.setCellValue("编号"); 
        cell.setCellStyle(style);
        cell = row.createCell(1);  
                cell.setCellValue("年龄");  
                cell.setCellStyle(style);  
                cell = row.createCell(2);  
                cell.setCellValue("性别");  
                cell.setCellStyle(style); 
                cell = row.createCell(3);  
                cell.setCellValue("学历层次");  
                cell.setCellStyle(style); 
                cell = row.createCell(4);  
                cell.setCellValue("服务年限");  
                cell.setCellStyle(style); 
                cell = row.createCell(5);  
                cell.setCellValue("就职部门");  
                cell.setCellStyle(style); 
                
                
                HSSFCell cell2 = row2.createCell(0);
                cell2.setCellValue("编号"); 
                cell2.setCellStyle(style);
                cell2 = row2.createCell(1);  
                        cell2.setCellValue("多选题1");  
                        cell2.setCellStyle(style);  
                        cell2 = row2.createCell(2);  
                        cell2.setCellValue("多选题1注明");  
                        cell2.setCellStyle(style); 
                        cell2 = row2.createCell(3);  
                        cell2.setCellValue("多选题2");  
                        cell2.setCellStyle(style); 
                        cell2 = row2.createCell(4);  
                        cell2.setCellValue("多选题2注明");  
                        cell2.setCellStyle(style); 
                        cell2 = row2.createCell(5);  
                        cell2.setCellValue("多选题3");  
                        cell2.setCellStyle(style);
                        cell2 = row2.createCell(6);  
                        cell2.setCellValue("单选题4");  
                        cell2.setCellStyle(style);
                        cell2 = row2.createCell(7);  
                        cell2.setCellValue("单选题5");  
                        cell2.setCellStyle(style);
                        cell2 = row2.createCell(8);  
                        cell2.setCellValue("单选题6");  
                        cell2.setCellStyle(style);
                        cell2 = row2.createCell(9);  
                        cell2.setCellValue("单选题7");  
                        cell2.setCellStyle(style);
                
                
                
                List<l_StaffInfo> list = new ArrayList<l_StaffInfo>();
                list.add(new l_StaffInfo(1001,"25岁以下","男","本科","不足一年","行政人事部"));
                list.add(new l_StaffInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部"));
                list.add(new l_StaffInfo(1003,"25岁以下","男","本科","不足一年","交付三部"));
                list.add(new l_StaffInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心"));
                list.add(new l_StaffInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部"));
                list.add(new l_StaffInfo(1006,"25(含)-30岁","女","本科","八年以上","交付三部"));
                
                for (short i = 0; i < list.size(); i++) {
                    row = sheet.createRow(i + 1);
                    row.createCell(0).setCellValue(list.get(i).getId());
                    row.createCell(1).setCellValue(list.get(i).getAge());
                    row.createCell(2).setCellValue(list.get(i).getSex());
                    row.createCell(3).setCellValue(list.get(i).getXueli());
                    row.createCell(4).setCellValue(list.get(i).getServiceAge());
                    row.createCell(5).setCellValue(list.get(i).getDepartment());
                }
                
                try {
              //默认导出到E盘下
                FileOutputStream out = new FileOutputStream("E://Excel报表.xls");
                wb.write(out);
                out.close();
                JOptionPane.showMessageDialog(null, "导出成功!");
            } catch (FileNotFoundException e) {
                JOptionPane.showMessageDialog(null, "导出失败!");
                e.printStackTrace();
            } catch (IOException e) {
                JOptionPane.showMessageDialog(null, "导出失败!");
                e.printStackTrace();
            }

	}

}
