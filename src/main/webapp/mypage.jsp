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
</style>
</head>
<body>
	<form action="Update.do" method="post" name="frm">
	<table align="center" width="550">
		<tr>
			<td colspan="2" align="center">마이페이지</td>
		</tr>
		<tr>
			<td id="front">아이디</td>
			<td><input type="text" name="id" value="${loginUser.id }" readonly="readonly"></td>
		</tr>
		<tr>
			<td id="front">비밀번호</td>
			<td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td id="front">이름</td>
			<td><input type="text" name="name" value="${loginUser.name}"></td>
		</tr>
		<tr>
			<td colspan = "2">
				<input type="submit" value = "수정">
				<button onclick = "location.href='/delete.do'" >삭제</button>
				<input type="reset" value = "취소">
			</td>
		</tr>
</body>
</html>