<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/faqStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class=e815_534>
		<div class=e1140_2927>
			<div class=e1140_2928>
				<div class=e1140_2929>
					<span class="e1140_2930">이벤트</span><span class="e1140_2931">메뉴보기</span><span
						class="e1140_2932">구독하기</span><span class="e1140_2933">요모조모</span><span
						class="e1140_2934">도란도란</span>
				</div>
				<div class="e1140_2935"></div>
				<div class=e1140_2936>
					<span class="e1140_2937">로그인 | 회원가입</span>
					<div class=e1140_2938>
						<div class=e1140_2939>
							<div class="ei1140_2939_1_112"></div>
							<div class="ei1140_2939_1_113"></div>
							<div class="ei1140_2939_1_114"></div>
						</div>
						<div class="e1140_2940"></div>
						<span class="e1140_2941">2</span>
					</div>
				</div>
			</div>
		</div>
		<div class="e844_606"></div>
	</div>
	<div class="e844_9999"></div>
	<div class="e844_616"></div>
	<div class=e844_617>
		<span class="e844_618">자주 묻는 질문</span>
	</div>
	<div class="e844_619">
	<br><br>
		<c:forEach var="faq" items="${flist}" varStatus="rowStatus">
			<span class="faq_title"><b>${faq.faq_title}</b></span>
			<br><br>
			<span class="faq_cont">${faq.faq_cont}</span>
			<br><br><br><br><br>
		</c:forEach>
	</div>
	<div class=e1081_4450>
		<div class=e1081_4451>
			<div class=e1081_4452>
				<span class="e1081_4453">요모조모</span>
			</div>
		</div>
		<span class="e1081_4454">자주 묻는 질문</span>
	</div>
	<div class=e1081_4455>
		<div class=e1081_4456>
			<span class="e1081_4458">김수인</span><span class="e1081_4459">LV.낑깡</span>
		</div>
		<div class=e1081_4460>
			<a href="${pageContext.request.contextPath}/yomo/notice.do" class=e1081_4461>
				<span class="e1081_4462">공지사항</span>
			</a>
			<a class=e1081_4463>
				<span class="e1081_4464">자주 묻는 질문</span>
			</a>
			<a href="${pageContext.request.contextPath}/yomo/oneask.do" class=e1081_4465>
				<span class="e1081_4466">1:1 문의</span>
			</a>
			<a href="${pageContext.request.contextPath}/yomo/aboutus.do" class=e1081_4467>
				<span class="e1081_4468">About Us</span>
			</a>
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
	<div class="e1558_2333"></div>
</body>
</html>