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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/myPageStyle.css?d"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body style="width: 100%">
	<div class=e69_166>
		<div class="e69_167">

			<c:choose>
				<c:when
					test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
					<div class="e69_169"
						style="background-image: url(${cpath}/${mem.mem_image});"></div>
				</c:when>
				<c:otherwise>
					<div class="e69_169"
						style="background-image: url(${cpath}/resources/upload/${mem.mem_image}); "></div>
				</c:otherwise>
			</c:choose>

			<div class=e69_168>
				<span class="e69_170">${mem.mem_name }</span>
			</div>
			<div class=e69_219>
				<div class=e69_220>
					<span class="e69_221">추천인 코드</span> <a href="${cpath}/my/myMenu.do"
						class="e72_340"></a> <a href="${cpath}/my/myMenu.do"
						class="myinfo">내정보</a> <span class="e69_223">${mem.mem_code }</span>
					<div class="e69_224"></div>
					<div class="e69_225"></div>
					<div class="e69_230"></div>
					<span class="e69_229">LV.${mem.mem_grade }</span>
				</div>


			</div>
		</div>

	</div>


	<!--  <div class="e69_169"></div> -->



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
									<a class="header-a"
										href="${pageContext.request.contextPath}/my/myPage.do"
										style="font-weight: bold; left: -1rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_name}" /> 님 |
									</a>
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
							</div>
						</div>
					</div>
				</div>
			</header>

	<span class="e69_320">회원등급</span>
	<span class="mypage-title">마이페이지</span>
	<div class=e69_172>
		<div class=e69_173>
		 		<a class=e69_180 href= "${cpath }/my/familyReg.do">
					<div class=e69_175>
						<span class="e69_176">친구등록</span><span class="e69_177">Check
							your personalized favorites and wishlist</span>
					</div>
					<div class="e72_336"></div>
				</a> 

			<!-- <div class=e69_180>
				<div class=e69_181>
					<span class="e69_176" style="top: -30px;">친구초대</span> <span
						class="e69_182">Register and check your list of friends and
						acquaintances to discover various benefits</span>
				</div>

				<div class="e72_334"></div>
			</div> -->

			<a class=e69_186 href="${cpath }/my/pointAndCoupon.do">
				<div class=e69_187>
					<span class="e69_176">찜 / 포인트 및 쿠폰</span><span class="e69_189">Enjoy
						various benefits through points and coupons</span>
				</div>
				<div class="e72_332"></div>
			</a>
			
			<a class=e69_195 href="${cpath }/my/orderDetails.do">
				<div class=e69_196>
					<span class="e69_176">주문/결제 내역</span><span class="e69_198">Manage
						taxpayer information and tax documents</span>
				</div>
				<div class="e72_330"></div>
			</a>
			
<!-- 			<div class=e69_201>
				<div class=e69_202>
					<span class="e69_176">배송 내역/조회</span><span class="e69_204">Check
						and view your delivery history</span>
				</div>
				<div class="e72_322"></div>
			</div> -->
<!-- 			<div class=e69_208>
				<div class=e69_209>
					<span class="e69_176">구독변경 및 구독멈추기</span><span class="e69_211">Modify
						or pause your subscription</span>
				</div>
				<div class="e72_326"></div>
			</div> -->
			<!-- <div class=e69_214>
				<div class=e69_215>
					<span class="e69_176">나의 구독 내역</span><span class="e69_217">Experience
						the joy of subscribing to Dosirak from Gudalok and enjoy</span>
				</div>
				<div class="e72_328"></div>
			</div> -->
		</div>
	</div>

	<footer class="footer" style="top: 47rem;">
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





</body>


<script type="text/javascript">
//장바구니 
function loginBasket() {
		var mem_id = "${sessionScope.loginmem.mem_id}";

		// 로그인 여부 확인
		if (mem_id == "") {
			alert("로그인이 필요한 서비스입니다 !");
			window.location.href="${cpath}/login/loginForm.do";
			return;
		} else {
			window.location.href="${pageContext.request.contextPath}/wallet/basket.do";
		}
}

window.onload = emptyBasket;

function emptyBasket() {
	var mem_id = "${sessionScope.loginmem.mem_id}";

			$.ajax({
				type : "POST",
				url : "${cpath}/wallet/emptyBasket.do",
				data : {
					mem_id : mem_id,
				},
				dataType : "json",
				success : function(response) {
					if (response.success) {
						console.log("콘솔 - 상품이 이미 장바구니에 존재합니다! - 불키자");
						lightsOn();
					} else {
						console.log("콘솔 - 상품이 장바구니에 없음 - 불꺼");
					}
				}
		});
}

// 장바구니 불켜기
function lightsOn() {
	let lights = document.createElement("div");
	lights.setAttribute("class","ellipse-light");
	lights.setAttribute("id","lightsOnID");
	document.querySelector("#lightsParent").append(lights);

	console.log("장바구니 가득 차서 불 켜짐!");
}
</script>
</html>