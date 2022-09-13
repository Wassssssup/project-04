<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<style>
        * {
            font-family: 'Jua', sans-serif;
        }
        
        .mytitle {
            width: 300px;
            height: 200px;

            text-align: center;

            background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA3MDVfMjYz%2FMDAxNTMwNzcxODg5NzAy.8qd-3LQiL-FMTOLyQvgLyOZP9MblW2ZN2_Nt52FGJr4g.h8LSjVjkIvKqrEHxcJaTei7IaMQp_pAkZMSParysddQg.JPEG.himedia2003%2FKakaoTalk_20180704_140137354.jpg&type=a340");
            background-size: cover;
            background-position: center;
            border-radius: 10px;

            padding-top: 20px;
        }
        
        .wrap{

            width: 300px;
            margin: auto;
        }
        
        .btn {
        	background-color : black;
        	border-color : black;
        }
        
</style>
</head>
<body>
	<div class="wrap">
<div class="mytitle">
</div>
</div>
<div align="center">
<h2>회원 가입</h2>
<form action="join.do" method="post" name="joinform">
	<table width="500px" border="1">
		<tr height="50">
			<td width="150" align="center">아이디</td>
			<td width="350" align="center">
				<input type="text" name="id" size="40" placeholder="id를 입력하세요.">
		</tr>
		
		<tr height="50">
			<td width="150" align="center">패스워드</td>
			<td width="350" align="center">
				<input type="password" name="pass1" size="40" placeholder="비밀번호는 숫자와 영어만 입력해주세요.">
			</td>
		</tr>
		
		<tr height="50">
			<td width="150" align="center">패스워드 확인</td>
			<td width="350" align="center">
				<input type="password" name="pass2" size="40">
			</td>
		</tr>
		
		<tr height= "50">
			<td width="150" align="center">이름</td>
			<td width="350" align="center">
				<input type="text" name="name" size= "40">
			</td>
		</tr>
		<tr>
			<td colspan = "2">
				<input type="submit" name="submit" value="회원가입"  >
				<input type="button" name="cancle" value="취소" >
			</td>
		</tr>
	</table>
</form>
</body>
</html>