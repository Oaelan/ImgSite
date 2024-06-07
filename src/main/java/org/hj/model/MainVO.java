package org.hj.model;

import java.util.Arrays;
import org.springframework.web.multipart.MultipartFile;
import java.time.LocalDateTime;


public class MainVO {

    private int no;
    private String filename;
    private String filePath;
    private String writer;
    private LocalDateTime uploaded_at;
    private String tags;
    private String[] tagArray;
    private String img_kind;
    private MultipartFile uploadFile;

    private int pageNum = 1;
    private int pageSize = 32;
    

	private int imgCount = 0;
    private int offset = 0;

    // �깮�꽦�옄
    public MainVO() {
        this.tags = "";
        this.tagArray = new String[0];
    }

   
    public final LocalDateTime getUploaded_at() {
		return uploaded_at;
	}


	public final void setUploaded_at(LocalDateTime uploaded_at) {
		this.uploaded_at = uploaded_at;
	}


	public String getImg_kind() {
		return img_kind;
	}

	public void setImg_kind(String img_kind) {
		this.img_kind = img_kind;
	}
	
    public void updateOffset() {
        this.offset = (this.pageNum - 1) * this.pageSize;
    }

    public void setTags(String tags) {
        this.tags = tags;
        this.tagArray = tags.split(",");
    }

    // Getters�� Setters
    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
        updateOffset();
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        updateOffset();
    }

    public int getImgCount() {
        return imgCount;
    }

    public void setImgCount(int imgCount) {
        this.imgCount = imgCount;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getTags() {
        return tags;
    }

    public String[] getTagArray() {
        return tagArray;
    }

    public void setTagArray(String[] tagArray) {
        this.tagArray = tagArray;
        this.tags = String.join(",", tagArray);
    }
    
    public MultipartFile getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	

	public final String getWriter() {
		return writer;
	}


	public final void setWriter(String writer) {
		this.writer = writer;
	}


	@Override
	public String toString() {
		return "MainVO [no=" + no + ", filename=" + filename + ", filePath=" + filePath + ", tags=" + tags
				+ ", tagArray=" + Arrays.toString(tagArray) + ", pageNum=" + pageNum + ", pageSize=" + pageSize
				+ ", imgCount=" + imgCount + ", offset=" + offset + ",wirter="+ writer+",img_kind" + img_kind+",uploaded_at" +uploaded_at+"]";
	}
    
}
