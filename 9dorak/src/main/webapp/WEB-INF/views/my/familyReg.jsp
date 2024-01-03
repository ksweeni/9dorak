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
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?s"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/familyRegStyle.css?s"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<style>
.e178_741 {
	width: 40px;
	height: 40px;
	position: absolute;
	left: 333px;
	top: 15px;
	background-image: url(${cpath}/resources/images/my/myimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}
.e178_738 {
	width: 77.26097869873047px;
	height: 50.37036895751953px;
	position: absolute;
	left: 70.26953125px;
	top: 367px;
	background-image: url(${cpath}/resources/images/my/image_6.png);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<body>
	<div class=e178_596>

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


		<div class=e178_608>
			<div class=e178_609>
				<span class="e178_610">친구 등록</span><span class="e178_611">친구
					등록</span>
				<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10"
					viewBox="0 0 6 10" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
						d="M0.38408 0.949976C0.332645 0.898177 0.291917 0.836754 0.264221 0.769215C0.236524 0.701676 0.222402 0.629342 0.22266 0.556345C0.222918 0.483348 0.237551 0.411116 0.265724 0.343775C0.293897 0.276433 0.335058 0.215299 0.386858 0.163865C0.438657 0.112431 0.50008 0.0717024 0.567619 0.0440059C0.635158 0.0163094 0.707491 0.00218694 0.780489 0.00244488C0.853486 0.00270282 0.925717 0.0173361 0.993059 0.0455092C1.0604 0.0736823 1.12153 0.114844 1.17297 0.166643L5.61741 4.61109C5.72089 4.71518 5.77896 4.85598 5.77896 5.00275C5.77896 5.14952 5.72089 5.29033 5.61741 5.39442L1.17297 9.83886C1.12153 9.89066 1.0604 9.93182 0.993059 9.96C0.925717 9.98817 0.853486 10.0028 0.780489 10.0031C0.707491 10.0033 0.635158 9.9892 0.567619 9.9615C0.50008 9.93381 0.438657 9.89308 0.386858 9.84164C0.335058 9.79021 0.293897 9.72908 0.265724 9.66173C0.237551 9.59439 0.222918 9.52216 0.22266 9.44916C0.222402 9.37617 0.236524 9.30383 0.264221 9.23629C0.291917 9.16875 0.332645 9.10733 0.38408 9.05553L4.43408 5.00553L0.38408 0.949976Z"
						fill="#767676" />
</svg>
				<span class="e178_613">마이페이지</span>
			</div>
			<div class=e178_614>
				<div class=e178_615>
					<div class=e178_739>
						<span class="e178_740" onclick="copyCode()">코드 복사</span>
					</div>
					<!-- 	<div class="e178_728"></div> -->
					<!-- 프로필 테스트  -->
					<c:choose>
						<c:when
							test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
							<div class="e178_728"
								style="background-image: url(${cpath}/${mem.mem_image});"></div>
						</c:when>
						<c:otherwise>
							<div class="e178_728"
								style="background-image: url(${cpath}/resources/upload/${mem.mem_image}); "></div>
						</c:otherwise>
					</c:choose>


					<!--  -->
					<span class="e178_729">${mem.mem_name }</span>
					<div class="e178_738"></div>
					<span class="e178_737">LV.${mem.mem_grade }</span>
					<div class=e178_731>
						<span class="e178_732">추천인 코드</span><span class="e178_733">내정보</span>
						<span class="e178_734" id="codeToCopy">${mem.mem_code }</span>
						<div class="e178_735"></div>
						<div class="e178_736"></div>
						<a class="e178_741" href="${cpath}/my/myMenu.do"></a>
					</div>
					<div class=e178_713>
						<span class="e178_726">가족</span>
					</div>
					<span class="e178_717">친구</span>


					<div class=e178_718>
						<div class=e178_719>
							<span class="e178_720" onclick="registerPeople('가족')">가족
								코드 등록</span>
						</div>
						<input type="text" class="e178_721" id="people_code1" />
					</div>
					<div class=e178_722>
						<div class=e178_723>
							<span class="e178_724" onclick="registerPeople('친구')">친구
								코드 등록</span>
						</div>
						<input type="text" class="e178_725" id="people_code2" />
					</div>
				</div>
			</div>
			<div class=e178_629>
				<div class=e178_630>
					<span class="e178_631">${mem.mem_name }</span><span
						class="e178_632">LV.${mem.mem_grade }</span>
					<!-- <div class="e178_633"></div> -->
					<c:choose>
						<c:when
							test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
							<div class="e178_633"
								style="background-image: url(${cpath}/${mem.mem_image});"></div>
						</c:when>
						<c:otherwise>
							<div class="e178_633"
								style="background-image: url(${cpath}/resources/upload/${mem.mem_image}); "></div>
						</c:otherwise>
					</c:choose>
				</div>
				<div class=e178_634>
					<div class=e178_639>
						<span class="e178_640">친구 등록</span>
					</div>
					<div class=e178_635>
						<a class="e178_636"
							href="${pageContext.request.contextPath}/my/familyList.do">친구
							목록 조회</a>
					</div>
				</div>
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

	</div>



</body>
<script>
	function registerPeople(category) {
		var people_code;
		if (category == "가족") {
			people_code = $("#people_code1").val();
		} else {
			people_code = $("#people_code2").val();
		}

		$.ajax({
			url : "${cpath}/my/insertPeople.do",
			data : {
				"mem_code" : people_code,
				"category" : category
			},
			success : function(responseData) {
				alert(responseData);
			}
		});

	}

	function copyCode() {
		var codeElement = document.getElementById("codeToCopy");
		var range = document.createRange();
		range.selectNode(codeElement);
		window.getSelection().removeAllRanges();
		window.getSelection().addRange(range);

		try {
			document.execCommand('copy');
			console.log('코드가 복사되었습니다.');
			alert("추천인코드가 복사되었습니다.")
		} catch (err) {
			console.error('코드 복사 실패:', err);
		}

		window.getSelection().removeAllRanges();
	}
	
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

	/*
	$(".e178_719").on("click", function() {
		//alert(people_code);
		$.ajax({
			url : "${cpath}/register/codeCheck.do",
			data : {
				mem_code : $("#people_code").val()
			},
			success : function(data) {
				if (data === "false") {
					alert("추천인 코드를 확인하세요");
				}

			}
		}) // 추천인 코드 존재 확인

	})*/
</script>

</html>