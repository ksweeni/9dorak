<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/subdetailStyle2.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<div class="screen">
		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-wrapper-22">
						<a href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
					</div>
					<div class="text-wrapper-23">구독하기</div>
					<div class="text-wrapper-24">요모조모</div>
					<div class="text-wrapper-25">
						<a href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
					</div>
					<div class="text-wrapper-21">
						<a href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
					</div>
				</div>
				<img class="untitled-2" src="img/untitled-1-1.png" />
				<div class="div-2">
					<div class="text-wrapper-26">
						<span><a
							href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a></span>
						| <span> <a
							href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a></span>
					</div>
					<div class="group-5">
						<div class="overlap-group-5">
							<img class="group-6" src="img/group-1.svg" />
							<div class="ellipse-3"></div>
							<div class="text-wrapper-27">2</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>

</body>
</html>