<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/challengeLunchboxStyle.css?d" type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
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
	<div class="element">
			<div class="frame">
				<div class="group">
					<div class="overlap">
						<!--  action path 수정할 것! -->
						<form action="${cpath}/event/insertrecipeChal.do" method="post"
							enctype="multipart/form-data">
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<div class="input-wrapper">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<!-- <div class="text-wrapper">도시락 이름은 무엇인가요?</div> -->
												</div>
											</div>
											<input class="container-default" type="text"
												name="challenge_name" placeholder="귀여운 나만의 도시락 이름을 지어주세요!" />
										</div>
									</div>
									
									<div class="group-2">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<!-- <div class="text-wrapper">도시락 레시피를 알려주세요</div> -->
												</div>
											</div>
											<textarea class="container-default" type="text" id="recipe"
												name="challenge_recipe" placeholder="나만의 도시락 레시피를 자세히 적어주세요!" ></textarea>
										</div>
									</div>
									
									<div class="div-wrapper">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<!-- <div class="text-wrapper">간단한 한 줄 소개 부탁드려요</div> -->
												</div>
											</div>

											<input class="container-default" type="text"
												name="challenge_cont"
												placeholder="나만의 도시락을 가장 잘 나타낼 수 있게 한 줄로 소개해주세요!!" />
										</div>
									</div>
									
								</div>
							</div>
							<div class="frame-wrapper">
								<div class="input">
									<div class="bottom">
										<!-- 파일 선택 -->
										<div class="label-check">
											<!-- <div class="text-wrapper">도시락을 설명하는 사진이나 그림을 올려주세요</div> -->
										</div>
										<div class="herere">
										<label class="fileUpload" for="singleFile" onmousedown="handleMouseDown(event)">파일 선택</label> 
										<input type="file" name="singleFile" id="singleFile" style="display: none;" />
										<div class="inhere">
										<span id="selectedFileName"></span>
										</div>
										</div>
									</div>
								</div>
								<br>
								<br>
								<br>
									<!-- 취소버튼 -->
									<button type="reset" class="reset-button"
										value="내용 초기화">reset</button>

									<!-- 글쓰기 버튼 -->
									<button type="submit" class="upload-button">글쓰기</button>
							</div>
						</form>
					</div>
					<div class="frame-2">
						<div class="frame-3">
							<div class="frame-4">
								<div class="text-wrapper-2">나만의 도시락</div>
								<img class="makedosirak" src="${cpath }/resources/images/event/makedosirak.png" />
							</div>
						</div>
					</div>
				</div>
			</div>
		<div id="event_menu">
			<ul>
				<li><a
				href="${pageContext.request.contextPath}/event/challenge.do"
				>챌린지 ZONE</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/freelunchbox.do">도시락
						무료 체험</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/makelunchbox.do">도시락
						만들9</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendreco.do">친구
						추천</a></li>
				<li><a
					href="${pageContext.request.contextPath}/event/friendadd.do">친구
						추가</a></li>
			</ul>
		</div>
	</div>
				<footer class="footer" style="top:90rem;">
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
	<script>
	function handleMouseDown(event) {
	    event.preventDefault();
	    var fileInput = document.getElementById("singleFile");
	    fileInput.click();
	}
	document.addEventListener("DOMContentLoaded", function() {
	    var fileInput = document.getElementById("singleFile");
	    var selectedFileNameSpan = document.getElementById("selectedFileName");

	    fileInput.addEventListener("change", function() {
	        if (fileInput.files.length > 0) {
	            selectedFileNameSpan.textContent = fileInput.files[0].name;
	        } else {
	            selectedFileNameSpan.textContent = "";
	        }
	        console.log("File selected:", fileInput.files[0].name);
	    });
	});
	
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
</body>
</html>
