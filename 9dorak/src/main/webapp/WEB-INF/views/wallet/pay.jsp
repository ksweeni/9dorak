<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/payStyle.css"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="screen">
		<div class="div">
			<div class="main-frame">
				<div class="overlap">
					<div class="orange">
						<div class="group">
							<div class="frame">
								<div class="cart-menus">
									<div class="frame-wrapper">
										<div class="frame-2">
											<div class="text-wrapper">배송정보</div>
											<div class="div-wrapper">
												<div class="frame-3">
													<div class="text-wrapper-2">배송지를 추가하세요</div>
													<div class="entypo-plus-wrapper">
														<img class="entypo-plus" src="${cpath}/resources/images/wallet/plus.png" />
													</div>
												</div>
											</div>
											<div class="my-del-button">
										<button class="my-del">나의 배송지 확인</button>
										</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="coupons">
						<p class="p">
							<span class="span">보유 쿠폰 </span> <span class="text-wrapper-3">0장</span>
						</p>
						<div class="group-2">
							<div class="frame-4">
								<div class="text-wrapper-4">쿠폰 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<div class="text-wrapper-5">보유한 쿠폰이 없습니다.</div>
								</div>
							</div>
							<div class="text-wrapper-6">쿠폰</div>
						</div>
					</div>
					<div class="points">
						<p class="p">
							<span class="span">보유 포인트 </span> <span class="text-wrapper-3">50
								P</span>
						</p>
						<div class="group-2">
							<div class="frame-4">
								<div class="text-wrapper-7">포인트 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<div class="text-wrapper-5">0</div>
								</div>
							</div>
							<div class="text-wrapper-6">포인트</div>
						</div>
					</div>
					<div class="payment">
						<div class="view-wrapper">
							<div class="view">
								<input type="checkbox" class="checkbox" id="creditCard"
									name="paymentMethod" value="creditCard"> <label
									for="creditCard" class="text-wrapper-8">신용카드</label>
							</div>
						</div>
						<div class="frame-5">
							<div class="view-2">
								<input type="checkbox" class="checkbox" id="bankTransfer1"
									name="paymentMethod" value="bankTransfer1"> <label
									for="bankTransfer1" class="text-wrapper-8">계좌 이체</label>
							</div>
						</div>
						<div class="frame-6">
							<div class="view-2">
								<input type="checkbox" class="checkbox" id="bankTransfer2"
									name="paymentMethod" value="bankTransfer2"> <label
									for="bankTransfer2" class="text-wrapper-8">계좌 이체</label>
							</div>
						</div>
						<div class="text-wrapper-6">결제수단</div>
					</div>

				</div>
				<div class="info">
					<div class="frame-7">
						<div class="frame-8">
							<div class="text-wrapper-9">결제정보</div>
							<div class="text-wrapper-10">total 2 Items</div>
						</div>
					</div>
					<div class="frame-9">
						<div class="text-wrapper-11">주문 금액</div>
						<div class="text-wrapper-11">83,400 원</div>
					</div>
					<div class="group-3">
						<div class="frame-10">
							<div class="text-wrapper-11">사용</div>
							<div class="text-wrapper-12">쿠폰</div>
							<div class="text-wrapper-13">-1,000 원</div>
						</div>
						<div class="frame-11">
							<div class="text-wrapper-12">포인트</div>
							<div class="text-wrapper-13">-500 P</div>
						</div>
					</div>
					<div class="frame-12">
						<div class="text-wrapper-14">결제하기</div>
					</div>
					<img class="line" src="img/line-10.svg" />
					<div class="group-4">
						<div class="frame-10">
							<div class="text-wrapper-15">총 결제금액</div>
							<div class="text-wrapper-15">81,900 원</div>
						</div>
						<div class="group-5">
							<p class="element-p">
								<span class="text-wrapper-16">적립 예정 포인트 </span> <span
									class="text-wrapper-3"> 35 P</span>
							</p>
							<img class="white-question-mark"
								src="img/white-question-mark.svg" />
						</div>
					</div>
					<img class="img" src="img/line-9.svg" />
				</div>
			</div>
			<div class="account-navigation">
				<div class="text-wrapper-17">결제하기</div>
			</div>
			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-event">
							<a class="header-a"
								href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
						</div>
						<div class="text-menu">
							<a class="header-a"
								href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
						</div>
						<div class="text-subscribe">
							<a class="header-a"
								href="${pageContext.request.contextPath}/sub/sub.do">구독하기</a>
						</div>
						<div class="text-yomo">
							<a class="header-a"
								href="${pageContext.request.contextPath}/yomo/notice.do">요모조모</a>
						</div>
						<div class="text-doran">
							<a class="header-a"
								href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
						</div>
					</div>
					<a href="${pageContext.request.contextPath}/main.do"> <img
						class="untitled-2"
						src="${cpath}/resources/images/main/header-logo.png" />
					</a>
					<div class="div-3">
						<div class="text-wrapper-28">
							<c:choose>
								<c:when test="${not empty sessionScope.loginmem.mem_id}">
									<span
										style="font-weight: bold; left: -1rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님 |
									</span>
									<a class="header-a"
										href="${pageContext.request.contextPath}/my/logout.do"
										style="position: relative; left: -1rem">로그아웃</a>
								</c:when>
								<c:otherwise>
									<a class="header-a"
										href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
			                        <a class="header-a"
										href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="group-20">
							<div class="header-overlap-group-3">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
								<div class="ellipse-light"></div>
								<!-- <div class="text-wrapper-29">2</div> -->
							</div>
						</div>
					</div>
				</div>
			</header>
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
						<div class="footer-text-wrapper-3">Thursday: 09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>
