<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?e"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/doranStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<div class="screen">
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
									<span
										style="font-weight: bold; left: -1rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님 |
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
						<div class="group-20">
							<div class="header-overlap-group-3">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
								<div class="ellipse-light"></div>
								<!-- <div class="text-wrapper-29">2</div> -->
							</div>
						</div>
					</div>
				</div>
			</header>

			<div class="overlap-3">
				<div class="group-6">
					<div class="group-wrapper">
						<div class="doran-upload-profilPhoto">
							<img class="doran-upload-profilPhotoImg"
								src="${cpath}/resources/images/main/sandwich_lunchbox01.png" />
						</div>
						<div class="doran-upload-contents">
							<div class="doran-context">
								<input class="doran-context-title" id="doran-quick-title"
									type="text" placeholder="제목">
								<textarea placeholder="내용을 자유롭게 입력하세요!" id="doran-quick-content"></textarea>
							</div>
							<div class="upload-button-wrap">

								<button type="submit" class="doran-button-upload"
									onclick="quickUpload()">업로드</button>
							</div>
						</div>
					</div>
					<!-- group-wrapper -->
				</div>
				<!-- //group-6 -->
			</div>

			<div class="group-4">
				<div class="orderbyBtn">
					<form id="orderByForm">
						<input id="orderby_latest_button" class="orderby_latest"
							type="button" onclick="submitForm('latest')" value="최신순">
						<input class="orderby_views" type="button"
							onclick="submitForm('views')" value="조회순"> <input
							class="orderby_likes" type="button" onclick="submitForm('likes')"
							value="좋아요순">
					</form>
				</div>

				<div id="here">
					<!--data forEach -->
				</div>


			</div>
			<!-- group-4 -->

			<div class="group-12">
				<div class="group-13">
					<div class="div-2">
						<div class="card">
							<div class="ellipsis">
								<img class="ellipsis-img"
									src="${cpath }/resources/images/doran/doran_logo.png" />
							</div>
							<div class="tab">
								<button id="doran" class="text-wrapper-18"
									onclick="getData('doran')">도란도란</button>
							</div>
							<div class="tab-2">
								<button id="myDoran" class="text-wrapper-19"
									onclick="getData('myDoran')">내가 쓴 글</button>
							</div>

						</div>
						<div class="text-wrapper-20">도란도란</div>
					</div>
				</div>
				<div class="group-14">
					<div class="overlap-4">
						<input class=text-wrapper-21 id="searchTxt" type="text"
							placeholder="검색어를 입력하세요">
					</div>
					<div class="doran-search">
						<button class="doran-search-button" id="searchBtn"
							onclick="searchBtnClick()">
							<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15"
								viewBox="0 0 15 15" fill="none">
								<path
									d="M10.581 9.26619L14.4699 13.1551C14.833 13.5182 14.833 14.1068 14.4699 14.4699C14.1068 14.833 13.5182 14.833 13.1551 14.4699L9.26619 10.581C8.30427 11.2771 7.12193 11.6875 5.84375 11.6875C2.61634 11.6875 0 9.07116 0 5.84375C0 2.61634 2.61634 0 5.84375 0C9.07116 0 11.6875 2.61634 11.6875 5.84375C11.6875 7.12193 11.2771 8.30427 10.581 9.26619ZM5.84375 9.82812C8.04426 9.82812 9.82812 8.04426 9.82812 5.84375C9.82812 3.64324 8.04426 1.85938 5.84375 1.85938C3.64324 1.85938 1.85938 3.64324 1.85938 5.84375C1.85938 8.04426 3.64324 9.82812 5.84375 9.82812Z"
									fill="#F48E28" />
								</svg>
						</button>
					</div>
				</div>
			</div>
			<!-- group-12 -->

			<div class="group-15">
				<div class="group-16">
					<div class="group-17">
						<div class="div-2">

							<!-- 로그인 안되어 있으면 프로필 설정 안보이게 하기  -->
							<div class="doran-profile">
								<div class="doran-profile-photo">
									<img class="doran-profile-photoImg"
										src="${cpath }/resources/images/doran/test.png" />
								</div>
								<div class="doran-profile-info">
									<div class="doran-profile-info-memname">${sessionScope.loginmem.mem_id}</div>
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

				<form
					action="${pageContext.request.contextPath}/doran/doranUpload.do"
					method="get">
					<button type="submit" class="group-18">
						<div class="group-19">
							<img class="create"
								src="${cpath }/resources/images/doran/icon_darantext.png" />
							<div class="text-wrapper-22">글 작성하기</div>
						</div>
					</button>
				</form>
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
		<!-- div -->


		<script>
			var message = "${dlist}";
			var dlike = "${dlike}";
			var dcomment = "${dcomment}";
			const memPoint = "${memPoint}";

			console.log(memPoint);
			var doranProfile = document.querySelector('.doran-profile');
			var doranWriting = document.querySelector('.group-18');

			var memId = '${sessionScope.loginmem.mem_id}';
			console.log("회원아이디 : ", memId);
			if (memId == '') {
				doranProfile.style.display = 'none';
				doranWriting.style.display = 'none';
			}

			var cpath = "${cpath}";
			var dataForRadioButton = null; // Initialize with null

			// 시작할 때 default
			$(document).ready(function() {
				getData('latest');
				applyStylesToButton(".orderby_latest");
			});

			// 클릭된 정렬 버튼에 style 추가
			function applyStylesToButton(buttonClass) {
				$(".orderby_latest, .orderby_views, .orderby_likes").css({
					"font-size" : "",
					"font-weight" : "",
					"color" : "",
					"text-shadow" : "",
					"border-bottom" : ""
				});

				$(buttonClass).css({
					"font-size" : "1.2rem",
					"font-weight" : "bold",
					"color" : "black",
					"text-shadow" : "2px 2px 4px rgba(0, 0, 0, 0.5)",
					"border-bottom" : "3px solid #FFC670"
				});
			}

			function getData(dataFor) {

				// Check if the button is already active
				if ($("#" + dataFor).hasClass("active")) {
					console.log("Button already active. ID:", dataFor);
					return;
				}

				$(".tab button, .tab-2 button").removeClass("active");
				$("#" + dataFor).addClass("active");
				console.log("Button set to active. ID:", dataFor);

				// Check if "내가 쓴 글" is selected, login
				if (dataFor == "myDoran") {
					var memId = "${sessionScope.loginmem.mem_id}";
					if (!memId || memId.trim() === "") {
						alert("로그인이 필요한 서비스입니다 !");
						window.location.href = "${cpath}/login/loginForm.do";
						return;
					}
				}

				dataForRadioButton = $("#" + dataFor);

				$.ajax({
					url : cpath + "/doran/doranFor.do",
					data : {
						"dataFor" : dataFor
					},
					success : function(responseData) {

						$("#here").html(responseData);
					}
				});
			}

			function submitForm(orderBy) {

				if (dataForRadioButton) {
					var activeWrapperId = dataForRadioButton.closest(
							'.text-wrapper-18, .text-wrapper-19').attr('id');
					console.log("Active Wrapper ID:", activeWrapperId);

					applyStylesToButton(".orderby_" + orderBy);

					var url;
					if (activeWrapperId === 'myDoran') {
						url = cpath + "/doran/doranFilterForMe.do";
					} else {
						url = cpath + "/doran/doranFilter.do";
					}

					$.ajax({
						url : url,
						data : {
							"orderBy" : orderBy
						},
						success : function(responseData) {

							$("#here").html(responseData);
						}
					});
				} else {
					console
							.error("No radio button with name 'dataFor' is checked.");
				}

				return false;
			}

			// 검색어 클릭 버튼
			function searchBtnClick() {

				var searchInput = document.getElementById("searchTxt").value;

				$.ajax({
					url : "${cpath}/doran/doranSearch.do",
					type : 'GET',
					data : {
						keyword : searchInput
					},
					success : function(responseData) {
						if (responseData && responseData.length > 0) {

							$('#here').html(responseData);
						} else if (responseData.length == 0) {
							alert("검색 결과가 없습니다.");
						}
					},

					error : function() {
						alert("에러가 발생했습니다 ! 다시 시도해 주세요");
					}
				});
			}

			// 간편 업로드 
			function quickUpload() {
				var memId = "${sessionScope.loginmem.mem_id}";

				if (!memId || memId.trim() === "") {
					alert("로그인이 필요한 서비스입니다 !");
					window.location.href = "${cpath}/login/loginForm.do";
					return;
				}

				var quickTitle = document.getElementById("doran-quick-title").value;
				var quickContent = document
						.getElementById("doran-quick-content").value;

				var requestData = {
					title : quickTitle,
					content : quickContent
				};

				$.ajax({
					url : "${cpath}/doran/quickUpload.do",
					type : "POST",
					data : JSON.stringify(requestData),
					contentType : "application/json; charset=utf-8",
					success : function(responseData) {

						console.log(responseData);
					},
					error : function() {
						alert("업로드 에러");
					}
				});
			}
		</script>
		<!-- div -->
	</div>
	<!-- screen -->
</body>
</html>