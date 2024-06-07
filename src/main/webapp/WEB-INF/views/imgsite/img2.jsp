<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page
	import="java.io.*, java.sql.*, javax.servlet.http.*, javax.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.UUID"%>
<!-- UUID를 사용하여 파일 이름을 생성하기 위해 import합니다. -->

<%
    request.setCharacterEncoding("UTF-8");

    String fileName = null;
    String filePath = null;
    String imgKind = null;
    String tag = null;

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // DB 연결
        try{
        	 Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException ex){
        	//지정한 클래스가 존재하지 않는 경우 에러가 발생한다.
        }
        String url = "jdbc:mysql://localhost:3306/imgsite?useUnicode=true&characterEnoding=uft8?serverTimezone=Asia/Seoul";
        String dbId = "root";
        String dbPw = "1234";
        conn = DriverManager.getConnection(url, dbId, dbPw);
       

        // 파일 업로드 처리
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> items = upload.parseRequest(request);
        for (FileItem item : items) {
            if (!item.isFormField()) {
                // 파일 이름을 유일하게 만듭니다.
                fileName = UUID.randomUUID().toString() + "_" + 
                new File(item.getName()).getName();
                // 파일 경로를 설정합니다. 서버 내의 특정 폴더에 저장하도록 합니다.
                filePath = getServletContext().getRealPath("/") + "UserImg" + File.separator + fileName;
                // 파일을 저장합니다.
                item.write(new File(filePath));
            } else {
            	//multipart/form-data 형식으로 데이터가 전송되므로, 
            	//텍스트 요소의 값은 일반적인 방법으로는 request.getParameter()로 가져올 수 없습니다.
            	/*
            	대신에 파일 업로드와 함께 텍스트 데이터를 받기 위해서는 Apache Commons FileUpload 라이브러리를 사용하여 요청을 처리해야 합니다.
            	이 라이브러리를 사용하면 각각의 폼 요소를 FileItem 객체로 받을 수 있습니다.
            	텍스트 필드의 경우 item.isFormField()를 통해 확인하고, item.getString() 메서드를 사용하여 값을 가져올 수 있습니다.
            	*/
                // 텍스트 필드일 경우
                if (item.getFieldName().equals("img_kind")) {
                    imgKind = item.getString("UTF-8");
                }
                if (item.getFieldName().equals("tag")) {
                    tag = item.getString("UTF-8");
                }
            }
        }

        // 데이터베이스에 삽입
        String sql = "INSERT INTO fl (fileName, filepath, img_kind, writer, uploaded_at, tag, liked) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, fileName);
        pstmt.setString(2, filePath);
        pstmt.setString(3, imgKind);
        pstmt.setString(4, tag);
        pstmt.executeUpdate();
     
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 리소스 해제
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
