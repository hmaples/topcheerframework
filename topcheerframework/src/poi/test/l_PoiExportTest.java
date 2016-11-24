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
        
        String[] name1=new String[6];
        name1[0]="编号";name1[1]="年龄";name1[2]="性别";
        name1[3]="学历层次";name1[4]="服务年限";name1[5]="就职部门";
        HSSFCell[] cell = new HSSFCell[name1.length];
        
        for(int i=0;i<name1.length;i++){
        	cell[i] = row.createCell(i);
        	cell[i].setCellValue(name1[i]);
        	cell[i].setCellStyle(style);	
        }
        
        String[] name2=new String[10];
        name2[0]="编号";name2[1]="多选题1";name2[2]="多选题1注明";name2[3]="多选题2";name2[4]="多选题2注明";
        name2[5]="多选题3";name2[6]="单选题4";name2[7]="单选题";name2[8]="单选题6";name2[9]="单选题7";
        HSSFCell[] cell2 = new HSSFCell[name2.length];        
        for(int i=0;i<name2.length;i++){
        	cell2[i] = row2.createCell(i);
        	cell2[i].setCellValue(name2[i]);
        	cell2[i].setCellStyle(style);
        }        
                
                
                
                
                List<l_StaffInfo> list = new ArrayList<l_StaffInfo>();
                list.add(new l_StaffInfo(1001,"25岁以下","男","本科","不足一年","行政人事部"));
                list.add(new l_StaffInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部"));
                list.add(new l_StaffInfo(1003,"25岁以下","男","本科","不足一年","交付三部"));
                list.add(new l_StaffInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心"));
                list.add(new l_StaffInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部"));
                list.add(new l_StaffInfo(1006,"25(含)-30岁","女","本科","八年以上","交付三部"));
                
                List<l_SelectedInfo> list2=new ArrayList<l_SelectedInfo>();
                list2.add(new l_SelectedInfo(1001,"公司前景，团队配合，奖惩机制","女生多","薪酬福利，工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
                list2.add(new l_SelectedInfo(1002,"工作认可","","工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                list2.add(new l_SelectedInfo(1003,"团队配合，奖惩机制","","公司前景，团队配合","奖惩机制","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
                list2.add(new l_SelectedInfo(1004,"职业方向，公司前景","","薪酬福利","","个人能力","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                list2.add(new l_SelectedInfo(1005,"公司前景","有吃的","薪酬福利，工作认可","","行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                
                
                for (short i = 0; i < list.size(); i++) {
                    row = sheet.createRow(i + 1);
                    row.createCell(0).setCellValue(list.get(i).getId());
                    row.createCell(1).setCellValue(list.get(i).getAge());
                    row.createCell(2).setCellValue(list.get(i).getSex());
                    row.createCell(3).setCellValue(list.get(i).getXueli());
                    row.createCell(4).setCellValue(list.get(i).getServiceAge());
                    row.createCell(5).setCellValue(list.get(i).getDepartment());
                }
                
                for(int i=0;i<list2.size();i++){
                	row2 = sheet2.createRow(i + 1);
                	row2.createCell(0).setCellValue(list2.get(i).getId());
                	row2.createCell(1).setCellValue(list2.get(i).getMul1());
                	row2.createCell(2).setCellValue(list2.get(i).getMul1des());
                	row2.createCell(3).setCellValue(list2.get(i).getMul2());
                	row2.createCell(4).setCellValue(list2.get(i).getMul2des());
                	row2.createCell(5).setCellValue(list2.get(i).getMul3());
                	row2.createCell(6).setCellValue(list2.get(i).getSingle4());
                	row2.createCell(7).setCellValue(list2.get(i).getSingle5());
                	row2.createCell(8).setCellValue(list2.get(i).getSingle6());
                	row2.createCell(9).setCellValue(list2.get(i).getSingle7());
                }
                
                try {
              //默认导出到E盘下
                FileOutputStream out = new FileOutputStream("E://Excel报表.xls");
                wb.write(out);
                out.close();
                JOptionPane.showMessageDialog(null, "文件已经成功导出到E盘下");
            } catch (FileNotFoundException e) {
                JOptionPane.showMessageDialog(null, "导出失败!");
                e.printStackTrace();
            } catch (IOException e) {
                JOptionPane.showMessageDialog(null, "导出失败!");
                e.printStackTrace();
            }

	}

}
