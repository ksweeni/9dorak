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
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/doranUploadStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
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

			<div class="frame">
				<div class="group">
					<form action="${cpath}/doran/doranUpload.do" method="post"
						enctype="multipart/form-data">
						<div class="overlap">
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<!-- 게시 내용 입력 -->
									<div class="doranTitleBox">
										<textarea id="doranTitle" placeholder="제목을 입력해보세요"
											name="doran_title"></textarea>
									</div>
									<div class="doranContBox">
										<textarea id="doranCont" placeholder="자유롭게 입력해보세요"
											name="doran_cont"></textarea>
									</div>
									<div class="upload-field">
										<div class="type-n">
											<img class="feather-upload-cloud"
												src="${cpath }/resources/images/doran/doran_uploadcloud.png" />
											<div class="bottom-content">
												<div class="description">
													<p class="text-wrapper">Select a file or drag and drop
														here</p>
													<p class="p">JPG, PNG or PDF, file size no more than
														10MB</p>
												</div>
												​
												<!-- 버튼 클릭 시 파일첨부 테스트 -->
												<input type="file" id="fileInput" name="singleFile">
												<!-- 멀티파트 객체로 singleFile이 넘어간다 -->
												​
											</div>
											
										</div>
									
									</div>
									
									​ ​
									
									<div class="button-group-wrapper">
										<div class="button-group">
											<button class="cancel-wrapper">
												<div class="cancel">취소하기</div>
											</button>
											<button class="upload-wrapper" type="submit">
												<div class="upload">업로드</div>
											</button>
										</div>
									</div>
									​
								</div>
							</div>
							<div class="frame-wrapper">
								<div class="frame-2">
									<div class="frame-3">
										<div class="text-wrapper-2">글 작성하기</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="group-9">
				<div class="group-10">
					<div class="overlap-group-4">
						<div class="card">
							<div class="frame-4">
								<div class="ellipsis">
									<img class="ellipsis-img"
										src="${cpath }/resources/images/doran/doran_logo.png" />
								</div>
							</div>
							<div class="tab">
								<button id="doran" class="text-wrapper-17"
									onclick="getData('doran')">도란도란</button>
							</div>
							<div class="tab-2">
								<button id="myDoran" class="text-wrapper-18"
									onclick="getData('myDoran')">내가 쓴 글</button>
							</div>
						</div>
						<div class="text-wrapper-19">도란도란</div>
					</div>
				</div>
			</div>

			<div class="group-15">
				<div class="group-16">
					<div class="group-17">
						<div class="div-2">
							<div class="doran-profile">
								<c:choose>
									<c:when
										test="${loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
										<div class="doran-profile-photo">
											<img class="doran-profile-photoImg"
												src="${cpath }/resources/images/my/baseProfile.png" />
										</div>
									</c:when>
									<c:when test="${empty loginmem }">
										<div class="doran-profile-photo">
											<img class="doran-profile-photoImg"
												src="${cpath }/resources/images/my/baseProfile.png" />
										</div>
									</c:when>
									<c:otherwise>
										<div class="doran-upload-profilPhoto">
											<img class="doran-upload-profilPhotoImg"
												src="${cpath}/resources/upload/${loginmem.mem_image}" />
										</div>
									</c:otherwise>
								</c:choose>
								<div class="doran-profile-info">
									<div class="doran-profile-info-memname">${sessionScope.loginmem.mem_name}</div>
									<div class="doran-profile-info-grade">
										<div class="doran-profile-info-lv">LV.</div>
										<div class="doran-profile-info-memgrade">${sessionScope.loginmem.mem_grade}</div>
									</div>
								</div>
								<div class="doran-profile-point">
									<div class="info-point">
										<div>보유한포인트</div>
										<div>${sessionScope.loginmem.mem_point}</div>

									</div>

									<div class="progress-div">
										<progress id="progress" class="overlap-group-3" id="progress"
											value="${sessionScope.loginmem.mem_point}" min="0" max="324"></progress>
									</div>

								</div>
								<button class="doran-button-frofile-setting">
									<span>프로필 설정하기</span>
								</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
				<footer class="footer" style="top:30rem;">
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
	<!-- div-wrapper -->
</body>
<script type="text/javascript">
	$(".doran-button-frofile-setting").on("click", function() {
		location.href = "${cpath}/my/myMenu.do";
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
