<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header id="header">
	<a href="/main">
	<p>Edit Image Size</p>
	</a>
	<div class="search_area">
		<img src="../resources//img/search.png">
		<form action="#" method="get" id="searchA">
			<input type="search" name="query" class="search_space"
				placeholder="검색하세요!"> <input type="submit" value="검색"
				id="searchB">
		</form>
	</div>
	<div class="login_area">

		<c:choose>

			<c:when test="${isLogin}">
				<a href="/mypage" class="mypage"><span>MyPage</span></a>
				<a href="/logout" class="logout"><span>로그아웃</span></a>
				<div class="upload">
					<a href="../upload">업로드</a>
				</div>

			</c:when>

			<c:otherwise>
				<a href="/login" class="login"><span>로그인</span></a>
				<a href="/join" class="join"><span>가입</span></a>

			</c:otherwise>


		</c:choose>

	</div>
</header>
</body>
</html>