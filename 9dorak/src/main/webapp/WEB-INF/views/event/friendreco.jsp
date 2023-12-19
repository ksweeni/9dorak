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
	href="${cpath}/resources/css/friendrecoStyle.css?d" type="text/css" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="og:title" content="코드공부방">
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.5.0/kakao.min.js"
	integrity="sha384-kYPsUbBPlktXsY6/oNHSUDZoTX6+YI51f63jCPEIPFP09ttByAdxd2mEjKuhdqn4"
	crossorigin="anonymous"></script>
<script>
	Kakao.init('744b3913b823c75012d64f9856fdc141'); // 사용하려는 앱의 JavaScript 키 입력
</script>
</head>
<body>
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
							<span style="font-weight: bold; left: -1rem; position: relative;">
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
				<div class="group-20" id="lightsParent">
					<div class="header-overlap-group-3" onclick="loginBasket()">
						<img class="header-group-21"
							src="${cpath}/resources/images/main/header-cart.png" />
						<!-- <div class="text-wrapper-29">2</div> -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="screen">
		<div id="event_menu">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/event/challenge.do">챌린지
						ZONE</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/freelunchbox.do">도시락
						무료 체험</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/makelunchbox.do">도시락
						만들9</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendreco.do">친구
						추천</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendadd.do">친구
						추가</a></li>
			</ul>
		</div>
	</div>
	<hr>
	<div class=e62_324>
		<div class=e62_466>
			<div class=e62_325>
				<div class=e62_326>
					<p class="e62_327">친구 추천으로 혜택을 함께 누려보세요</p>
					<p class="e62_328">친구에게 회원코드를 공유하고, 해당 친구가 회원 가입 시 추천인 코드를 입력하면</p>
				</div>
			</div>
			<span class="e62_465">두 분 모두에게 <span class="pointer">900P</span>를
				드려요 !
			</span>
		</div>
		<div class=e63_173>
			<span class="e62_373">가입한 친구</span><span class="e62_374">본인</span>
		</div>
		<a id="kakaotalk-sharing-btn" href="javascript:;"><img
			src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
			alt="카카오톡 공유 보내기 버튼" />
		</a>
	</div>
	<footer class="footer">
		<div class="footer-company-loco">
			<div class="footer-company">
				<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요 우리는
					홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
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
	<script type='text/javascript'>
		Kakao.Share
				.createDefaultButton({
					container : '#kakaotalk-sharing-btn',
					objectType : 'feed',
					content : {
						title : '구도락',
						description : '#맞벌이부모 #자녀 #도시락 #가족등록 #친구추가',
						imageUrl : 'https://img.freepik.com/premium-vector/healthy-bento-lunch-box-illustration_477760-123.jpg?w=1060',
						link : {
						// [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
						mobileWebUrl: 'https://developers.kakao.com',
						webUrl: 'https://developers.kakao.com',
						},
					},
					social : {
						likeCount : 300,
						commentCount : 31,
						sharedCount : 235,
					},
					buttons : [ {
						title : '웹으로 보기',
						link : {
						mobileWebUrl: 'https://developers.kakao.com',
						webUrl: 'https://developers.kakao.com',
						},
					}, {
						title : '앱으로 보기',
						link : {
						mobileWebUrl: 'https://developers.kakao.com',
						webUrl: 'https://developers.kakao.com',
						},
					}, ],
				});
	</script>
</body>
</html>