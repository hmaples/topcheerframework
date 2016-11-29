package com.topcheer.STSService.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import jxl.write.WritableCellFormat;
import com.topcheer.framework.dto.CellVo;
import com.topcheer.framework.dto.ExcelVo;
import com.topcheer.framework.dto.SheetVo;
import com.topcheer.framework.service.BaseService;

@Service("downLoad")
public class DownLoadService extends BaseService {

	@Override
	protected void doExecute() {
		System.out.println("开始导出！！！");
		// 新建excel对象
		ExcelVo excelVo = new ExcelVo();
		excelVo.setFileName("Excel报表");
		// 创建sheet
		SheetVo sheetVo = new SheetVo();
		sheetVo.setSheetNo(1);
		sheetVo.setName("基本信息");
		excelVo.addSheet(sheetVo);
		
		SheetVo sheetVo2 = new SheetVo();
		sheetVo2.setSheetNo(2);
		sheetVo2.setName("选择题");
		excelVo.addSheet(sheetVo2);
		
		SheetVo sheetVo3 = new SheetVo();
		sheetVo3.setSheetNo(3);
		sheetVo3.setName("偏向选择与分值");
		excelVo.addSheet(sheetVo3);

		SheetVo sheetVo4 = new SheetVo();
		sheetVo4.setSheetNo(4);
		sheetVo4.setName("说明与建议");
		excelVo.addSheet(sheetVo4);
		
		SheetVo sheetVo5=new SheetVo();
		sheetVo5.setSheetNo(5);
		sheetVo5.setName("汇总表");
		excelVo.addSheet(sheetVo5);
		
		// 创建单元格
		CellVo[] cellVoFirst = new CellVo[6];
		String[] name=new String[6];
		name[0]="编号";name[1]="年龄";name[2]="性别";
		name[3]="学历层次";name[4]="服务年限";name[5]="就职部门";
		for(int i=0;i<name.length;i++){
			cellVoFirst[i] = new CellVo();
			cellVoFirst[i].setText(name[i]);
			cellVoFirst[i].setRowNo(0);
			cellVoFirst[i].setColNo(i);
			cellVoFirst[i].setFormat(new WritableCellFormat());
			sheetVo.addCell(cellVoFirst[i]);
		}
		
		CellVo[] cellVoSecond = new CellVo[10];
		String[] name2=new String[10];
        name2[0]="编号";name2[1]="多选题1";name2[2]="多选题1注明";name2[3]="多选题2";name2[4]="多选题2注明";
        name2[5]="多选题3";name2[6]="单选题4";name2[7]="单选题";name2[8]="单选题6";name2[9]="单选题7";
        for(int i=0;i<name2.length;i++){
			cellVoSecond[i] = new CellVo();
			cellVoSecond[i].setText(name2[i]);
			cellVoSecond[i].setRowNo(0);
			cellVoSecond[i].setColNo(i);
			cellVoSecond[i].setFormat(new WritableCellFormat());
			sheetVo2.addCell(cellVoSecond[i]);
		}
        
        CellVo[] cellVoThird = new CellVo[31];
        String[] name3 = new String[31];
        name3[0]="编号";
        for(int i=1;i<name3.length;i++){
        	name3[i]=i+"题";
        }
        for(int i=0;i<name3.length;i++){
        	cellVoThird[i] = new CellVo();
        	cellVoThird[i].setText(name3[i]);
        	cellVoThird[i].setRowNo(0);
        	cellVoThird[i].setColNo(i);
        	cellVoThird[i].setFormat(new WritableCellFormat());
			sheetVo3.addCell(cellVoThird[i]);
        }
        
        CellVo[] cellFouth=new CellVo[32];
        String[] name4=new String[32];
        name4[0]="编号";
        for(int i=1;i<name3.length;i++){
        	name4[i]=i+"题";
        }
        name4[31]="建议和意见";
        for(int i=0;i<name4.length;i++){
        	cellFouth[i] = new CellVo();
        	cellFouth[i].setText(name4[i]);
        	cellFouth[i].setRowNo(0);
        	cellFouth[i].setColNo(i);
        	cellFouth[i].setFormat(new WritableCellFormat());
			sheetVo4.addCell(cellFouth[i]);
        }
        
        CellVo[] cellFifth=new CellVo[76];
        String[] name5=new String[76];
        name5[0]="编号";name5[1]="年龄";name5[2]="性别";
        name5[3]="学历层次";name5[4]="服务年限";name5[5]="就职部门";
        name5[6]="多选题1";name5[7]="多选题1注明";name5[8]="多选题2";name5[9]="多选题2注明";
        name5[10]="多选题3";name5[11]="单选题4";name5[12]="单选题";name5[13]="单选题6";name5[14]="单选题7";
        for(int i=0;i<30;i++){
        	name5[15+i]=(i+1)+"题";
        }
        for(int i=0;i<30;i++){
        	name5[45+i]="偏向选择"+(i+1)+"说明";
        }
        name5[75]="建议和意见";
        for(int i=0;i<name5.length;i++){
        	cellFifth[i] = new CellVo();
        	cellFifth[i].setText(name5[i]);
        	cellFifth[i].setRowNo(0);
        	cellFifth[i].setColNo(i);
        	cellFifth[i].setFormat(new WritableCellFormat());
			sheetVo5.addCell(cellFifth[i]);
        }
        
        
        
		
//		List<l_StaffInfo> list = new ArrayList<l_StaffInfo>();
//        list.add(new l_StaffInfo(1001,"25岁以下","男","本科","不足一年","行政人事部"));
//        list.add(new l_StaffInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部"));
//        list.add(new l_StaffInfo(1003,"25岁以下","男","本科","不足一年","交付三部"));
//        list.add(new l_StaffInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心"));
//        list.add(new l_StaffInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部"));
//        
//        List<l_SelectedInfo> list2=new ArrayList<l_SelectedInfo>();
//        list2.add(new l_SelectedInfo(1001,"公司前景，团队配合，奖惩机制","女生多","薪酬福利，工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
//        list2.add(new l_SelectedInfo(1002,"工作认可","","工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
//        list2.add(new l_SelectedInfo(1003,"团队配合，奖惩机制","","公司前景，团队配合","奖惩机制","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司"));
//        list2.add(new l_SelectedInfo(1004,"职业方向，公司前景","","薪酬福利","","个人能力","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
//        list2.add(new l_SelectedInfo(1005,"公司前景","有吃的","薪酬福利，工作认可","","行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司"));
//        
//        List<l_ScoreInfo> list3=new ArrayList<l_ScoreInfo>();
//        list3.add(new l_ScoreInfo(1001,1,2,3,1,2,3,1,2,3,4,6,1,7,1,2,1,4,6,3,1,2,4,5,3,2,1,2,6,3,1));
//        list3.add(new l_ScoreInfo(1002,2,5,1,2,3,1,2,1,2,3,5,1,2,5,2,6,2,2,2,1,1,2,1,1,1,1,1,1,2,4));
//        list3.add(new l_ScoreInfo(1003,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,3,3,4,1,1));
//        list3.add(new l_ScoreInfo(1004,1,2,3,2,2,3,3,2,3,4,6,1,7,1,2,5,4,6,3,2,2,4,5,3,2,2,2,6,3,1));
//        list3.add(new l_ScoreInfo(1005,1,2,1,1,1,1,2,3,4,5,1,2,3,4,5,6,1,1,1,1,2,3,1,1,1,2,3,1,3,5));
//        
//        List<l_SuggestInfo> list4=new ArrayList<l_SuggestInfo>();
//        list4.add(new l_SuggestInfo(1001,"","","","","","","太简单","","太低了","","","","","","","","","","","","","","","","","","","","","","没有"));
//        list4.add(new l_SuggestInfo(1002,"","","","","","","","","","没感觉","","","","","","","不喜欢","","","","","","","","","","","","","","提供餐补"));
//        list4.add(new l_SuggestInfo(1003,"","","","","","","","","","没感觉","","","","","","","","","","","","","","","","","","","","","？？？"));
//        list4.add(new l_SuggestInfo(1004,"","","","","不清楚","","","","","","","","","","","","","","","","","","","","","","","","","","没有吧"));
//        list4.add(new l_SuggestInfo(1005,"","","哦哦","","","","","","","","","","","","","","","","","","","","","","","","","","","","提供住宿"));
//        
//        List<l_SumAllInfo> list5=new ArrayList<l_SumAllInfo>();
//        list5.add(new l_SumAllInfo(1001,"25岁以下","男","本科","不足一年","行政人事部","公司前景，团队配合，奖惩机制","女生多","薪酬福利，工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司",1,2,3,1,2,3,1,2,3,4,6,1,7,1,2,1,4,6,3,1,2,4,5,3,2,1,2,6,3,1,"","","","","","","太简单","","太低了","","","","","","","","","","","","","","","","","","","","","","没有"));
//        list5.add(new l_SumAllInfo(1002,"30(含)-40岁","女","大专","不足一年","交付三部","工作认可","","工作认可","","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司",2,5,1,2,3,1,2,1,2,3,5,1,2,5,2,6,2,2,2,1,1,2,1,1,1,1,1,1,2,4,"","","","","","","","","","没感觉","","","","","","","不喜欢","","","","","","","","","","","","","","提供餐补"));
//        list5.add(new l_SumAllInfo(1003,"25岁以下","男","本科","不足一年","交付三部","团队配合，奖惩机制","","公司前景，团队配合","奖惩机制","部门配合，工作氛围，行业环境","完全没有发挥","一般 ","没有空间","继续留在公司",1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,2,2,3,3,4,1,1,"","","","","","","","","","没感觉","","","","","","","","","","","","","","","","","","","","","？？？"));
//        list5.add(new l_SumAllInfo(1004,"30(含)-40岁","男","高中及以下（含职高）","不足一年","解决方案中心","职业方向，公司前景","","薪酬福利","","个人能力","完全没有发挥","一般 ","发挥尚可","继续留在公司",1,2,3,2,2,3,3,2,3,4,6,1,7,1,2,5,4,6,3,2,2,4,5,3,2,2,2,6,3,1,"","","","","不清楚","","","","","","","","","","","","","","","","","","","","","","","","","","没有吧"));
//        list5.add(new l_SumAllInfo(1005,"25(含)-30岁","女","硕士及以上","不足一年","交付一部","公司前景","有吃的","薪酬福利，工作认可","","行业环境","完全没有发挥","一般 ","发挥尚可","继续留在公司",1,2,1,1,1,1,2,3,4,5,1,2,3,4,5,6,1,1,1,1,2,3,1,1,1,2,3,1,3,5,"","","哦哦","","","","","","","","","","","","","","","","","","","","","","","","","","","","提供住宿"));
//        
//        for(int i=0;i<list.size();i++){
//        	CellVo[] cellVoFirst2 = new CellVo[6];
//        	
//        	String[] info=new String[6];
//        	info[0]=list.get(i).getId()+"";info[1]=list.get(i).getAge();
//        	info[2]=list.get(i).getSex();info[3]=list.get(i).getXueli();
//        	info[4]=list.get(i).getServiceAge();info[5]=list.get(i).getDepartment();
//        	
//        	for(int j=0;j<info.length;j++){
//    			cellVoFirst2[i] = new CellVo();
//    			cellVoFirst2[i].setText(info[j]);
//    			cellVoFirst2[i].setRowNo(i+1);
//    			cellVoFirst2[i].setColNo(j);
//    			cellVoFirst2[i].setFormat(new WritableCellFormat());
//    			sheetVo.addCell(cellVoFirst2[i]);
//    		}
//        }
//        
//        for(int i=0;i<list2.size();i++){
//        	CellVo[] cellVoSecond2 = new CellVo[10];
//        	
//        	String[] info=new String[10];
//        	info[0]=list2.get(i).getId()+"";info[1]=list2.get(i).getMul1();
//        	info[2]=list2.get(i).getMul1des();info[3]=list2.get(i).getMul2();
//        	info[4]=list2.get(i).getMul2des();info[5]=list2.get(i).getMul3();
//        	info[6]=list2.get(i).getSingle4();info[7]=list2.get(i).getSingle5();
//        	info[8]=list2.get(i).getSingle6();info[9]=list2.get(i).getSingle7();
//        	
//        	
//        	for(int j=0;j<info.length;j++){
//        		cellVoSecond2[i] = new CellVo();
//        		cellVoSecond2[i].setText(info[j]);
//        		cellVoSecond2[i].setRowNo(i+1);
//        		cellVoSecond2[i].setColNo(j);
//        		cellVoSecond2[i].setFormat(new WritableCellFormat());
//    			sheetVo2.addCell(cellVoSecond2[i]);
//    		}
//        }
//        
//        for(int i=0;i<list3.size();i++){
//        	CellVo[] cellVoThird2 = new CellVo[31];
//        	
//        	Integer[] info=new Integer[31];
//        	info[0]=list3.get(i).getId();info[1]=list3.get(i).getQu1();
//        	info[2]=list3.get(i).getQu2();info[3]=list3.get(i).getQu3();
//        	info[4]=list3.get(i).getQu4();info[5]=list3.get(i).getQu5();
//        	info[6]=list3.get(i).getQu6();info[7]=list3.get(i).getQu7();
//        	info[8]=list3.get(i).getQu8();info[9]=list3.get(i).getQu9();
//        	info[10]=list3.get(i).getQu10();info[11]=list3.get(i).getQu11();
//        	info[12]=list3.get(i).getQu12();info[13]=list3.get(i).getQu13();
//        	info[14]=list3.get(i).getQu14();info[15]=list3.get(i).getQu15();
//        	info[16]=list3.get(i).getQu16();info[17]=list3.get(i).getQu17();
//        	info[18]=list3.get(i).getQu18();info[19]=list3.get(i).getQu19();
//        	info[20]=list3.get(i).getQu20();info[21]=list3.get(i).getQu21();
//        	info[22]=list3.get(i).getQu22();info[23]=list3.get(i).getQu23();
//        	info[24]=list3.get(i).getQu24();info[25]=list3.get(i).getQu25();
//        	info[26]=list3.get(i).getQu26();info[27]=list3.get(i).getQu27();
//        	info[28]=list3.get(i).getQu28();info[29]=list3.get(i).getQu29();
//        	info[30]=list3.get(i).getQu30();
//        	
//        	
//        	for(int j=0;j<info.length;j++){
//        		cellVoThird2[i] = new CellVo();
//        		cellVoThird2[i].setText(info[j]+"");
//        		cellVoThird2[i].setRowNo(i+1);
//        		cellVoThird2[i].setColNo(j);
//        		cellVoThird2[i].setFormat(new WritableCellFormat());
//    			sheetVo3.addCell(cellVoThird2[i]);
//    		}
//        }
//        
//        for(int i=0;i<list4.size();i++){
//        	CellVo[] cellVoFouth2 = new CellVo[32];
//        	
//        	String[] info=new String[32];
//        	info[0]=list4.get(i).getId()+"";info[1]=list4.get(i).getQues1();
//        	info[2]=list4.get(i).getQues2();info[3]=list4.get(i).getQues3();
//        	info[4]=list4.get(i).getQues4();info[5]=list4.get(i).getQues5();
//        	info[6]=list4.get(i).getQues6();info[7]=list4.get(i).getQues7();
//        	info[8]=list4.get(i).getQues8();info[9]=list4.get(i).getQues9();
//        	info[10]=list4.get(i).getQues10();info[11]=list4.get(i).getQues11();
//        	info[12]=list4.get(i).getQues12();info[13]=list4.get(i).getQues13();
//        	info[14]=list4.get(i).getQues14();info[15]=list4.get(i).getQues15();
//        	info[16]=list4.get(i).getQues16();info[17]=list4.get(i).getQues17();
//        	info[18]=list4.get(i).getQues18();info[19]=list4.get(i).getQues19();
//        	info[20]=list4.get(i).getQues20();info[21]=list4.get(i).getQues21();
//        	info[22]=list4.get(i).getQues22();info[23]=list4.get(i).getQues23();
//        	info[24]=list4.get(i).getQues24();info[25]=list4.get(i).getQues25();
//        	info[26]=list4.get(i).getQues26();info[27]=list4.get(i).getQues27();
//        	info[28]=list4.get(i).getQues28();info[29]=list4.get(i).getQues29();
//        	info[30]=list4.get(i).getQues30();info[31]=list4.get(i).getSuggest();
//        	
//        	
//        	for(int j=0;j<info.length;j++){
//        		cellVoFouth2[i] = new CellVo();
//        		cellVoFouth2[i].setText(info[j]+"");
//        		cellVoFouth2[i].setRowNo(i+1);
//        		cellVoFouth2[i].setColNo(j);
//        		cellVoFouth2[i].setFormat(new WritableCellFormat());
//    			sheetVo4.addCell(cellVoFouth2[i]);
//    		}
//        }
//        
//        for(int i=0;i<list5.size();i++){
//        	CellVo[] cellVoFifth2 = new CellVo[76];
//        	
//        	String[] info=new String[76];
//        	info[0]=list5.get(i).getId()+"";info[1]=list5.get(i).getAge();
//        	info[2]=list5.get(i).getSex();info[3]=list5.get(i).getXueli();
//        	info[4]=list5.get(i).getServiceAge();info[5]=list5.get(i).getDepartment();
//        	
//        	
//        	info[6]=list5.get(i).getMul1();
//        	info[7]=list5.get(i).getMul1des();info[8]=list5.get(i).getMul2();
//        	info[9]=list5.get(i).getMul2des();info[10]=list5.get(i).getMul3();
//        	info[11]=list5.get(i).getSingle4();info[12]=list5.get(i).getSingle5();
//        	info[13]=list5.get(i).getSingle6();info[14]=list5.get(i).getSingle7();
//        	
//        	info[15]=list5.get(i).getQu1()+"";
//        	info[16]=list5.get(i).getQu2()+"";info[17]=list5.get(i).getQu3()+"";
//        	info[18]=list5.get(i).getQu4()+"";info[19]=list5.get(i).getQu5()+"";
//        	info[20]=list5.get(i).getQu6()+"";info[21]=list5.get(i).getQu7()+"";
//        	info[22]=list5.get(i).getQu8()+"";info[23]=list5.get(i).getQu9()+"";
//        	info[24]=list5.get(i).getQu10()+"";info[25]=list5.get(i).getQu11()+"";
//        	info[26]=list5.get(i).getQu12()+"";info[27]=list5.get(i).getQu13()+"";
//        	info[28]=list5.get(i).getQu14()+"";info[29]=list5.get(i).getQu15()+"";
//        	info[30]=list5.get(i).getQu16()+"";info[31]=list5.get(i).getQu17()+"";
//        	info[32]=list5.get(i).getQu18()+"";info[33]=list5.get(i).getQu19()+"";
//        	info[34]=list5.get(i).getQu20()+"";info[35]=list5.get(i).getQu21()+"";
//        	info[36]=list5.get(i).getQu22()+"";info[37]=list5.get(i).getQu23()+"";
//        	info[38]=list5.get(i).getQu24()+"";info[39]=list5.get(i).getQu25()+"";
//        	info[40]=list5.get(i).getQu26()+"";info[41]=list5.get(i).getQu27()+"";
//        	info[42]=list5.get(i).getQu28()+"";info[43]=list5.get(i).getQu29()+"";
//        	info[44]=list5.get(i).getQu30()+"";
//        	
//        	info[45]=list5.get(i).getQues1();
//        	info[46]=list5.get(i).getQues2();info[47]=list5.get(i).getQues3();
//        	info[48]=list5.get(i).getQues4();info[49]=list5.get(i).getQues5();
//        	info[50]=list5.get(i).getQues6();info[51]=list5.get(i).getQues7();
//        	info[52]=list5.get(i).getQues8();info[53]=list5.get(i).getQues9();
//        	info[54]=list5.get(i).getQues10();info[55]=list5.get(i).getQues11();
//        	info[56]=list5.get(i).getQues12();info[57]=list5.get(i).getQues13();
//        	info[58]=list5.get(i).getQues14();info[59]=list5.get(i).getQues15();
//        	info[60]=list5.get(i).getQues16();info[61]=list5.get(i).getQues17();
//        	info[62]=list5.get(i).getQues18();info[63]=list5.get(i).getQues19();
//        	info[64]=list5.get(i).getQues20();info[65]=list5.get(i).getQues21();
//        	info[66]=list5.get(i).getQues22();info[67]=list5.get(i).getQues23();
//        	info[68]=list5.get(i).getQues24();info[69]=list5.get(i).getQues25();
//        	info[70]=list5.get(i).getQues26();info[71]=list5.get(i).getQues27();
//        	info[72]=list5.get(i).getQues28();info[73]=list5.get(i).getQues29();
//        	info[74]=list5.get(i).getQues30();info[75]=list5.get(i).getSuggest();
//        	
//        	
//        	for(int j=0;j<info.length;j++){
//        		cellVoFifth2[i] = new CellVo();
//        		cellVoFifth2[i].setText(info[j]+"");
//        		cellVoFifth2[i].setRowNo(i+1);
//        		cellVoFifth2[i].setColNo(j);
//        		cellVoFifth2[i].setFormat(new WritableCellFormat());
//    			sheetVo5.addCell(cellVoFifth2[i]);
//    		}
//        }
		
		/*
		cellVoFirst1 = new CellVo();
		cellVoFirst1.setText(name1);
		cellVoFirst1.setColNo(0);
		cellVoFirst1.setRowNo(0);
		cellVoFirst1.setFormat(new WritableCellFormat());
		sheetVo.addCell(cellVoFirst1);
		*/
		
		/*
		for (int i = 0; i < 1; i++) {
			String[] tables1 = { "3" };
			// 内容数组
			String[] contentArray = tables1;
			for (int j = 0; j < contentArray.length; j++) {
				cellVoFirst = new CellVo();
				cellVoFirst.setText(contentArray[j]);
				cellVoFirst.setColNo(j);
				cellVoFirst.setRowNo(i + 1);
				cellVoFirst.setFormat(new WritableCellFormat());
				sheetVo.addCell(cellVoFirst);
			}
		}
		*/
		
		// 设置导出对象
		context.createExcelExport(excelVo);
	}

}
