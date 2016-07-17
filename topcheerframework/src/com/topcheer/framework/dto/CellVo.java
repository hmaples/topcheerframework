package com.topcheer.framework.dto;
import jxl.write.WritableCellFormat;

/**
 * Excel单元格数据实体类
 * 
 */
public class CellVo {

	public CellVo(int colNo, int rowNo, String text, WritableCellFormat format,
			CellType label) {

		this.colNo = colNo;
		this.rowNo = rowNo;
		this.text = text;
		this.format = format;
		if (label != null) {
			this.type = label;
		}
	}

	public CellVo() {

	}

	// 单元格类型
	private CellType type = CellType.LABLE;

	/**
	 * 单元格类型
	 * 
	 * @return the type
	 */
	public CellType getType() {
		return type;
	}

	/**
	 * 单元格类型
	 * 
	 * @param type
	 *            the type to set
	 */
	public void setType(CellType type) {
		this.type = type;
	}

	// 输出文本
	private String text = null;

	// 行号
	private int rowNo = 0;

	// 列号
	private int colNo = 0;

	// 格式
	private WritableCellFormat format = null;

	/**
	 * @param text
	 *            the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param rowNo
	 *            the rowNo to set
	 */
	public void setRowNo(int rowNo) {
		this.rowNo = rowNo;
	}

	/**
	 * @return the rowNo
	 */
	public int getRowNo() {
		return rowNo;
	}

	/**
	 * @param colNo
	 *            the colNo to set
	 */
	public void setColNo(int colNo) {
		this.colNo = colNo;
	}

	/**
	 * @return the colNo
	 */
	public int getColNo() {
		return colNo;
	}

	/**
	 * @param format
	 *            the format to set
	 */
	public void setFormat(WritableCellFormat format) {
		this.format = format;
	}

	/**
	 * @return the format
	 */
	public WritableCellFormat getFormat() {
		return format;
	}

	public enum CellType {
		LABLE, NUMBER, FORMULA
	}
}
