<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>업로드 페이지</title>
<link rel="stylesheet" href="../resources/css/upload.css">
<link rel="stylesheet" href="../resources/css/headerFooter.css">
</head>

<body>
	<div id="warp">

		<jsp:include page="../imgsite/header.jsp" />

		<div id="main_contents">
			<div id="edit_size_area">
				<div id="output">
					<div class="output_box"></div>
				</div>
			</div>

			<aside id="right_side">
				<form action="/upload" method="post"
					enctype="multipart/form-data" id="img_upload">
					<div class="category_select">
						<p class="cate_text">등록할 이미지의 정보를 입력해주세요!</p>
						<div id=upload_A>
							<div class="img_upload">
								<label> <span class="upload_butt_t">업로드</span> <input
									type="file" id="upload_file" accept="image/*" name="uploadFile">
								</label>
							</div>
							<div class="upload">
								<!---업로드 버튼-->
								<!-- /*업로드한이미지등록하기*/ -->
								<input type="submit" id="upload_b" value="등록하기">
							</div>
						</div>
						<ul class="category_list">

							<li class="cate_op"><input type="radio" name="img_kind"
								required value="pic" id="pic"> <label for="pic"
								class="radio-button">사진</label></li>

							<li class="cate_op"><input type="radio" name="img_kind"
								required value="img" id="img"> <label for="img"
								class="radio-button">이미지</label></li>

						</ul>

						<div class="img_tag">
							<label>태그</label> <input name="tag" id="tags" type="text"
								placeholder="ex)동물, 고양이 ...">
						</div>
						<p id="img_size">
							<span id="width">가로: 0000px /</span> <span id="height">세로:
								0000px</span>
						</p>


					</div>


				</form>
			</aside>

		</div>

		<jsp:include page="../imgsite/footer.jsp"></jsp:include>
	</div>
	<!-- js,css 파일 수정후 적용이 안될때 연결된 파일의 끝에 ver=1을 넣어주면 해결됨 -->
	<script type="text/javascript" src="../resources/js/upload.js"></script>
</body>

</html>