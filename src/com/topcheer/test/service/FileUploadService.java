package com.topcheer.test.service;

import java.io.File;
import org.springframework.web.multipart.MultipartFile;
import com.topcheer.framework.service.BaseService;

public class FileUploadService extends BaseService {

	@Override
	protected void doExecute() {
		System.out.println("开始");
		MultipartFile file = context.getFile();
		String path = context.getRequest().getSession().getServletContext()
				.getRealPath("upload");
		String fileName = file.getOriginalFilename();
		System.out.println(path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		context.createResult(null, "success", "fileUpload");
	}

}
