<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="../resources/css/imgDetail.css?ver=1210">
<link rel="stylesheet" href="../resources/css/headerFooter.css">
 

<link rel="stylesheet" href="../resources/css/imgDetail.css?ver=23423">
<link rel="stylesheet" href="../resources/css/headerFooter.css">




</head>

<body>
	<jsp:include page="../imgsite/header.jsp" />

	<div class="body-content">
		<div class="image">
			<div class="big-image-container">
				<div id="bigImgBox">
					<img src="/Imgsite/upload/${detailImg.filename}">
				</div>
			</div>
			<div class="small-image-container">
				<c:forEach var="extraImg" items="${extraImags}">
					<div class="sImgCol">
						<div class="imgBox">
							<a> <img src="/Imgsite/upload/${extraImg.filename}"
								alt="Small Image 1">
							</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="right">

			<div class="control-buttons">

				<div class="details">
	
					<div id="imgInfo">
						<div class="infoHead">
							<h2>details</h2>
							<div class="likes">
								<span style="font-size: 15px;" id="moving" class="number">999+</span>
								<input id="like" type="button" onclick="plus1()" value="♥" />
							</div>
						</div>
						<p name="userN">
							<b>Writer : </b> ${detailImg.writer}
						</p>
						<p name="imgT">
							<b>ImgType : </b> ${detailImg.img_kind}
						</p>
						<p name="imgS">
							<b>Original Size : </b>img original size
						</p>
					</div>
				</div>

				<div class="Button">
					<div id="radioCont">
						<div class="imgSB">
							<input type="radio" id="half" name="img_size" value="/2">
							<label for="half" class="radiLab">원본 이미지/2</label>
						</div>
						<div class="imgSB">
							<input type="radio" id="quarter" name="img_size" value="/4">
							<label for="quarter" class="radiLab">원본 이미지/4</label>
						</div>
						<div class="imgSB">
							<input type="radio" id="full" name="img_size" value="1">
							<label for="full" class="radiLab">원본 이미지</label>
						</div>
						<div id="downB">
							<button class="downButton">다운로드</button>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
	<jsp:include page="../imgsite/footer.jsp"></jsp:include>
	<script type="text/javascript" src="resources/js/imgDetail.js"></script>

</body>

</html>