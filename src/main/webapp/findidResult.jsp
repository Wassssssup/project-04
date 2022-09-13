<%@page import="com.member.dao.MemberDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.member.dto.MemberDTO"%>
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
<h2> 회원 정보 출력</h2><br>
<%
    request.setCharacterEncoding("UTF-8");
    String name1 = request.getParameter("name");
    MemberDTO Mdto = new MemberDTO();
    Mdto.setName(name1);
    MemberDAO mdao = new MemberDAO();
    List membersList = mdao.listmembers(Mdto);
%>
<table border=1 style="width:800px" align:"center">
    <tr align=center bgcolor="#FFFF66">
        <th>아이디</th>
        <th>비밀번호</th>
        <th>이름</th>
    </tr>
    <%
        for(int i=0; i<membersList.size(); i++){
            MemberDTO mDTO = (MemberDTO) membersList.get(i);
            String id= mDTO.getId();
            String pass = mDTO.getPass();
            String name = mDTO.getName();
    %>
    
    <tr align="center">
        <td><%= id %></td>
        <td><%= pass %></td>
        <td><%= name %></td>
    </tr>
    <%    
        }
    %>
</table>
</body>
</html>