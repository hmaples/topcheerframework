package com.topcheer.framework.dto;

import java.io.File;

public class FileDto {

	private String fileFileName;
	private String fileContectType;
	private File file;

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContectType() {
		return fileContectType;
	}

	public void setFileContectType(String fileContectType) {
		this.fileContectType = fileContectType;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

}
