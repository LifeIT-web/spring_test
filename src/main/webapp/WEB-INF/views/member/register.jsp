<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Join</title>
        <link rel="stylesheet" type="text/css" href="resources/css/join.css"> 
    	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
    	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap.js"></script>
    </head>
    <body>
        <div id="page-wrap">
            <form method="POST" action="/member/register">
                <fieldset>
                    <legend>회원정보입력</legend>
                    <label for="id">아이디</label>
                    <input type="text" name="id" id="text1" />
                    <button class="btn btn-primary">중복검사</button><br><!-- js(ajax) 추가 -->
                    <label for="pw">패스워드</label>
                    <input type="password" name="pw" />
                    <label for="name">이름</label>
                    <input type="text" name="name" /><br>
                    <label for="pn">휴대폰 번호</label>
                    <input type="tel" name="pn" /><br>
                    <label for="em">이메일</label>
                    <input type="email" name="em" /> <br>
                </fieldset>
                <input type="submit" name="submit" value="제출" />
                <input type="reset" name="reset" value="초기화" />
            </form>
        </div>
    </body>
</html>