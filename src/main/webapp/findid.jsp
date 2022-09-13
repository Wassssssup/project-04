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
	<form name="idfindscreen" method = "post" name="frm" action = "findidResult.jsp">
			<div align = "center" >
				<h3>회원정보 찾기</h3>
			</div>
		<section>
			<div align = "center">
				<label>ID</label>
				<input type="text" name="member_ID" class = "btn-name" placeholder = "등록한 ID">
			<br>
			</div>
			<br>
	</section>
	<div align = "center">
		<input type="submit" name="enter" value="찾기" >
		<input type="reset" name="cancle" value="취소" onClick="history.back()">
 	</div>
 </form>
</body>
</html>