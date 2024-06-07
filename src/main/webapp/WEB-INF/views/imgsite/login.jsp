<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
#box {
	border-radius: 20px;
	border: 1px solid #BDBDBD;
	width: 500px;
	height: 450px;
	position: relative;
	
}
form {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 12%;
}


input {
	width: 400px;
	height: 40px;
	border: 1px solid #BDBDBD;
	border-radius: 5px;
	margin: 40px;
	position: relatvie;
	padding-left: 10px;
}

#id {
	position: relative;
	top: 30px;
}

#pw {
	position: relative;
	bottom: 10px;
}
#box1{
	position: relative;
	bottom: 20px;
}
#box2{
	position: relative;
	bottom: 20px;
}
#user{
	position: relative;
	left: 40px;
	font-family: 나눔고딕;
}
#ps{
	position: relative;
	left: 40px;
	font-family: 나눔고딕;
	
}

#link {
	position: relative;
	left: 400px;
	bottom: 10px;
	font-size: 12px;
}

#login {
	background-color: rgb(52, 152, 219); /* rgb(52, 152, 219) blue  //  rgb(46, 204, 113) green*/
	color: white;
	border-radius: 5px;
	border: solid 1px rgb(52, 152, 219);
	width: 417px;
	height: 40px;
	position: relative;
	left: 40px;
	bottom: 15px;
	font-size: 15px;
}

p {
	color: #BDBDBD;
	font-size: 10px;
	position: relative;
	left: 50px;
	top: 20px;
	font-family: 나눔고딕;
}
</style>

</head>
<body>
	<form>
		<div id="box">
			<table id="id">
				<tr>
					<td id="user">아이디</td>
				</tr>
				<tr>
					<td><input type="text" id="box1" placeholder=" ID" name = "id"></td>
				</tr>
			</table>

			<table id="pw">
				<tr>
					<td id="ps">비밀번호</td>
				</tr>
				<tr>
					<td><input id="box2" type="password" placeholder=" Password" name = "password"></td>
				</tr>
			</table>
			
			<button id="login" formaction="/login" formmethod = "post">로그인</button>
			
			<p>아직 계정이 없으신가요?</p>
			<a href="/join" id="link">회원가입</a>
		</div>
	</form>
</body>
</html>