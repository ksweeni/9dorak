<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/sub9detailStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="screen"></div>

	<div class=e1537_3002>
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
		<div class=e1547_3717>
			<span class="e1547_3718"><b>이번달 배부르9 메뉴</b>
			<div class="babul"></div></span>
		</div>
		<span class="e1547_3780">B 메뉴</span>

		<div class=e1547_3750>
			<div class=e1547_3751>
				<div class=e1547_3752>
					<div class="e1547_3753"></div>
					<img class="e1547_3755"
						src="${cpath}/resources/images/menu/proimage/${sub9bllist[0].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3756>
					<span class="e1547_3788">${sub9bllist[0].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9bllist[0].pro_no}"
						class="detail-a"><span class="e1547_3731">자세히보기</span> </a>
				</div>
			</div>
			<div class=e1547_3760>
				<div class=e1547_3761>
					<div class="e1547_3762"></div>
					<img class="e1547_3764"
						src="${cpath}/resources/images/menu/proimage/${sub9bllist[1].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3765>
					<span class="e1547_3790">${sub9bllist[1].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9bllist[1].pro_no}"
						class="detail-a"><span class="e1547_3740">자세히보기</span> </a>
				</div>
			</div>
			<div class=e1547_3769>
				<div class=e1547_3770>
					<div class="e1547_3771"></div>
					<img class="e1547_3773"
						src="${cpath}/resources/images/menu/proimage/${sub9bllist[2].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3774>
					<span class="e1547_3747">${sub9bllist[2].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9bllist[2].pro_no}"
						class="detail-a"><span class="e1547_3749">자세히보기</span> </a>
				</div>
			</div>
		</div>
		<a href="${cpath}/wallet/sub9b.do" class=e1547_3778
			style="cursor: pointer;"> <span class="e1547_3785">구독하기</span>
		</a>
		<div class=e1547_3786>
			<span class="e1547_3719">A 메뉴</span>
			<div class=e1547_3723>
				<div class=e1547_3724>
					<div class="e1547_3725"></div>
					<img class="e1547_3727"
						src="${cpath}/resources/images/menu/proimage/${sub9allist[0].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3728>
					<span class="e1547_3729">${sub9allist[0].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9allist[0].pro_no}"
						class="detail-a"><span class="e1547_3731">자세히보기</span> </a>
				</div>
			</div>
			<div class=e1547_3732>
				<div class=e1547_3733>
					<div class="e1547_3734"></div>
					<img class="e1547_3736"
						src="${cpath}/resources/images/menu/proimage/${sub9allist[1].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3737>
					<span class="e1547_3738">${sub9allist[1].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9allist[1].pro_no}"
						class="detail-a"><span class="e1547_3740">자세히보기</span> </a>
				</div>
			</div>
			<div class=e1547_3741>
				<div class=e1547_3742>
					<div class="e1547_3743"></div>
					<img class="e1547_3745"
						src="${cpath}/resources/images/menu/proimage/${sub9allist[2].pro_no}-2.jpg"></img>
				</div>
				<div class=e1547_3746>
					<span class="e1547_3799">${sub9allist[2].pro_name} X 3</span> <a
						href="${cpath}/menu/menuSpecificReview.do?pro_no=${sub9allist[2].pro_no}"
						class="detail-a"><span class="e1547_3749">자세히보기</span> </a>
				</div>
			</div>
			<a href="${cpath}/wallet/sub9a.do" class=e1547_3784
				style="cursor: pointer;"><span class="e1547_3785">구독하기</span> </a>
		</div>
	</div>
	<footer class="footer" style="top: 135rem;">
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
			window.location.href = "${cpath}/login/loginForm.do";
			return;
		} else {
			window.location.href = "${pageContext.request.contextPath}/wallet/basket.do";
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
		lights.setAttribute("class", "ellipse-light");
		lights.setAttribute("id", "lightsOnID");
		document.querySelector("#lightsParent").append(lights);

		console.log("장바구니 가득 차서 불 켜짐!");
	}
</script>
</html>