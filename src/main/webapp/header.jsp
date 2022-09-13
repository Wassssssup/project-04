<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<style type="text/css">
	td{
		border:1px solid black;
		width:200px;
		text-align:center;
	}
	table.mainmenu td.login:hover{
		background-color : pink;
	}
	
	* {
            font-family: 'Jua', sans-serif;
        }
</style>
</head>
<body>
<body>
	<h2 align="center">회원 관리 프로그램</h2>
	<table class="mainmenu" align="center">
		<tr>
			<td class="login"><a href="login.do" style="text-decoration:none;">로그인</a></td>
			<td class="login"><a href="join.jsp" style="text-decoration:none;">회원가입<br>
				<td class="login"><a href="mypage.jsp" style="text-decoration:none;">회원 보기</a></td>
			<td class="login">
				<a href="findid.jsp" style="text-decoration:none;">회원찾기</a>
			</td>
		</tr>
</table>
</body>
</html>