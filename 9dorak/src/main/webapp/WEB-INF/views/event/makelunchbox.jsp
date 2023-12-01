<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/makelunchboxStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="screen">
		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-wrapper-21">이벤트</div>
					<div class="text-wrapper-22">메뉴보기</div>
					<div class="text-wrapper-23">구독하기</div>
					<div class="text-wrapper-24">요모조모</div>
					<div class="text-wrapper-25">도란도란</div>
				</div>
				<img class="untitled-2" src="img/untitled-1-1.png" />
				<div class="div-2">
					<div class="text-wrapper-26">로그인 | 회원가입</div>
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
		<div id="event_menu">
			<ul>
				<li><a href="${pageContext.request.contextPath}/event/challenge.do">챌린지 ZONE</a></li>
				<li><a href="${pageContext.request.contextPath}/event/freelunchbox.do">도시락 무료 체험</a></li>
				<li><a>도시락 만들9</a></li>
				<li><a href="${pageContext.request.contextPath}/event/friendreco.do">친구 추천</a></li>
				<li><a href="${pageContext.request.contextPath}/event/friendadd.do">친구 추가</a></li>
			</ul>
		</div>
	</div>
	<hr>
</body>
</html>