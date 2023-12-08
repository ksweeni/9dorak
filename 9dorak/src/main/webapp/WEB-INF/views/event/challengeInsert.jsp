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
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/challengeStyle3.css?d" type="text/css" />
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<div class="frame-2">
				<div class="frame-3">
					<div class="frame-4">
						<div class="text-wrapper-3">챌린지 참여하기</div>
						<img class="line" src="img/line-5.svg" />
					</div>
				</div>
			</div>
			<div class="overlap">
				<div class="group">
					<div class="overlap-group">
						<form action="${cpath}/event/insertChal.do" method="post"
							enctype="multipart/form-data">
							<!-- 제목 -->
							<div class="group">
								<div class="overlap-group-2">



									<div class="input-wrapper">
										<div class="input">



											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">제목</div>
												</div>
											</div>
											<input class="container-default" type="text"
												name="challenge_name" placeholder="참여하는 챌린지의 이름을 입력해주세요" />
										</div>
									</div>

									<!-- 내용 -->
									<div class="group-2">
										<div class="input-2">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">내용</div>
												</div>
											</div>
											<input class="container-default-2" type="text"
												name="challenge_cont" placeholder="본인이 참여한 내용을 자세히 적어주세요" />
										</div>
									</div>

									<!-- 챌린지 참여 시작일, 챌린지 참여 종료일 -->
									<div class="group-3">
										<div class="group-4">
											<div class="input-3">
												<div class="label-check-helper">
													<div class="label-check">
														<div class="text-wrapper">챌린지 참여 시작일</div>
													</div>
												</div>
												<input class="container-default-3" type="date"
													name="challenge_start" />
											</div>
										</div>
										<div class="group-6">
											<div class="input-4">
												<div class="label-check-helper">
													<div class="label-check">
														<div class="text-wrapper">챌린지 참여 종료일</div>
													</div>
												</div>
												<input class="container-default-3" type="date"
													name="challenge_end" placeholder="챌린지 종료 날짜" />
											</div>
										</div>
									</div>
									<div class="bottom">
										<!-- 파일 선택 -->
										<input type="file" name="singleFile" />

										<!-- 글쓰기 버튼 -->
										<button type="submit" class="right-aligned-button">글쓰기</button>
									</div>
								</div>
							</div>
						</form>
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
							<img class="mask-group" src="img/mask-group.png" />
						</div>
						<div class="instagram">
							<img class="img" src="img/mask-group-2.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-2" src="img/image.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-2" src="img/mask-group-3.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-4">Contact Us</div>
					<div class="group-7">
						<div class="text-wrapper-5">1234 Country Club Ave</div>
						<div class="text-wrapper-6">NC 123456, London, UK</div>
						<div class="text-wrapper-7">+0123 456 7891</div>
					</div>
					<div class="overlap-group-wrapper">
						<div class="overlap-group-4">
							<div class="vector-wrapper">
								<img class="vector" src="img/vector.svg" />
							</div>
							<div class="text-wrapper-8">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-9">User Link</div>
					<div class="group-8">
						<div class="text-wrapper-5">About Us</div>
						<div class="text-wrapper-6">Contact Us</div>
						<div class="text-wrapper-7">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tax</div>
						<div class="text-wrapper-10">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-9">Opening Restaurant</div>
					<div class="group-9">
						<div class="text-wrapper-5">Sat-Wed: 09:00am-10:00PM</div>
						<div class="text-wrapper-6">Thursday: 09:00am-11:00PM</div>
						<div class="text-wrapper-7">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<img class="group-10" src="img/group-481746.png" />
			<div class="navbar">
				<div class="element-aug"
					onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
					style="cursor: pointer;">챌린지 ZONE</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/freelunchbox.do'"
					style="cursor: pointer;">도시락 무료 체험</div>
				<div class="element-sep"
					onclick="location.href='${pageContext.request.contextPath}/event/makelunchbox.do'"
					style="cursor: pointer;">도시락 만들9</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/friendreco.do'"
					style="cursor: pointer;">친구 추천</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/friendadd.do'"
					style="cursor: pointer;">친구 추가</div>
			</div>
			<header class="header">
				<div class="top-nav">
					<div class="navbar-2">
						<div class="text-wrapper-12"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">이벤트</div>
						<div class="text-wrapper-13"
							onclick="location.href='${pageContext.request.contextPath}/menu/menu.do'"
							style="cursor: pointer;">메뉴보기</div>
						<div class="text-wrapper-14"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">구독하기</div>
						<div class="text-wrapper-15"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">요모조모</div>
						<div class="text-wrapper-16"
							onclick="location.href='${pageContext.request.contextPath}/doran/doran.do'"
							style="cursor: pointer;">도란도란</div>
					</div>
					<img class="untitled-2" src="img/untitled-1-1.png" />
					<div class="div-2">
						<div class="text-wrapper-17">
							<span><a
								href="${pageContext.request.contextPath}/login/login.do">로그인</a></span>
							| <span><a
								href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a></span>
						</div>
						<div class="group-11">
							<div class="overlap-group-5">
								<img class="group-12" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-18">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
	</div>
</body>
</html>
