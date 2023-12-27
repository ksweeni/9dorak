<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();
%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/registerTypeStyle.css?s" type="text/css" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>

</head>
<body>
	<div class="v49_2207">
		<!--  <div class="v49_2208"></div>-->

		<div class="v50_2362">
			<!-- <div class="v50_2363">
				<div class="name"></div>
			</div> -->
			<div class="e50_2362" style="">
				<img alt=""
					src="${cpath }/resources/images/register/ProgressBar.png"
					class="e50_2363">
			</div>

		</div>

		<!-- 		<span  class="e612_238">반갑습니다, 구도락입니다 !</span> -->
		<a href="${cpath }" class="v49_2133">아이를 위한 9일의 약속 <span
			style="color: orange;">구도락</span></a>
		<div class="v49_2134">
			<a href="${cpath }/register/registerForm.do?id=${id}" class="v49_2136">
				<div class="v49_2135">
					<div class="baby-face"></div>
					<span class="v49_2139">도시락을 담을 우리 아이</span>
				</div>
			</a>
			<div class="v49_2140">
				<a href="${cpath }/register/registerForm.do?id=${id}" class="v49_2141">
					<div class="parent-face"></div> <span class="v49_2142">아이에게
						선물할 부모님</span>
				</a>
			</div>
		</div>
		<span class="v49_2130"><span style="color: orange;">가입
				유형</span>을 선택해주세요</span>

		<div class="goto-login">
			이미 계정이 있나요? <a class="to-login" href="${cpath}/login/loginForm.do">
				로그인하기</a>
		</div>
	</div>

</body>
	
</html>