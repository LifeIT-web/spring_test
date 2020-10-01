<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Web Shop</title>
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript">
	function logcheck(){
		var chck = confirm(''); 
	
		}

</script>
</head>
<body>
	<header>
		<%@ include file="m_style/header.jsp" %>
	</header>

	<nav>
		<%@ include file="m_style/nav.jsp" %>
	</nav>

	<aside id="left">
		<%@ include file="m_style/aside.jsp" %>
	</aside>

	<section id="main">
	<!-- 메인 썸네일 위치 수정 필요 -->
			<!-- <div class="row">
				<div class="col-xs-7 col-sm-3 col-md-5">
					<div class="thumbnail">
						<img src="resources/images/computer.png" alt="computer">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>
							JSP 를 이용하여 내용을 가져올 텍스트 입니다.
							</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-5">
					<div class="thumbnail">
						<img src="resources/images/computer.png" alt="computer">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>JSP 를 이용하여 내용을 가져올 텍스트 입니다.</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-5">
					<div class="thumbnail">
						<img src="resources/images/computer.png" alt="computer">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>JSP 를 이용하여 내용을 가져올 텍스트 입니다.</p>
							<p>
							<a href="#" class="btn btn-primary" role="button">Button</a> 
							</p>
						</div>
					</div>
				</div>
			</div> -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="..." alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="..." alt="...">
					<div class="carousel-caption">...</div>
				</div>
				...
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</section>

	<aside id="right" class="location">
		<c:if test="${member.id != null}">
		<div id="shopcart">
			<h4>Shopping Cart</h4>
			<!-- JSP 넣기 물품이 없으면 아래와 같이 출력 단, 물품이 있으면 있다고 출력 -->
			현재 쇼핑카트에 물품이 없습니다. <br />
			<a role="button" class="btn btn-primary" href="shopcart.html">쇼핑카드 보기</a>
		</div>
		<div id="login">
			<h4>환영합니다. ${member.id}님</h4>
			<button type="submit" class="btn btn-primary" onclick="href='#'">회원수정</button>
			<button type="submit" class="btn btn-primary" onclick="href='#'">회원탈퇴</button>
		</div>
		</c:if>
		<div id="shopcart">
			<h4>Shopping Cart</h4>
			먼저 로그인을 하고 오세요.			
		</div>
		<div id="login">
			<h4>Log In</h4>
			<form action="#" method="POST">
				아이디 <input type="text" name="id" /><br>
				패스워드 <input type="password" name="pw" /><br>
				<input class="btn btn-default" type="submit" value="로그인" /><br> <!-- 로그인 id 유무 체크 js-->
				<a role="button" class="btn btn-default" href="/member/register" id="register">회원가입</a>
				<a role="button" class="btn btn-default" href="#" id="forgot">아이디찾기</a>
				<a role="button" class="btn btn-default" href="#" id="forgot">비밀번호찾기</a>
				<!-- 버튼 크기 조절 필요 -->
			</form>
		</div>
	</aside>

	<footer> Copyright (c) 2013 Web Shop </footer>
</body>
</html>
