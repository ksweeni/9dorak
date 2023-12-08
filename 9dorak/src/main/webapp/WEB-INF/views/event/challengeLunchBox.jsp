<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/challengeStyle4.css?d" type="text/css" />
</head>
<body>
	<div class="element">
		<div class="div">
			<div class="frame">
				<div class="group">
					<div class="overlap">
						<div class="overlap-group-wrapper">
							<div class="overlap-group">
								<div class="input-wrapper">
									<div class="input">
										<div class="label-check-helper">
											<div class="label-check">
												<div class="text-wrapper">도시락 이름은 무엇인가요?</div>
											</div>
										</div>
										<div class="container-default"></div>
									</div>
								</div>
								<div class="div-wrapper">
									<div class="input">
										<div class="label-check-helper">
											<div class="label-check">
												<p class="text-wrapper">간단한 한 줄 소개 부탁드려요</p>
											</div>
										</div>
										<div class="container-default"></div>
									</div>
								</div>
								<div class="group-2">
									<div class="input">
										<div class="label-check-helper">
											<div class="label-check">
												<div class="text-wrapper">도시락 레시피를 알려주세요</div>
											</div>
										</div>
										<div class="container-default"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-wrapper">
							<div class="button-group-wrapper">
								<div class="button-group">
									<button class="button">
										<div class="cancel">취소하기</div>
									</button>
									<button class="upload-wrapper">
										<div class="upload">업로드</div>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="frame-2">
						<div class="frame-3">
							<div class="frame-4">
								<div class="text-wrapper-2">나만의 도시락</div>
								<img class="line" src="img/line-5.svg" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="company-loco">
					<div class="company">
						<p class="p">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Commodo libero viverra dapibus odio sit
							malesuada in quis. Arcu tristique elementum viverra integer id.</p>
						<img class="untitled" src="img/untitled-1-2.png" />
					</div>
					<div class="social-icon">
						<div class="facebook">
							<img class="mask-group" src="img/mask-group-3.png" />
						</div>
						<div class="instagram">
							<img class="img" src="img/mask-group.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-2" src="img/image.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-2" src="img/mask-group-2.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-3">Contact Us</div>
					<div class="group-3">
						<div class="text-wrapper-4">1234 Country Club Ave</div>
						<div class="text-wrapper-5">NC 123456, London, UK</div>
						<div class="text-wrapper-6">+0123 456 7891</div>
					</div>
					<div class="group-4">
						<div class="overlap-group-2">
							<div class="vector-wrapper">
								<img class="vector" src="img/vector.svg" />
							</div>
							<div class="text-wrapper-7">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-8">User Link</div>
					<div class="group-5">
						<div class="text-wrapper-4">About Us</div>
						<div class="text-wrapper-5">Contact Us</div>
						<div class="text-wrapper-6">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tex</div>
						<div class="text-wrapper-9">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-8">Opening Restaurant</div>
					<div class="group-6">
						<div class="text-wrapper-4">Sat-Wet: 09:00am-10:00PM</div>
						<div class="text-wrapper-5">Thursdayt: 09:00am-11:00PM</div>
						<div class="text-wrapper-6">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<div class="group-7">
				<div class="date">
					<div class="navbar">
							<div class="text-wrapper-10"
					onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
					style="cursor: pointer;">챌린지 ZONE</div>
				<div class="text-wrapper-10"
					onclick="location.href='${pageContext.request.contextPath}/event/freelunchbox.do'"
					style="cursor: pointer;">도시락 무료 체험</div>
				<div class="element-sep"
					onclick="location.href='${pageContext.request.contextPath}/event/makelunchbox.do'"
					style="cursor: pointer;">도시락 만들9</div>
				<div class="text-wrapper-10"
					onclick="location.href='${pageContext.request.contextPath}/event/friendreco.do'"
					style="cursor: pointer;">친구 추천</div>
				<div class="text-wrapper-10"
					onclick="location.href='${pageContext.request.contextPath}/event/friendadd.do'"
					style="cursor: pointer;">친구 추가</div>
					</div>
				</div>
				<img class="base" src="img/base.svg" />
			</div>
			<header class="header">
				<div class="top-nav">
					<div class="navbar-2">
						<div class="text-wrapper-11"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">이벤트</div>
						<div class="text-wrapper-12"
							onclick="location.href='${pageContext.request.contextPath}/menu/menu.do'"
							style="cursor: pointer;">메뉴보기</div>
						<div class="text-wrapper-13"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">구독하기</div>
						<div class="text-wrapper-14"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">요모조모</div>
						<div class="text-wrapper-15"
							onclick="location.href='${pageContext.request.contextPath}/doran/doran.do'"
							style="cursor: pointer;">도란도란</div>
					</div>
					<img class="untitled-2" src="img/untitled-1-1.png" />
					<div class="div-2">
						<div class="text-wrapper-16">
							<span><a
								href="${pageContext.request.contextPath}/login/login.do">로그인</a></span>
							| <span><a
								href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a></span>
						</div>
						<div class="group-8">
							<div class="overlap-group-3">
								<img class="group-9" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-17">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
	</div>
</body>
</html>
