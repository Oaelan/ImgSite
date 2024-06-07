<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<style>
#box {
	border-radius: 20px;
	border: 1px solid #BDBDBD;
	width: 600px;
	height: 850px;
	position: relative;
	
}

form {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 5%;
}

#text{
	position: absolute;
	left: 45px;
	margin-top: 10px;
	font-family: 나눔고딕;
}
input {
	width: 500px;
	height: 40px;
	border: 1px solid #BDBDBD;
	border-radius: 5px;
	margin: 40px;
	margin-bottom: 20px;
	position: relative;
	padding-left: 10px;
}
label{
	position: relative;
	left: 45px;
	bottom: 25px;
	font-size: 12px;
	font-family: 나눔고딕;
}
#btn{
	background-color: rgb(52, 152, 219); 
	border: solid 1px rgb(52, 152, 219);
	border-radius: 5px;
	color: white;
	font-size: 17px;
	width: 515px;
	height: 50px;
}
.btn {
	display: flex;
	flex-direction: column;
}
</style>
</head>
<body>
	<form id = "join" action = "/join" method = "post">
		<div id="box">
			<p></p>
			<table>
				<tr>
					<td id="text">아이디</td>
				</tr>
				<tr>
					<td><input type="text" id="userId" placeholder="ID" name = "id"></td>
				</tr>
				<tr>
					<td><label id="userIdLabel"></label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td id="text">비밀번호</td>
				</tr>
				<tr>
					<td><input type="password" id="pw" placeholder="Password" name = "password"></td>
				</tr>
				<tr>
					<td><label id="passwordLabel"></label></td>
				</tr>

			</table>
			<table>
				<tr>
					<td id="text">비밀번호 확인</td>
				</tr>
				<tr>
					<td><input type="password" placeholder="비밀번호 확인" id="pwcheck"></td>
				</tr>
				<tr><td><label id="confirmLabel"></label></td></tr>
			</table>
			<table>
				<tr>
					<td id="text">이름</td>
				</tr>
				<tr>
					<td><input type="text" placeholder="User Name" id="name" name = uname></td>
				</tr>
				<tr><td><label id="nameLabel"></label></td></tr>
			</table>
			<table>
				<tr>
					<td id="text">E-mail</td>
				</tr>
				<tr>
					<td><input type="text" placeholder="E-mail" id="email" name = "email"></td>
				</tr>
				<tr><td><label id="emailLabel"></label></td></tr>
			</table>
			<table>
			<tr>
			<td><input type="submit" value="회원가입" id="btn"></td>
			</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript" src="../resources/js/loginJoin.js?ver=0"></script>
</body>
</html>