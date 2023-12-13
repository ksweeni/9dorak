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
						<!--  action path 수정할 것! -->
						<form action="${cpath}/event/insertChal.do" method="post"
							enctype="multipart/form-data">
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<div class="input-wrapper">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">도시락 이름은 무엇인가요?</div>
												</div>
											</div>
											<input class="container-default" type="text"
												name="lunchBoxName" placeholder="귀여운 도시락 이름은 ??" />
										</div>
									</div>
									
									<div class="group-2">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">도시락 레시피를 알려주세요</div>
												</div>
											</div>
											<input class="container-default" type="text"
												name="lunchBoxRecipe" placeholder="나만의 도시락 레시피를 자세히 적어주세요!" />
										</div>
									</div>
									
									<div class="div-wrapper">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">간단한 한 줄 소개 부탁드려요</div>
												</div>
											</div>

											<input class="container-default" type="text"
												name="lunchBoxComment"
												placeholder="나만의 도시락을 가장 잘 나타낼 수 있게 한 줄로 작성 해 주세요!" />
										</div>
									</div>
									
								</div>
							</div>
							<div class="frame-wrapper">
								<div class="input">
									<div class="bottom">
										<!-- 파일 선택 -->
										<div class="label-check">
											<div class="text-wrapper">도시락을 설명하는 사진이나 그림을 올려주세요</div>
										</div>
										<label class="fileUpload" for="singleFile">파일 선택</label> <input
											type="file" id="singleFile" style="display: none;" />
									</div>
								</div>
								<br>
								<br>
								<br>
									<!-- 취소버튼 -->
									<button type="reset" class="reset-button"
										value="내용 초기화">reset</button>

									<!-- 글쓰기 버튼 -->
									<button type="submit" class="upload-button">글쓰기</button>
							</div>
						</form>
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
				<div class="footer-company-loco">
					<div class="footer-company">
						<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요
							우리는 홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
						<img class="footer-logo"
							src="${cpath}/resources/images/main/footer-logo.png" />
					</div>
					<div class="footer-social-icon">
						<div class="footer-facebook">
							<img class="footer-mask-group"
								src="${cpath}/resources/images/main/footer-facebook.png" />
						</div>
						<div class="footer-instagram">
							<img class="footer-img"
								src="${cpath}/resources/images/main/footer-insta.png" />
						</div>
						<div class="footer-twitter">
							<img class="footer-mask-group-2"
								src="${cpath}/resources/images/main/footer-twitter.png" />
						</div>
						<div class="footer-linkind">
							<img class="footer-mask-group-2"
								src="${cpath}/resources/images/main/footer-linkedin.png" />
						</div>
					</div>
				</div>
				<div class="footer-contact-us">
					<div class="footer-text-wrapper-2">Contact Us</div>
					<div class="footer-group">
						<div class="footer-text-wrapper-3">1234 Country Club Ave</div>
						<div class="footer-text-wrapper-3">NC 123456, London, UK</div>
						<div class="footer-text-wrapper-3">+0123 456 7891</div>
					</div>
					<div class="footer-overlap-group-wrapper">
						<div class="footer-overlap-group">
							<div class="footer-vector-wrapper">
								<img class="footer-vector"
									src="${cpath}/resources/images/main/footer-email-button.png" />
							</div>
							<input class="footer-enter-email"
								placeholder="Enter your email....">
						</div>
					</div>
				</div>
				<div class="footer-user-link">
					<div class="footer-text-wrapper-7">User Link</div>
					<div class="footer-group-2">
						<div class="footer-text-wrapper-3">About Us</div>
						<div class="footer-text-wrapper-3">Contact Us</div>
						<div class="footer-text-wrapper-3">Order Delivery</div>
						<div class="footer-text-wrapper-3">Payment &amp; Tex</div>
						<div class="footer-text-wrapper-3">Terms of Services</div>
					</div>
				</div>
				<div class="footer-opening-restaurant">
					<div class="footer-text-wrapper-7">Opening Restaurant</div>
					<div class="footer-group-3">
						<div class="footer-text-wrapper-3">Sat-Wet: 09:00am-10:00PM</div>
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
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
