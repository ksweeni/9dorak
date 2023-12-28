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
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/myPointStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div class=e169_509>
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

		<div class=e169_633>
			<span class="e169_634">나의 포인트</span><span class="e169_635">나의
				포인트</span>
			<div class="e169_636"></div>
			<span class="e169_637">보유한 포인트 및 쿠폰</span>
		</div>
		<div class=e169_521>
			<div class=e169_527>
				<div class=e169_528>
					<div class=e169_584>
						<div class=e169_586>
							<span class="e169_587">현재 고객님의 포인트 </span><span class="e169_588">${ loginmem.mem_point}점</span>
							<div class="e169_639"></div>
						</div>
					</div>

					<div class=e198_349>


						<c:forEach var="item" items="${elist}">
							<div class="e198_351">
								<div class="e198_352">
									<div class="e198_353">
										<span class="e198_354">적립</span><span class="e198_355">${item.point_date}</span>
									</div>
									<div class="e198_356">
										<span class="e198_357">${item.point}P</span><span
											class="e198_358">[구도락 챌린지] ${item.point_name}</span>
									</div>
								</div>
							</div>
						</c:forEach>


					</div>
				</div>
				<span class="e198_346">적립 및 사용 내역</span>
			</div>
			<div class=e169_532>
				<div class=e169_533>
					<span class="e169_534">${ loginmem.mem_name}</span><span
						class="e169_535">LV.${ loginmem.mem_grade}</span>
					<!-- <div class="e169_536"></div> -->
					<!-- 프로필 테스트 -->
					<c:choose>
						<c:when
							test="${sessionScope.loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
							<div class="e169_536"
								style="background-image: url(${cpath}/${sessionScope.loginmem.mem_image});"></div>
						</c:when>
						<c:otherwise>
							<div class="e169_536"
								style="background-image: url(${cpath}/resources/upload/${sessionScope.loginmem.mem_image}); "></div>
						</c:otherwise>
					</c:choose>
					<!--  -->
				</div>
				<div class=e169_537>
					<div class=e169_538>
						<span class="e169_539">찜 목록</span>
					</div>
					<div class=e169_626>
						<span class="e169_627">쿠폰 목록</span>
					</div>
					<div class=e169_624>
						<span class="e169_625">나의 포인트</span>
					</div>
				</div>
			</div>
		</div>

		<footer class="footer" style="top: 90rem;">
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
</body>
<script>
	$(".e169_538").on("click", function() {
		$.ajax({
			url : "${cpath}/my/pointAndCoupon.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		});
	})
	$(".e169_626").on("click", function() {

		$.ajax({
			url : "${cpath}/my/coupon_ajax.do",
			type : "get",
			success : function(res) {
				$("body").html(res);

			}
		}) // ajax

	})
	
	// 장바구니 
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