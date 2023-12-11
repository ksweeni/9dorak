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
<link rel="stylesheet" href="${cpath}/resources/css/basketStyle.css"
	type="text/css" />
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
			<div class="account-navigation">
				<div class="ol">
					<div class="frame-22">
						<div class="text-wrapper-20">회원등급</div>
					</div>
				</div>
				<div class="text-wrapper-21">장바구니</div>
			</div>
			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-wrapper-22">이벤트</div>
						<div class="text-wrapper-23">메뉴보기</div>
						<div class="text-wrapper-24">구독하기</div>
						<div class="text-wrapper-25">요모조모</div>
						<div class="text-wrapper-26">도란도란</div>
					</div>
					<div class="div-2">
						<div class="text-wrapper-27">로그인 | 회원가입</div>
						<div class="overlap-group-wrapper">
							<div class="overlap-group">
								<img class="group-3" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-28">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			
			
			
			
			
			<p>Mem ID: ${mem_id}</p>
    <p>Product Number: ${pro_no}</p>
    <p>Product Name: ${pro_name}</p>
			
			<!-- 
			
				<p>${chall}</p>
	상품명 : <input type="text" value="${chall.challenge_name}" id="challenge_name"></input>
	<br>
	 상품 갯수 : <input type="text" value="${chall.challenge_cont}" id="challenge_cont"></input>
	<br>
	 상품 등록날짜 :
	<input type="text" value="${chall.challenge_date}" id="challenge_date"></input>
	<br>
	 상품 고유 번호 :
	<input type="text" value="${likeCnt}" readonly="readonly" id="likeCnt"></input>
	<br>
	<br>
	<br>

	<button id="update">수정</button>
	<button id="delete">삭제</button>
			
			 -->
			
			
			
			
			
			
			
			
			
			<div class="overlap-wrapper">
				<div class="overlap">
					<footer class="footer">
						<div class="company-loco">
							<div class="company">
								<p class="text-wrapper-29">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요 우리는
									홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
							</div>
							<div class="social-icon">
								<div class="facebook">
									<img class="mask-group" src="img/mask-group-3.png" />
								</div>
								<div class="instagram">
									<img class="mask-group-2" src="img/mask-group-4.png" />
								</div>
								<div class="twitter">
									<img class="mask-group-3" src="img/mask-group-2.png" />
								</div>
								<div class="linkind">
									<img class="mask-group-3" src="img/mask-group.png" />
								</div>
							</div>
						</div>
						<div class="contact-us">
							<div class="text-wrapper-30">Contact Us</div>
							<div class="group-4">
								<div class="text-wrapper-31">03744 22 Hongdae st.,</div>
								<div class="text-wrapper-32">Seodaemun-gu, Seoul, Korea</div>
								<div class="text-wrapper-33">+82 10 8282 8282</div>
							</div>
							<div class="group-5">
								<div class="overlap-group-2">
									<div class="vector-wrapper">
										<img class="vector" src="img/vector.svg" />
									</div>
									<div class="text-wrapper-34">Enter your email....</div>
								</div>
							</div>
						</div>
						<div class="user-link">
							<div class="text-wrapper-35">User Link</div>
							<div class="group-6">
								<div class="text-wrapper-31">About Us</div>
								<div class="text-wrapper-32">Contact Us</div>
								<div class="text-wrapper-33">Order Delivery</div>
								<div class="payment-tex">Payment &amp; Tex</div>
								<div class="text-wrapper-36">Terms of Services</div>
							</div>
						</div>
						<div class="opening-restaurant">
							<div class="text-wrapper-35">Opening Hours</div>
							<div class="group-7">
								<div class="text-wrapper-31">Sat-Wet: 09:00am-10:00PM</div>
								<div class="text-wrapper-32">Thursdayt: 09:00am-11:00PM</div>
								<div class="text-wrapper-33">Friday: 09:00am-8:00PM</div>
							</div>
						</div>
					</footer>
					<img class="image" src="img/image-2-1.png" />
				</div>
			</div>
			<img class="image-2" src="img/image-63.png" />
		</div>
	</div>
</body>
</html>
