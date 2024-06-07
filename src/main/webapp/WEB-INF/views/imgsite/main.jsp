<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style>
</style>
<link rel="stylesheet" href="../resources/css/search.css?ver=5">
<link rel="stylesheet" href="../resources/css/headerFooter.css">

<script type="text/javascript">
	function goToPage() {
		var sel = document.getElementById("img_pNum").value;
		window.location.href = "main?nowPage=${page.nowPage}&cntPerPage=" + 32;
	}
</script>

</head>

<body>
	<div id="warp">

		<jsp:include page="../imgsite/header.jsp" />

		<div id="main">
			<ul id="nav">

				<li class="select1"><input type="radio" name="img_type"
					value=".all" id="all"> <label for="all">전체</label></li>

				<li class="select2"><input type="radio" name="img_type"
					value=".pic" id="pic"> <label for="pic">사진</label></li>

				<li class="select3"><input type="radio" name="img_type"
					value=".img" id="img"> <label for="img">이미지</label></li>
			</ul>
			<!--이미지의 전체 컬럼-->
			<div id="img_con">
				<c:set var="imgCount" value="0" />

				<c:forEach var="fl" items="${fl}">

					<c:if test="${imgCount % 8 == 0}">
						<div class="img_column">
					</c:if>		
					
					<div class="cell_box">

						<div class="img_tag">
							<div class="like">
								<input type="button" class="heart" value="♥"> <label
									class="count">0</label>
							</div>

							<a href="/imgdetail?no=${fl.no}"
								style="display: block; height: 74%;"></a>
							<div class="tag">

								<div class="tagBox">

									<ul id="tagList">										
										<c:forEach var="tag" items="${fl.tags}">
											<li class="tagText">${tag}</li>
										</c:forEach>
									</ul>

								</div>

							</div>

						</div>

						<div class="cell_img">
							<!-- no값으로 게시글 번호 던져줘야함 모델변수 필요-->
							<img src="/Imgsite/upload/${fl.filename}">

						</div>


					</div>



					<c:set var="imgCount" value="${imgCount + 1}" />

					<c:if test="${imgCount % 8 == 0}">
			</div>
					<!-- img_column 닫기 -->
					</c:if>


				</c:forEach>
				<c:if test="${imgCount % 8 != 0}">
			</div>
				<!-- 마지막 img_column 닫기 -->
				</c:if>
	</div>
			
			


	<div id="imge_count_view">


		<c:if test="${page.startPage != 1 }">
			<a
				href="/main?nowPage=${page.startPage - 1 }&cntPerPage=${page.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${page.startPage }" end="${page.endPage }" var="p">
			<c:choose>
				<c:when test="${p == page.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != page.nowPage }">
					<a href="/main?nowPage=${p }&cntPerPage=${page.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${page.endPage != page.lastPage}">
			<a
				href="/main?nowPage=${page.endPage+1 }&cntPerPage=${page.cntPerPage}">&gt;</a>
		</c:if>

	</div>

	<jsp:include page="../imgsite/footer.jsp"></jsp:include>


	<script type="text/javascript" src="../resources/js/search.js"></script>
</body>

</html>