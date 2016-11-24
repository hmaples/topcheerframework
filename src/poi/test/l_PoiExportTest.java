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
        HSSFSheet sheet3=wb.createSheet("偏向选择分值");
        HSSFSheet sheet4=wb.createSheet("说明与建议");
        HSSFSheet sheet5=wb.createSheet("汇总表");
        //给单子名称一个长度
        sheet.setDefaultColumnWidth(15);
        sheet2.setDefaultColumnWidth(15);
        sheet3.setDefaultColumnWidth(5);
        sheet4.setDefaultColumnWidth(5);
        sheet5.setDefaultColumnWidth(10);
        // 生成一个样式  
        HSSFCellStyle style = wb.createCellStyle();
        //创建第一行（也可以称为表头）
        HSSFRow row = sheet.createRow(0);
        HSSFRow row2 = sheet2.createRow(0);
        HSSFRow row3 = sheet3.createRow(0);
        HSSFRow row4=sheet4.createRow(0);
        HSSFRow row5=sheet5.createRow(0);
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
                
        String[] name3 = new String[31];
        name3[0]="编号";
        for(int i=1;i<name3.length;i++){
        	name3[i]=i+"";
        }
        HSSFCell[] cell3 = new HSSFCell[name3.length];
        for(int i=0;i<name3.length;i++){
        	cell3[i] = row3.createCell(i);
        	cell3[i].setCellValue(name3[i]);
        	cell3[i].setCellStyle(style);
        }
        
        String[] name4 = new String[32];
        name4[0]="编号";
        for(int i=1;i<name3.length;i++){
        	name4[i]=i+"";
        }
        name4[31]="建议和意见";
        HSSFCell[] cell4 = new HSSFCell[name4.length];
        for(int i=0;i<name4.length;i++){
        	cell4[i] = row4.createCell(i);
        	cell4[i].setCellValue(name4[i]);
        	cell4[i].setCellStyle(style);
        }
        
        String[] name5=new String[76];
        name5[0]="编号";name5[1]="年龄";name5[2]="性别";
        name5[3]="学历层次";name5[4]="服务年限";name5[5]="就职部门";
        name5[6]="多选题1";name5[7]="多选题1注明";name5[8]="多选题2";name5[9]="多选题2注明";
        name5[10]="多选题3";name5[11]="单选题4";name5[12]="单选题";name5[13]="单选题6";name5[14]="单选题7";
        for(int i=0;i<30;i++){
        	name5[15+i]=(i+1)+"";
        }
        for(int i=0;i<30;i++){
        	name5[45+i]="偏向选择"+(i+1)+"说明";
        }
        name5[75]="建议和意见";       
        HSSFCell[] cell5 = new HSSFCell[name5.length];
        for(int i=0;i<name5.length;i++){
        	cell5[i] = row5.createCell(i);
        	cell5[i].setCellValue(name5[i]);
        	cell5[i].setCellStyle(style);
        }
                
                List<l_StaffInfo> list = new ArrayList<l_StaffInfo>();
                list.add(new l_StaffInfo(1001,"25岁以下","男","本科","不足一年","行政人事部"));
                list.add(new l_StaffInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部"));
                list.add(new l_StaffInfo(1003,"25岁以下","男","本科","不足一年","交付三部"));
                list.add(new l_StaffInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心"));
                list.add(new l_StaffInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部"));
                
                List<l_SelectedInfo> list2=new ArrayList<l_SelectedInfo>();
                list2.add(new l_SelectedInfo(1001,"公司前景，团队配合，奖惩机制","女生多","薪酬福利，工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
                list2.add(new l_SelectedInfo(1002,"工作认可","","工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                list2.add(new l_SelectedInfo(1003,"团队配合，奖惩机制","","公司前景，团队配合","奖惩机制","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
                list2.add(new l_SelectedInfo(1004,"职业方向，公司前景","","薪酬福利","","个人能力","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                list2.add(new l_SelectedInfo(1005,"公司前景","有吃的","薪酬福利，工作认可","","行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
                
                List<l_ScoreInfo> list3=new ArrayList<l_ScoreInfo>();
                list3.add(new l_ScoreInfo(1001,1,2,3,1,2,3,1,2,3,4,6,1,7,1,2,1,4,6,3,1,2,4,5,3,2,1,2,6,3,1));
                list3.add(new l_ScoreInfo(1002,2,5,1,2,3,1,2,1,2,3,5,1,2,5,2,6,2,2,2,1,1,2,1,1,1,1,1,1,2,4));
                list3.add(new l_ScoreInfo(1003,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,3,3,4,1,1));
                list3.add(new l_ScoreInfo(1004,1,2,3,2,2,3,3,2,3,4,6,1,7,1,2,5,4,6,3,2,2,4,5,3,2,2,2,6,3,1));
                list3.add(new l_ScoreInfo(1005,1,2,1,1,1,1,2,3,4,5,1,2,3,4,5,6,1,1,1,1,2,3,1,1,1,2,3,1,3,5));
                
                List<l_SuggestInfo> list4=new ArrayList<l_SuggestInfo>();
                list4.add(new l_SuggestInfo(1001,"","","","","","","太简单","","太低了","","","","","","","","","","","","","","","","","","","","","","没有"));
                list4.add(new l_SuggestInfo(1002,"","","","","","","","","","没感觉","","","","","","","不喜欢","","","","","","","","","","","","","","提供餐补"));
                list4.add(new l_SuggestInfo(1003,"","","","","","","","","","没感觉","","","","","","","","","","","","","","","","","","","","","？？？"));
                list4.add(new l_SuggestInfo(1004,"","","","","不清楚","","","","","","","","","","","","","","","","","","","","","","","","","","没有吧"));
                list4.add(new l_SuggestInfo(1005,"","","哦哦","","","","","","","","","","","","","","","","","","","","","","","","","","","","提供住宿"));
                
                List<l_SumAllInfo> list5=new ArrayList<l_SumAllInfo>();
                list5.add(new l_SumAllInfo(1001,"25岁以下","男","本科","不足一年","行政人事部","公司前景，团队配合，奖惩机制","女生多","薪酬福利，工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司",1,2,3,1,2,3,1,2,3,4,6,1,7,1,2,1,4,6,3,1,2,4,5,3,2,1,2,6,3,1,"","","","","","","太简单","","太低了","","","","","","","","","","","","","","","","","","","","","","没有"));
                list5.add(new l_SumAllInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部","工作认可","","工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司",2,5,1,2,3,1,2,1,2,3,5,1,2,5,2,6,2,2,2,1,1,2,1,1,1,1,1,1,2,4,"","","","","","","","","","没感觉","","","","","","","不喜欢","","","","","","","","","","","","","","提供餐补"));
                list5.add(new l_SumAllInfo(1003,"25岁以下","男","本科","不足一年","交付三部","团队配合，奖惩机制","","公司前景，团队配合","奖惩机制","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司",1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,3,3,4,1,1,"","","","","","","","","","没感觉","","","","","","","","","","","","","","","","","","","","","？？？"));
                list5.add(new l_SumAllInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心","职业方向，公司前景","","薪酬福利","","个人能力","完全没有发挥","一般 ","发挥尚可","继续留在公司",1,2,3,2,2,3,3,2,3,4,6,1,7,1,2,5,4,6,3,2,2,4,5,3,2,2,2,6,3,1,"","","","","不清楚","","","","","","","","","","","","","","","","","","","","","","","","","","没有吧"));
                list5.add(new l_SumAllInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部","公司前景","有吃的","薪酬福利，工作认可","","行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司",1,2,1,1,1,1,2,3,4,5,1,2,3,4,5,6,1,1,1,1,2,3,1,1,1,2,3,1,3,5,"","","哦哦","","","","","","","","","","","","","","","","","","","","","","","","","","","","提供住宿"));
                
                
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
                
                
                for(int i=0;i<list3.size();i++){
                	row3 = sheet3.createRow(i + 1);
                	row3.createCell(0).setCellValue(list3.get(i).getId());
                	row3.createCell(1).setCellValue(list3.get(i).getQu1());
                	row3.createCell(2).setCellValue(list3.get(i).getQu2());
                	row3.createCell(3).setCellValue(list3.get(i).getQu3());
                	row3.createCell(4).setCellValue(list3.get(i).getQu4());
                	row3.createCell(5).setCellValue(list3.get(i).getQu5());
                	row3.createCell(6).setCellValue(list3.get(i).getQu6());
                	row3.createCell(7).setCellValue(list3.get(i).getQu7());
                	row3.createCell(8).setCellValue(list3.get(i).getQu8());
                	row3.createCell(9).setCellValue(list3.get(i).getQu9());
                	row3.createCell(10).setCellValue(list3.get(i).getQu10());
                	row3.createCell(11).setCellValue(list3.get(i).getQu11());
                	row3.createCell(12).setCellValue(list3.get(i).getQu12());
                	row3.createCell(13).setCellValue(list3.get(i).getQu13());
                	row3.createCell(14).setCellValue(list3.get(i).getQu14());
                	row3.createCell(15).setCellValue(list3.get(i).getQu15());
                	row3.createCell(16).setCellValue(list3.get(i).getQu16());
                	row3.createCell(17).setCellValue(list3.get(i).getQu17());
                	row3.createCell(18).setCellValue(list3.get(i).getQu18());
                	row3.createCell(19).setCellValue(list3.get(i).getQu19());
                	row3.createCell(20).setCellValue(list3.get(i).getQu20());
                	row3.createCell(21).setCellValue(list3.get(i).getQu21());
                	row3.createCell(22).setCellValue(list3.get(i).getQu22());
                	row3.createCell(23).setCellValue(list3.get(i).getQu23());
                	row3.createCell(24).setCellValue(list3.get(i).getQu24());
                	row3.createCell(25).setCellValue(list3.get(i).getQu25());
                	row3.createCell(26).setCellValue(list3.get(i).getQu26());
                	row3.createCell(27).setCellValue(list3.get(i).getQu27());
                	row3.createCell(28).setCellValue(list3.get(i).getQu28());
                	row3.createCell(29).setCellValue(list3.get(i).getQu29());
                	row3.createCell(30).setCellValue(list3.get(i).getQu30());
                }
                
                for(int i=0;i<list4.size();i++){
                	row4 = sheet4.createRow(i + 1);
                	row4.createCell(0).setCellValue(list4.get(i).getId());
                	row4.createCell(1).setCellValue(list4.get(i).getQues1());
                	row4.createCell(2).setCellValue(list4.get(i).getQues2());
                	row4.createCell(3).setCellValue(list4.get(i).getQues3());
                	row4.createCell(4).setCellValue(list4.get(i).getQues4());
                	row4.createCell(5).setCellValue(list4.get(i).getQues5());
                	row4.createCell(6).setCellValue(list4.get(i).getQues6());
                	row4.createCell(7).setCellValue(list4.get(i).getQues7());
                	row4.createCell(8).setCellValue(list4.get(i).getQues8());
                	row4.createCell(9).setCellValue(list4.get(i).getQues9());
                	row4.createCell(10).setCellValue(list4.get(i).getQues10());
                	row4.createCell(11).setCellValue(list4.get(i).getQues11());
                	row4.createCell(12).setCellValue(list4.get(i).getQues12());
                	row4.createCell(13).setCellValue(list4.get(i).getQues13());
                	row4.createCell(14).setCellValue(list4.get(i).getQues14());
                	row4.createCell(15).setCellValue(list4.get(i).getQues15());
                	row4.createCell(16).setCellValue(list4.get(i).getQues16());
                	row4.createCell(17).setCellValue(list4.get(i).getQues17());
                	row4.createCell(18).setCellValue(list4.get(i).getQues18());
                	row4.createCell(19).setCellValue(list4.get(i).getQues19());
                	row4.createCell(20).setCellValue(list4.get(i).getQues20());
                	row4.createCell(21).setCellValue(list4.get(i).getQues21());
                	row4.createCell(22).setCellValue(list4.get(i).getQues22());
                	row4.createCell(23).setCellValue(list4.get(i).getQues23());
                	row4.createCell(24).setCellValue(list4.get(i).getQues24());
                	row4.createCell(25).setCellValue(list4.get(i).getQues25());
                	row4.createCell(26).setCellValue(list4.get(i).getQues26());
                	row4.createCell(27).setCellValue(list4.get(i).getQues27());
                	row4.createCell(28).setCellValue(list4.get(i).getQues28());
                	row4.createCell(29).setCellValue(list4.get(i).getQues29());
                	row4.createCell(30).setCellValue(list4.get(i).getQues30());
                	row4.createCell(31).setCellValue(list4.get(i).getSuggest());
                }
                
                for(int i=0;i<list5.size();i++){
                	row5 = sheet5.createRow(i + 1);
                	row5.createCell(0).setCellValue(list5.get(i).getId());
                    row5.createCell(1).setCellValue(list5.get(i).getAge());
                    row5.createCell(2).setCellValue(list5.get(i).getSex());
                    row5.createCell(3).setCellValue(list5.get(i).getXueli());
                    row5.createCell(4).setCellValue(list5.get(i).getServiceAge());
                    row5.createCell(5).setCellValue(list5.get(i).getDepartment());
                	row5.createCell(6).setCellValue(list5.get(i).getMul1());
                	row5.createCell(7).setCellValue(list5.get(i).getMul1des());
                	row5.createCell(8).setCellValue(list5.get(i).getMul2());
                	row5.createCell(9).setCellValue(list5.get(i).getMul2des());
                	row5.createCell(10).setCellValue(list5.get(i).getMul3());
                	row5.createCell(11).setCellValue(list5.get(i).getSingle4());
                	row5.createCell(12).setCellValue(list5.get(i).getSingle5());
                	row5.createCell(13).setCellValue(list5.get(i).getSingle6());
                	row5.createCell(14).setCellValue(list5.get(i).getSingle7());
                	row5.createCell(15).setCellValue(list5.get(i).getQu1());
                	row5.createCell(16).setCellValue(list5.get(i).getQu2());
                	row5.createCell(17).setCellValue(list5.get(i).getQu3());
                	row5.createCell(18).setCellValue(list5.get(i).getQu4());
                	row5.createCell(19).setCellValue(list5.get(i).getQu5());
                	row5.createCell(20).setCellValue(list5.get(i).getQu6());
                	row5.createCell(21).setCellValue(list5.get(i).getQu7());
                	row5.createCell(22).setCellValue(list5.get(i).getQu8());
                	row5.createCell(23).setCellValue(list5.get(i).getQu9());
                	row5.createCell(24).setCellValue(list5.get(i).getQu10());
                	row5.createCell(25).setCellValue(list5.get(i).getQu11());
                	row5.createCell(26).setCellValue(list5.get(i).getQu12());
                	row5.createCell(27).setCellValue(list5.get(i).getQu13());
                	row5.createCell(28).setCellValue(list5.get(i).getQu14());
                	row5.createCell(29).setCellValue(list5.get(i).getQu15());
                	row5.createCell(30).setCellValue(list5.get(i).getQu16());
                	row5.createCell(31).setCellValue(list5.get(i).getQu17());
                	row5.createCell(32).setCellValue(list5.get(i).getQu18());
                	row5.createCell(33).setCellValue(list5.get(i).getQu19());
                	row5.createCell(34).setCellValue(list5.get(i).getQu20());
                	row5.createCell(35).setCellValue(list5.get(i).getQu21());
                	row5.createCell(36).setCellValue(list5.get(i).getQu22());
                	row5.createCell(37).setCellValue(list5.get(i).getQu23());
                	row5.createCell(38).setCellValue(list5.get(i).getQu24());
                	row5.createCell(39).setCellValue(list5.get(i).getQu25());
                	row5.createCell(40).setCellValue(list5.get(i).getQu26());
                	row5.createCell(41).setCellValue(list5.get(i).getQu27());
                	row5.createCell(42).setCellValue(list5.get(i).getQu28());
                	row5.createCell(43).setCellValue(list5.get(i).getQu29());
                	row5.createCell(44).setCellValue(list5.get(i).getQu30());
                	row5.createCell(45).setCellValue(list5.get(i).getQues1());
                	row5.createCell(46).setCellValue(list5.get(i).getQues2());
                	row5.createCell(47).setCellValue(list5.get(i).getQues3());
                	row5.createCell(48).setCellValue(list5.get(i).getQues4());
                	row5.createCell(49).setCellValue(list5.get(i).getQues5());
                	row5.createCell(50).setCellValue(list5.get(i).getQues6());
                	row5.createCell(51).setCellValue(list5.get(i).getQues7());
                	row5.createCell(52).setCellValue(list5.get(i).getQues8());
                	row5.createCell(53).setCellValue(list5.get(i).getQues9());
                	row5.createCell(54).setCellValue(list5.get(i).getQues10());
                	row5.createCell(55).setCellValue(list5.get(i).getQues11());
                	row5.createCell(56).setCellValue(list5.get(i).getQues12());
                	row5.createCell(57).setCellValue(list5.get(i).getQues13());
                	row5.createCell(58).setCellValue(list5.get(i).getQues14());
                	row5.createCell(59).setCellValue(list5.get(i).getQues15());
                	row5.createCell(60).setCellValue(list5.get(i).getQues16());
                	row5.createCell(61).setCellValue(list5.get(i).getQues17());
                	row5.createCell(62).setCellValue(list5.get(i).getQues18());
                	row5.createCell(63).setCellValue(list5.get(i).getQues19());
                	row5.createCell(64).setCellValue(list5.get(i).getQues20());
                	row5.createCell(65).setCellValue(list5.get(i).getQues21());
                	row5.createCell(66).setCellValue(list5.get(i).getQues22());
                	row5.createCell(67).setCellValue(list5.get(i).getQues23());
                	row5.createCell(68).setCellValue(list5.get(i).getQues24());
                	row5.createCell(69).setCellValue(list5.get(i).getQues25());
                	row5.createCell(70).setCellValue(list5.get(i).getQues26());
                	row5.createCell(71).setCellValue(list5.get(i).getQues27());
                	row5.createCell(72).setCellValue(list5.get(i).getQues28());
                	row5.createCell(73).setCellValue(list5.get(i).getQues29());
                	row5.createCell(74).setCellValue(list5.get(i).getQues30());
                	row5.createCell(75).setCellValue(list5.get(i).getSuggest());
                	
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
