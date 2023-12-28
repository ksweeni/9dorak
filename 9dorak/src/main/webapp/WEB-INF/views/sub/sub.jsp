<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/subStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="screen">
		<div class=e1518_2324>
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
	</div>
		<div class="e1543_9999">
		<span class="e1543_3020">원하는 구독 서비스를 선택하세요</span><span
			class="e1543_3021">1) 한 달에 한 번 도시락이 배송됩니다.</span><span
			class="e1567_2322">3) 구독은 언제든지 변경 또는 해지 가능합니다.</span>
			<span
			class="e1567_2321">2) 취향에 맞는 메뉴를 선택하시면 됩니다.</span>
			<span
			class="e1567_23215">4) 각각의 구독하기를 눌러보세요 !</span>
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
		<footer class="footer" style="top:135rem;">
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