package com.topcheer.restful.framework.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import org.apache.poi.POIXMLDocument;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class XlsImpUtil {
	public static Workbook parseWorkbook(InputStream inp) throws IOException,
			InvalidFormatException {
		Workbook workbook = null;
		if (!inp.markSupported()) {
			inp = new PushbackInputStream(inp, 8);
		}
		if (POIFSFileSystem.hasPOIFSHeader(inp)) {
			try {
				workbook = new HSSFWorkbook(inp);
				return workbook;
			} catch (Exception e) {
				throw new IllegalArgumentException(
						"poi can't read this excel file");
			}
		}
		if (POIXMLDocument.hasOOXMLHeader(inp)) {
			try {
				workbook = new XSSFWorkbook(OPCPackage.open(inp));
				return workbook;
			} catch (Exception e) {
				throw new IllegalArgumentException(
						"poi can't read this excel file");
			}
		}
		throw new IllegalArgumentException("poi can't read this excel file");
	}
}
