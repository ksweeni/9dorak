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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/myDelivery_ajaxStyle.css?s"
	type="text/css" />
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<style>
</style>
</head>
<body>
	<div class="e128_186">

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

		<div class="e128_198">
			<div class="e128_218">
				<c:if test="${empty dlist}">
					<p>등록된 배송지가 없습니다.</p>
				</c:if>
				<c:forEach var="item" items="${dlist}">
					<div class="e126_328">
						<div class="e126_327">
							<div class="e126_320">
								<span class="e126_322">${item.mem_delname}</span> <span
									class="e126_325">${item.mem_addr}</span>
							</div>
							<div class="e128_274"
								onclick="deleteItem('${item.mem_delname}');">
								<span class="e128_275">삭제</span>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="e128_278">
					<!-- <span class="e128_279">배송지 추가</span> -->
					<c:if test="${dlist.size() == 3}">
						<a class="e128_279" id="fulldlist">배송지 추가</a>
					</c:if>
					<c:if test="${dlist.size() != 3}">
						<%-- 						<a class="e128_279" href="#none"
							onclick="window.open('${cpath}/my/selectDelivery.do','new','scrollbars=yes,resizable=no width=700 height=200, left=0,top=0');return false">배송지추가</a> --%>
						<a href="#"
							onclick="openModal('my_modal', '${cpath}/my/selectDelivery.do')"
							class="e128_279" style="position: relative;">배송지추가</a>
					</c:if>
				</div>
			</div>
		</div>

		<div class=e125_209>
			<div class=e125_210>
				<span class="e125_211">${mem.mem_name }</span><span class="e125_212">LV.${mem.mem_grade }</span>
				<!-- <div class="e125_213"></div> -->
				<c:choose>
					<c:when
						test="${sessionScope.loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
						<div class="e125_213"
							style="background-image: url(${cpath}/${sessionScope.loginmem.mem_image});"></div>
					</c:when>
					<c:otherwise>
						<div class="e125_213"
							style="background-image: url(${cpath}/resources/upload/${sessionScope.loginmem.mem_image}); "></div>
					</c:otherwise>
				</c:choose>
			</div>
			<div class=e125_214>
				<div class=e125_219>
					<span class="e125_220">내 정보 수정</span>
				</div>
				<!-- <div class=e125_217>
					<span class="e125_218">환불 계좌 관리</span>
				</div> -->
				<div class=e125_281>
					<span class="e125_282">배송지 관리</span>
				</div>
				<!-- <div class=e125_221>
					<span class="e125_222">알림 수신 관리</span>
				</div> -->
			</div>
		</div>
		<div class=e125_204>
			<span class="e125_205">배송지 관리</span> <span class="e125_206">배송지
				관리</span>
			<div class="e125_207"></div>
			<span class="e125_208">내 정보</span>
		</div>

	</div>
	<!-- e128_186 -->

	<div id="my_modal" class="modal"
		style="position: relative; display: none">
		<!-- 모달 내용 -->
		<span class="modal_close_btn">×</span>
		<iframe id="modal_content" frameborder="0" width="100%" height="200px"></iframe>
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

</body>
<script>
	$(".e125_219").on("click", function() {
		$.ajax({

			url : "${cpath}/my/myMenu.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	}) // 내정보 수정 ajax
	function deleteItem(delname) {
		//alert(delname);
		var param = {

			"mem_delname" : delname
		};
		$.ajax({

			url : "${cpath}/my/deleteDelivery.do",
			type : "post",
			data : param,
			success : function(res) {
				alert("삭제되었습니다");
				$("body").html(res);
			}

		})
	}

	$("#fulldlist").on("click", function() {
		alert("3개까지 등록 가능합니다.");

	})

	var modal = document.getElementById("my_modal");
	function openModal(modalId, pageUrl) {
		modal = document.getElementById(modalId);

		// 모달 열기
		modal.style.display = 'block';

		// 모달 내용 로드 (AJAX 또는 iframe을 사용할 수 있습니다)
		// iframe을 사용하는 예시:
		var iframe = modal.querySelector('iframe');
		iframe.src = pageUrl;
	}

	$(".modal_close_btn").on("click", function() {
		var modal = $("#my_modal");
		modal.hide();

		$.ajax({

			url : "${cpath}/my/myDelivery.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})

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