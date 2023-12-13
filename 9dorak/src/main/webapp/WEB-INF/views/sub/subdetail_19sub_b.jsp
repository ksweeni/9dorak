<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/sub19bdetailStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<div class="screen">
	</div>
	<div class=e1537_3083>
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
		<div class=e1537_3167>
			<span class="e1537_3168"><b>이번달 배터지9 메뉴</b></span>
		</div>
		<span class="e1543_3047"><a
			href="${pageContext.request.contextPath}/sub/subdetail_19sub_a.do">A
				메뉴</a></span> <span class="e1543_3294">B 메뉴</span> <span class="e1543_3414">|</span>
		<div class="e1543_3351">
			<hr>
		</div>
		<div class=e1543_3353>
			<div class=e1543_3354>
				<div class="e1543_3355"></div>
				<div class="e1543_3357"></div>
			</div>
			<div class=e1543_3358>
				<span class="e1543_3360">${sub19bllist[0].pro_name} X 4</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[0].pro_no}"
					class=e1543_3361 style="cursor: pointer;"> <span
					class="e1543_3362">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1543_3363>
			<div class=e1543_3364>
				<div class="e1543_3365"></div>
				<div class="e1543_3367"></div>
			</div>
			<div class=e1543_3368>
				<span class="e1543_3370">${sub19bllist[1].pro_name} X 3</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[1].pro_no}"
					class=e1543_3371 style="cursor: pointer;"> <span
					class="e1543_3372">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1543_3373>
			<div class=e1543_3374>
				<div class="e1543_3375"></div>
				<div class="e1543_3377"></div>
			</div>
			<div class=e1543_3378>
				<span class="e1543_3380">${sub19bllist[2].pro_name}X 3</span> <a
					href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[2].pro_no}"
					class=e1543_3381 style="cursor: pointer;"> <span
					class="e1543_3382">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1543_3383>
			<div class=e1543_3384>
				<div class=e1543_3385>
					<div class="e1543_3386"></div>
					<div class="e1543_3388"></div>
				</div>
				<div class=e1543_3389>
					<span class="e1543_3391">${sub19bllist[3].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[3].pro_no}"
						class=e1543_3392 style="cursor: pointer;"> <span
						class="e1543_3393">자세히보기</span>
					</a>
				</div>
			</div>
			<div class=e1543_3394>
				<div class=e1543_3395>
					<div class="e1543_3396"></div>
					<div class="e1543_3398"></div>
				</div>
				<div class=e1543_3399>
					<span class="e1543_3401">${sub19bllist[4].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[4].pro_no}"
						class=e1543_3402 style="cursor: pointer;"> <span
						class="e1543_3403">자세히보기</span>
					</a>
				</div>
			</div>
			<div class=e1543_3404>
				<div class=e1543_3405>
					<div class="e1543_3406"></div>
					<div class="e1543_3408"></div>
				</div>
				<div class=e1543_3409>
					<span class="e1543_3411">${sub19bllist[5].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub19bllist[5].pro_no}"
						class=e1543_3412 style="cursor: pointer;"> <span
						class="e1543_3413">자세히보기</span>
					</a>
				</div>
			</div>
		</div>
		<a href="${cpath}/wallet/pay.do" class=e1543_3415
			style="cursor: pointer;"> <span class="e1543_3416">구독하기</span>
		</a>
	</div>

</body>
</html>