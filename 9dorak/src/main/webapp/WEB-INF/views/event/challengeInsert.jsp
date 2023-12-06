<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
</head>
<body>
	<form action="insertChal.do" method="post">
	<input type="text" name="challenge_name" placeholder="제목"/>
	<input type="text" name= "challenge_cont" placeholder="내용"/>
	<!-- 가상폴더 업로드 하면 적용하자 -->
	<!-- <input type="text" /> -->
	<input type="date" name= "challenge_start" placeholder="챌린지 시작 날짜"/>
	<input type="date" name= "challenge_end" placeholder="챌린지 종료 날짜"/>
	<button type ="submit">글쓰기</button>
	</form>
<!-- 		challenge_no NUMBER(10) NOT NULL,
	challenge_name VARCHAR2(255) NOT NULL,
	challenge_cont CLOB NOT NULL,
	challenge_image VARCHAR2(255) NULL,
	challenge_date TIMESTAMP NOT NULL,
	challenge_start TIMESTAMP NULL,
	challenge_end TIMESTAMP NULL,
	mem_id VARCHAR2(255) NOT NULL -->
	
	
	
</body>
<script>

</script>
</html>