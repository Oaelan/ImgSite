<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My page</title>
   	<link rel="stylesheet" href="../resources/css/mypage.css?ver=1">
   	<link rel="stylesheet" href="../resources/css/headerFooter.css">
</head>

<body>
    <script type="text/javascript" src="../resources/js/mypage.js"></script>
	<div id="warp">
	<jsp:include page="../imgsite/header.jsp" />
	


        <div id = "main_contents">

            <div class = "passwordChange">

                <div class = "subContents1">
                    <table>

                        <tr class = "presentPassword">
                            <td class = "tableTitle"><font size = "5">회원정보수정</font></td>
                            <td class = "tableSub"><font size = "5">현재 비밀번호</font></td>
                            <td><input type = "password" class = "presentPasswordInput" placeholder="현재 비밀번호 입력"></td>
                            <td class = "check"><font size = "4"></font></td>
                        </tr>
                        
                        <tr class = "changePassword">
                            <td></td>
                            <td class = "tableSub"><font size = "5">수정할 비밀번호</font></td>
                            <td><input type = "password" class = "changePasswordInput" placeholder="수정할 비밀번호 입력"></td>
                            <td class = "check"><font size = "4"></font></td>
                        </tr>

                        <tr class = "passwordMatchCheck">
                            <td></td>
                            <td class = "tableSub"><font size = "5">수정할 비밀번호 확인</font></td>
                            <td><input type = "password" class = "changePasswordCheck" placeholder="수정할 비밀번호 확인"></td>
                            <td class = "check"><font size = "4"></font></td>
                        </tr>
                    </table>
                </div>
                
            </div>

            <div class = "savedImage">

                <div class = "subTitle2">
                    <p><font size = "5">저장된 게시물</font></p>
                </div>
                
                <div class = "subContents2">
                    
                    


                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img10.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img6.jpg"></a>
                    </div>
                    
                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img7.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img8.png"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img0.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img0.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img0.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img0.jpg"></a>
                    </div>

                    <div class = "image">
                        <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img0.jpg"></a>
                    </div>

                    <div class = "dragButton">
                        <button class = "saveDragButton">previous</button>
                        <button class = "saveDragButton">next</button>
                    </div>
                    
                </div>
                
            </div>

            <div class = "uploadImage">

                <div class = "subTitle3">
                    <p><font size = "5">나의 앨범</font></p>
                    <button onclick="deleteImage()">삭제하기</button>
                </div>

                

                <div class = "subContents3">
                    
                    <div class = "dragButton">
                        <button class = "uploadDragButton">previous</button>
                        <button class = "uploadDragButton">next</button>
                    </div>
                    
                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img10.jpg"></a>
                        </div>

                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img11.jpg"></a>
                        </div>
                        
                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img9.jpg"></a>
                        </div>
                        
                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img7.jpg"></a>
                        </div>
                        
                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img10.jpg"></a>
                        </div>

                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img11.jpg"></a>
                        </div>
                        
                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div><div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img10.jpg"></a>
                        </div>

                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    <div class = "imageBox">
                        <div class = "image">
                                <a href=""><img src="d:\01-STUDY\JH\HTML_CSS_JS\WebContent\project\img\img11.jpg"></a>
                        </div>
                        
                        <div class = "imageSelect">
                            <input type="checkbox" class = "deleteCheck" name = "myImage">
                        </div>
                    </div>

                    
                </div>

            </div>
        </div>

		

    </div>

    <jsp:include page="../imgsite/footer.jsp"></jsp:include>

</body>
</html>