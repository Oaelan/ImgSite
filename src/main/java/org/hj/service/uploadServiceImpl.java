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
		System.out.println("upload ���� ����");
		um.uploadImage(mvo);
	}
	/*
	public void uploadImage(MainVO mvo, HttpServletRequest request) throws Exception {
		
		System.out.println("uploadImage �޼ҵ� ����");
		DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);
        for (FileItem item : items) {
            if (!item.isFormField()) {
                // ���� �̸��� �����ϰ� ����ϴ�.
            	mvo.setFilename(UUID.randomUUID().toString() + "_" + new File(item.getName()).getName());
                // ���� ��θ� �����մϴ�. ���� ���� Ư�� ������ �����ϵ��� �մϴ�.
                System.out.println("���� ����");
            	mvo.setFilePath(request.getServletContext().getRealPath("/") + "allImg" + File.separator + mvo.getFilename());
                // ������ �����մϴ�.
                item.write(new File(mvo.getFilePath()));
            } else {
            	//multipart/form-data �������� �����Ͱ� ���۵ǹǷ�, 
            	//�ؽ�Ʈ ����� ���� �Ϲ����� ������δ� request.getParameter()�� ������ �� �����ϴ�.
            	
            	//��ſ� ���� ���ε�� �Բ� �ؽ�Ʈ �����͸� �ޱ� ���ؼ��� Apache Commons FileUpload ���̺귯���� ����Ͽ� ��û�� ó���ؾ� �մϴ�.
            	//�� ���̺귯���� ����ϸ� ������ �� ��Ҹ� FileItem ��ü�� ���� �� �ֽ��ϴ�.
            	//�ؽ�Ʈ �ʵ��� ��� item.isFormField()�� ���� Ȯ���ϰ�, item.getString() �޼��带 ����Ͽ� ���� ������ �� �ֽ��ϴ�.
            	
                // �ؽ�Ʈ �ʵ��� ���
                if (item.getFieldName().equals("img_kind")) {
                    mvo.setImg_kind(item.getString("UTF-8"));
                }
                if (item.getFieldName().equals("tag")) {
                    mvo.setTags(item.getString("UTF-8"));
                }
            }
        }
        um.uploadImage(mvo, request);
        
        System.out.println("uploadImage �޼ҵ� ����");
	}
	*/

	
}

