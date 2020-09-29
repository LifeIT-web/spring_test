<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>쇼핑 카트</title>
<style>
body {
	height: 100%;
	background-color: #F3F1E9;
}

table {
	width: 100%;
	border-collapse: collapse;
	text-align: center;
}

table caption {
	color: red;
	text-decoration: underline;
}
</style>
</head>

<body>
	<form action="#" method="POST">
		<table border="1">
			<caption>Shopping Cart</caption>
			<!--<colgroup> html에서 잘안쓴데 css로 쓰길 권한다네
                    <col width="" />
                    <col width="" />
                    <col width="" />
                    <col width="" />
                </colgroup>-->
			<tr>
				<th>품목</th>
				<th>가격</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
			<tr>
				<td>컴퓨터 세트</td>
				<td>2,000,000원</td>
				<td><input type="number" min="0" step="1" value="0" /></td>
				<td><input type="text" size="6" value="0" /></td>
				<!-- jsp 설정 -->
			</tr>
		</table>
		<input type="button" value="계산" /> <input type="submit" value="구매" />
		<input type="reset" value="초기화" />
	</form>
	<a href="main.html">Back to Home</a>
</body>

</html>