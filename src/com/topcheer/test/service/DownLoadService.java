package com.topcheer.test.service;

import jxl.write.WritableCellFormat;

import com.topcheer.framework.dto.CellVo;
import com.topcheer.framework.dto.ExcelVo;
import com.topcheer.framework.dto.SheetVo;
import com.topcheer.framework.service.BaseService;

public class DownLoadService extends BaseService {

	@Override
	protected void doExecute() {
		System.out.println("开始导出");
		// 新建excel对象
		ExcelVo excelVo = new ExcelVo();
		excelVo.setFileName("测试导出");
		// 创建sheet
		SheetVo sheetVo = new SheetVo();
		sheetVo.setSheetNo(1);
		sheetVo.setName("概览数据");
		excelVo.addSheet(sheetVo);
		// 创建单元格
		CellVo cellVoFirst = new CellVo();
		for (int i = 0; i < 1; i++) {
			String[] tables1 = { "1" };
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
		// 设置导出对象
		context.createExcelExport(excelVo);
	}

}
