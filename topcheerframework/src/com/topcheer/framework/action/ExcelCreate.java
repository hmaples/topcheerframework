package com.topcheer.framework.action;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import javax.servlet.http.HttpServletResponse;
import com.topcheer.framework.dto.CellVo;
import com.topcheer.framework.dto.ExcelVo;
import com.topcheer.framework.dto.SheetVo;
import jxl.Workbook;
import jxl.write.Alignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

/**
 * 导出Excel
 * 
 * @author winner
 * 
 */
public class ExcelCreate {

	/**
	 * 生成Excel文件
	 * 
	 * @param excelVo
	 *            文件实体类
	 * @param os
	 *            输出流
	 * @throws IOException
	 * @throws WriteException
	 * @throws RowsExceededException
	 */
	public static void createExcel(ExcelVo excelVo, HttpServletResponse response,String character)
			throws IOException, RowsExceededException, WriteException {
		// 保证不乱码
		response.setContentType("application/x-msdownload;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		if("utf-8".equals(character)){
		response.setHeader("Content-Disposition", "attachment;" + " filename="
				+ URLEncoder.encode(excelVo.getFileName() + ".xls", "utf-8"));
		}else{
			response.setHeader("Content-Disposition", "attachment;" + " filename="+new String(excelVo.getFileName().getBytes("GB2312"),"ISO-8859-1")+ ".xls");
		}
		// 创建输出流
		OutputStream os = response.getOutputStream();
		// 创建工作表	
		WritableWorkbook workBook = Workbook.createWorkbook(os);
		SheetVo sheet = excelVo.getSheet();
		while (sheet != null) {
			WritableSheet workSheet = workBook.createSheet(sheet.getName(),
					sheet.getSheetNo());
			CellVo cell = sheet.getCell();
			while (cell != null) {
				Label workCell = new Label(cell.getColNo(), cell.getRowNo(),
						cell.getText(), cell.getFormat());
				workSheet.addCell(workCell);
				cell = sheet.getCell();
			}
			sheet = excelVo.getSheet();
		}
		workBook.write();
		workBook.close();
		os.close();
	}
	
	public  static void createExcelForReport(ExcelVo excelVo, HttpServletResponse response,String character)
			throws IOException, RowsExceededException, WriteException {
		// 保证不乱码
		response.setContentType("application/x-msdownload;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		if("utf-8".equals(character)){
		response.setHeader("Content-Disposition", "attachment;" + " filename="
				+ URLEncoder.encode(excelVo.getFileName() + ".xls", "utf-8"));
		}else{
			response.setHeader("Content-Disposition", "attachment;" + " filename="+new String(excelVo.getFileName().getBytes("GB2312"),"ISO-8859-1")+ ".xls");
		}
		// 创建输出流
		OutputStream os = response.getOutputStream();
		// 创建工作表	
		WritableWorkbook workBook = Workbook.createWorkbook(os);
		SheetVo sheet = excelVo.getSheet();
		while (sheet != null) {
			WritableSheet workSheet = workBook.createSheet(sheet.getName(),
					sheet.getSheetNo());
			workSheet.getSettings().setDefaultColumnWidth(16);
//			workSheet.getSettings().setDefaultRowHeight(500); 
			
			CellVo cell = sheet.getCell();
			while (cell != null) {
				Label workCell = new Label(cell.getColNo(), cell.getRowNo(),
						cell.getText(), cell.getFormat());
				workSheet.addCell(workCell);
				cell = sheet.getCell();
			}
			sheet = excelVo.getSheet();
		}
		workBook.write();
		workBook.close();
		os.close();
	}
	
	public  static void createExcelForReportMerg(ExcelVo excelVo, HttpServletResponse response,String character)
		throws IOException, RowsExceededException, WriteException {
	// 保证不乱码
	response.setContentType("application/x-msdownload;charset=UTF-8");
	response.setCharacterEncoding("UTF-8");
	if("utf-8".equals(character)){
	response.setHeader("Content-Disposition", "attachment;" + " filename="
			+ URLEncoder.encode(excelVo.getFileName() + ".xls", "utf-8"));
	}else{
		response.setHeader("Content-Disposition", "attachment;" + " filename="+new String(excelVo.getFileName().getBytes("GB2312"),"ISO-8859-1")+ ".xls");
	}
	// 创建输出流
	OutputStream os = response.getOutputStream();
	// 创建工作表	
	WritableWorkbook workBook = Workbook.createWorkbook(os);
	SheetVo sheet = excelVo.getSheet();
	while (sheet != null) {
		WritableSheet workSheet = workBook.createSheet(sheet.getName(),
				sheet.getSheetNo());
		workSheet.getSettings().setDefaultColumnWidth(16);
	//	workSheet.getSettings().setDefaultRowHeight(500); 
		
		CellVo cell = sheet.getCell();
		while (cell != null) {
			Label workCell = new Label(cell.getColNo(), cell.getRowNo(),
					cell.getText(), cell.getFormat());
			workSheet.addCell(workCell);
			cell = sheet.getCell();
		}
		if(sheet.getSheetNo()==1){
			workSheet.mergeCells(0, 2, 0, 3);
			workSheet.mergeCells(2, 2, 6, 2);
		}
		sheet = excelVo.getSheet();
		
	}
	workBook.write();
	workBook.close();
	os.close();
	}
	
}
