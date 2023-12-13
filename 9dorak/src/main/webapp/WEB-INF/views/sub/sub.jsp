<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/subStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<div class="screen">
		<div class=e1518_2324>
		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-event"
					OnClick="location.href ='${pageContext.request.contextPath}/event/challenge.do'" style="cursor: pointer;">
					이벤트</div>
					<div class="text-menu"
					OnClick="location.href ='${pageContext.request.contextPath}/menu/menu.do'" style="cursor: pointer;">
					메뉴보기</div>
					<div class="text-subscribe"
					OnClick="location.href ='${pageContext.request.contextPath}/sub/sub.do'" style="cursor: pointer;">
					구독하기</div>
					<div class="text-yomo"
					OnClick="location.href ='${pageContext.request.contextPath}/yomo/notice.do'" style="cursor: pointer;">
					요모조모</div>
					<div class="text-doran"
					OnClick="location.href ='${pageContext.request.contextPath}/doran/doran.do'" style="cursor: pointer;">
					도란도란</div>
				</div>
				<img class="untitled-2"
					src="${cpath}/resources/images/main/header-logo.png" />
				<div class="div-3">
					<div class="text-wrapper-28"><a OnClick="location.href ='${pageContext.request.contextPath}/login/loginForm.do'" style="cursor: pointer;">로그인</a>
					 | 
					 <a OnClick="location.href ='${pageContext.request.contextPath}/register/registerType.do'" style="cursor: pointer;">회원가입</a></div>
					<div class="group-20" OnClick="location.href ='${pageContext.request.contextPath}/wallet/basket.do'" style="cursor: pointer;">
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
	</div>
		<div class="e1543_9999">
		<span class="e1543_3020">원하는 구독 서비스를 선택하세요.</span><span
			class="e1543_3021">1) 한 달에 한 번 도시락이 배송됩니다.</span><span
			class="e1567_2322">3) 구독은 언제든지 변경 또는 해지 가능합니다.</span><span
			class="e1567_2321">2) 취향에 맞는 메뉴를 선택하시면 됩니다.</span>
		<div class="e1543_3022"
			OnClick="location.href ='${pageContext.request.contextPath}/sub/subdetail_9sub.do'"
			style="cursor: pointer;"></div>
		<span class="e1543_3028"
			OnClick="location.href ='${pageContext.request.contextPath}/sub/subdetail_9sub.do'"
			style="cursor: pointer;">배부르9 구독하기</span>
		<div class=e1543_3032>
			<div class="e1543_3023"
				OnClick="location.href ='${pageContext.request.contextPath}/sub/subdetail_19sub_a.do'"
				style="cursor: pointer;"></div>
			<span class="e1543_3031"
				OnClick="location.href ='${pageContext.request.contextPath}/sub/subdetail_19sub_a.do'"
				style="cursor: pointer;">배터지9 구독하기</span>
		</div>
		<span class="e1543_3033">월 요금</span> <span class="e1543_3041">59,000원(개당
			6,555원)</span> <span class="e1543_3042">99,000원 (개당 5,210원)</span> <span
			class="e1543_3034">월 도시락 갯수</span> <span class="e1543_3044">19개</span>
		<span class="e1543_3043">9개</span> <span class="e1543_3035">도시락
			종류</span> <span class="e1543_3045">3개</span> <span class="e1543_3046">6개</span>
		<div class="e1543_3037">
			<hr>
		</div>
		<div class="e1543_3038">
			<hr>
		</div>
		<div class="e1543_3039">
			<hr>
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
					<div class="footer-text-wrapper-3">Thursdayt: 09:00am-11:00PM</div>
					<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>