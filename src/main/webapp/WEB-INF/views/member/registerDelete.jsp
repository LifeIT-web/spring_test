<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈톼</title>
</head>
<body>

<div>
	<form action="/member/registerDelete" method="post">
		<h4>아이디</h4>
		<input type="text" name="id" />
		
		<h4>비밀번호</h4>
		<input type="password" name="pw" />
		
		<button type="submit">로그인</button>
	</form>
</div>

</body>
</html>