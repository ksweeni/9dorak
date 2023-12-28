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
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/myLevelStyle.css?d"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<div class="full-name-and-bio">
				<img class="ellipse" src="${cpath}/resources/images/test.png" />
				<div class="text-wrapper">나는 수이니</div>
				
				
			</div>
			<div class="personal-info">
				<div class="group">
					<div class="group-2">
						<img class="image" src="${cpath}/resources/images/my/level_1.png" />
						<p class="div-2">
							<span class="span">이번 달 등급은 </span> <span class="text-wrapper-3">낑깡</span>
							<span class="span">이에요</span>
						</p>
					</div>
					<p class="text-wrapper-4">기본 혜택을 받을 수 있어요!</p>
				</div>
			</div>
			<div class="group-wrapper">
				<div class="group">
					<div class="group-3">
						<img class="img" src="${cpath}/resources/images/my/level_1.png" />
						<p class="div-2">
							<span class="span">다음 달 예상 등급은 </span> <span
								class="text-wrapper-3">낑깡</span> <span class="span">이에요</span>
						</p>
					</div>
					<p class="text-wrapper-4">기본 혜택을 받을 수 있어요!</p>
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
						<div class="footer-text-wrapper-3">Thursday: 09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>

			<div class="account-navigation">
				<div class="ol">
					<div class="frame">
						<div class="text-wrapper-13">회원등급</div>
					</div>
				</div>
				<div class="text-wrapper-14">회원등급</div>
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
										<c:out value="${sessionScope.loginmem.mem_name}" /> 님 |
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
							</div>
						</div>
					</div>
				</div>
			</header>
			<div class="overlap-wrapper">
				<div class="overlap">
					<div class="personal-info-2">
						<img class="image-2" src="${cpath}/resources/images/my/level_2.png" />
						<div class="text-wrapper-22">귤</div>
						<div class="text-wrapper-23">구독 1회 이상</div>
						<img class="image-3" src="${cpath}/resources/images/my/level_3.png" />
						<div class="text-wrapper-24">오렌지</div>
						<p class="text-wrapper-25">구독 5회 이상 또는 누적 결제 금액 25만원</p>
						<div class="text-wrapper-26">등급별 혜택 안내</div>
						<img class="line" src="${cpath}/resources/images/my/level_line.png"" /> <img class="line-2"
							src="${cpath}/resources/images/my/level_line.png" /> 
						<img class="line-3" src="${cpath}/resources/images/my/level_line.png" />
						<div class="text-wrapper-27">기본등급</div>
						<div class="text-wrapper-level1">낑깡</div>
						<img class="image-4" src="${cpath}/resources/images/my/level_1.png" />
						<div class="text-wrapper-29">한라봉</div>
						<p class="text-wrapper-30">구독 9회 이상 또는 누적 결제 금액 50만원</p>
						<img class="image-5" src="${cpath}/resources/images/my/level_4.png" />
					</div>
					<p class="element">
						<span class="text-wrapper-31">결제 금액의</span> 
							<span
							class="text-wrapper-33">0.5%</span> <span class="text-wrapper-31">
							적립</span>
					</p>
					<p class="element-2">
						<span class="text-wrapper-31">결제 금액의 </span> <span
							class="text-wrapper-33">1%</span> <span class="text-wrapper-31">
							적립</span>
					</p>
					<p class="element-3">
						<span class="text-wrapper-31">결제 금액의 </span> <span
							class="text-wrapper-33">2%</span> <span class="text-wrapper-31">
							적립</span>
					</p>
					<p class="element-4">
						<span class="text-wrapper-31">결제 금액의 </span> <span
							class="text-wrapper-34">3%</span> <span class="text-wrapper-31">
							적립</span>
					</p>
				</div>
			</div>
		</div>
	</div>
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
