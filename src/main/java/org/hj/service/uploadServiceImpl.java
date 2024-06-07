package org.hj.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hj.mapper.LoginMapper;
import org.hj.mapper.MainMapper;
import org.hj.mapper.uploadMapper;
import org.hj.model.MainVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class uploadServiceImpl implements uploadService {
	
	@Autowired
	MainMapper mm;
	
	@Autowired
	uploadMapper um;
	
	
	
	@Override
	public void uploadImage(MainVO mvo) {
		System.out.println("upload 서비스 실행");
		um.uploadImage(mvo);
	}
	/*
	public void uploadImage(MainVO mvo, HttpServletRequest request) throws Exception {
		
		System.out.println("uploadImage 메소드 시작");
		DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);
        for (FileItem item : items) {
            if (!item.isFormField()) {
                // 파일 이름을 유일하게 만듭니다.
            	mvo.setFilename(UUID.randomUUID().toString() + "_" + new File(item.getName()).getName());
                // 파일 경로를 설정합니다. 서버 내의 특정 폴더에 저장하도록 합니다.
                System.out.println("서비스 실행");
            	mvo.setFilePath(request.getServletContext().getRealPath("/") + "allImg" + File.separator + mvo.getFilename());
                // 파일을 저장합니다.
                item.write(new File(mvo.getFilePath()));
            } else {
            	//multipart/form-data 형식으로 데이터가 전송되므로, 
            	//텍스트 요소의 값은 일반적인 방법으로는 request.getParameter()로 가져올 수 없습니다.
            	
            	//대신에 파일 업로드와 함께 텍스트 데이터를 받기 위해서는 Apache Commons FileUpload 라이브러리를 사용하여 요청을 처리해야 합니다.
            	//이 라이브러리를 사용하면 각각의 폼 요소를 FileItem 객체로 받을 수 있습니다.
            	//텍스트 필드의 경우 item.isFormField()를 통해 확인하고, item.getString() 메서드를 사용하여 값을 가져올 수 있습니다.
            	
                // 텍스트 필드일 경우
                if (item.getFieldName().equals("img_kind")) {
                    mvo.setImg_kind(item.getString("UTF-8"));
                }
                if (item.getFieldName().equals("tag")) {
                    mvo.setTags(item.getString("UTF-8"));
                }
            }
        }
        um.uploadImage(mvo, request);
        
        System.out.println("uploadImage 메소드 종료");
	}
	*/

	
}

