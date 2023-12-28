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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/makelunchboxStyle.css?d" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<script>
function redirectToChallenge(challenge_no) {
		location.href = '${pageContext.request.contextPath}/event/lunchboxdetail.do?challenge_no=' + challenge_no;
	/* 	alert('Redirect to challenge number ' + challenge_no); */
}
</script>
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
			
			
	<div class="screen">
		<div class="element">
			<div class="div">

				<div id="event_menu">
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/event/challenge.do">챌린지
								ZONE</a></li>
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
				<div class="main">
				<div class="group">
					<div class="text-wrapper">내가 만든 구도락, 신메뉴로&nbsp;&nbsp;탄생</div>
					<div class="text-wrapper-2">여러분만의 구도락을 제안하고, 추천해보세요</div>
				</div>
				<div class="group-2">
					<div class="frame">
						<div class="overlap-wrapper">
							<div class="overlap">
								<div class="div-2">
									<div class="overlap-group">
										<div class="group-3">
											<div class="overlap-group-wrapper">
												<div class="overlap-2">
													<div class="div-wrapper">
														<div class="overlap-3">
															<div class="group-4">
																<div class="rectangle-wrapper">
																	<!-- <img class="rectangle" src="img/rectangle-1484-3.svg" /> -->
																</div>
															</div>
															<!-- <img class="icon-trophy" src="img/trophy-2.svg" /> --> 
																<!-- <img class="star" src="img/star-1.svg" /> -->
														</div>
													</div>
													<div class="text-wrapper-3">Foundations</div>
													<div class="group-5"></div>
													<div class="topic-title">${clisttop3[0].challenge_name}</div>
													<p class="date-earned-may">
														<span class="span">요리사 <br /></span> <span
															class="text-wrapper-4">${clisttop3[0].mem_id}<br /></span>
														<span class="span"><br />레시피<br /></span> <span
															class="text-wrapper-4">${clisttop3[0].challenge_recipe}<br />
														</span> <!-- <span class="span"><br />추천합니다 <br /></span> -->
													</p>
												</div>
											</div>
										</div>
										<div class="certification">
											<div class="overlap-4">
												<div class="group-6">
													<div class="overlap-group-2">
														<img class="img"
															src="../resources/images/event/9make01.png" />
													</div>
												</div>
											</div>
										</div>
										<div class="group-7">
											<div class="overlap-5">
												<div class="rectangle-3"></div>
												<div class="gold-certified-wrapper">
													<div class="gold-certified">${clisttop3[0].challengelike_cnt}개의
														좋아요</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- <img class="star-2" src="../resources/images/event/9make04.png" /> -->
							</div>
						</div>
						<div class="overlap-wrapper">
							<div class="overlap">
								<div class="div-2">
									<div class="group-8">
										<div class="overlap-group-wrapper">
											<div class="overlap-2">
												<div class="div-wrapper">
													<div class="overlap-3">
														<div class="group-4">
															<div class="img-wrapper">
																<!-- <img class="rectangle" src="img/rectangle-1484.svg" /> -->
															</div>
														</div>
														<!-- <img class="icon-trophy" src="img/trophy-3.svg" /> <img
															class="star" src="img/star-1-3.svg" /> -->
													</div>
												</div>
												<div class="text-wrapper-3">Foundations</div>
												<div class="group-5"></div>
												<div class="topic-title">${clisttop3[1].challenge_name}</div>
												<p class="date-earned-may">
													<span class="span">요리사 <br /></span> <span
														class="text-wrapper-4">${clisttop3[1].mem_id}<br /></span>
													<span class="span"><br />레시피<br /></span> <span
														class="text-wrapper-4">${clisttop3[1].challenge_recipe}<br />
													</span> <!-- <span class="span"><br />추천합니다 <br /></span> -->
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="group-9">
									<div class="overlap-5">
										<div class="rectangle-4"></div>
										<div class="group-10">
											<div class="text-wrapper-5">${clisttop3[1].challengelike_cnt}개의
												좋아요</div>
										</div>
									</div>
								</div>
								<!-- <img class="star-3" src="../resources/images/event/9make05.png" /> -->
								<div class="medallions">
									<div class="overlap-4">
										<div class="group-6">
											<div class="overlap-group-3">
												<img class="img" src="../resources/images/event/9make02.png" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="overlap-wrapper">
							<div class="overlap">
								<div class="div-2">
									<div class="overlap">
										<div class="div-2">
											<div class="group-8">
												<div class="overlap-group-wrapper">
													<div class="overlap-2">
														<div class="div-wrapper">
															<div class="overlap-3">
																<div class="group-4">
																	<div class="overlap-group-4">
																		<!-- <img class="rectangle" src="img/rectangle-1484-2.svg" /> -->
																	</div>
																</div>
																<!-- <img class="icon-trophy" src="img/trophy.svg" /> <img
																	class="star" src="img/star-1-2.svg" /> -->
															</div>
														</div>
														<div class="text-wrapper-3">Foundations</div>
														<div class="group-5"></div>
														<div class="topic-title">${clisttop3[2].challenge_name}</div>
														<p class="date-earned-may">
															<span class="span">요리사 <br /></span> <span
																class="text-wrapper-4">${clisttop3[2].mem_id}<br /></span>
															<span class="span"><br />레시피<br /></span> <span
																class="text-wrapper-4">${clisttop3[2].challenge_recipe}<br /></span>
															<!-- <span class="span"><br />추천합니다 <br /></span> -->
														</p>
													</div>
												</div>
											</div>
										</div>
										<!-- <img class="star-2"
											src="../resources/images/event/9make06.png" /> -->
										<div class="medallions-2">
											<div class="overlap-4">
												<div class="group-6">
													<div class="overlap-group-5">
														<img class="img"
															src="../resources/images/event/9make03.png" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="group-11">
									<div class="overlap-5">
										<div class="rectangle-6"></div>
										<div class="group-12">
											<div class="text-wrapper-6">${clisttop3[2].challengelike_cnt}개의
												좋아요</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="group-13">
						<div class="text-wrapper-7">이 달의 후보</div>
						<p class="p">당월 말까지 투표가 진행됩니다 !</p>
					</div>
				</div>
				<div class="group-14">
					<div class="desktop-quiz-rows">
						<c:forEach items="${clist}" var="chall" varStatus="loop">
							<div class="property-default">
								<a onclick="redirectToChallenge(${chall.challenge_no})" class="overlap-group-6">
									<div class="blur">
										<div class="quiz-row-wrapper">
											<div class="quiz-row"></div>
										</div>
									</div>
									<div class="group-15">
										<div class="frame-2">
											<div class="text-wrapper-8">요리사 : ${chall.mem_id}</div>
											<div class="text-wrapper-9">${chall.challenge_name}</div>
										</div>
										<div class="group-16">
											<c:if
												test="${clistlike[loop.index].challenge_no == chall.challenge_no}">
												<!-- clistlike에 해당 chall_no가 있으면 별 이미지 출력 -->
												<!-- <img class="vector" src="../resources/images/event/star.png" /> -->
											</c:if>
											<c:if
												test="${clistlike[loop.index].challenge_no!= chall.challenge_no}">
												<!-- clistlike에 해당 chall_no가 없으면 다른 이미지 출력 -->
												<!-- <img class="vector" src="../resources/images/event/9make09.png" /> -->
											</c:if>
											<!-- 가져온 인덱스에 해당하는 challlike 항목 사용 -->
											<div class="text-wrapper-10">좋아요 : ${clistlike[loop.index].challengelike_cnt}</div>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="frame-wrapper">
					<div class="frame-3">
						<div class="group-17"
							onclick="location.href='${pageContext.request.contextPath}/event/challengeLunchBox.do'">
							<div class="overlap-group-7">
								<div class="rectangle-7"></div>
								<div class="text-wrapper-12">도시락 만들기</div>
								<div class="carbon-send-alt">
									<img class="create"
										src="${cpath}/resources/images/event/roundWhite.png" />
								</div>
							</div>
						</div>
						<div class="frame-4">
							<div class="frame-5">
								<div class="frame-6">
									<button class="text-wrapper-13">최근 순</button>
									<img class="filter" src="../resources/images/event/9make07.png" />
								</div>
							</div>
							<div class="frame-5">
								<div class="frame-6">
									<button class="text-wrapper-13">좋아요 순</button>
									<img class="filter" src="../resources/images/event/9make07.png" />
								</div>
							</div>
						</div>
					</div>
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
					<div class="footer-text-wrapper-3">Thursdayt: 09:00am-11:00PM</div>
					<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
				</div>
			</div>
		</footer>
	</div>

	<script>
	//정렬
	$(".frame-4 button").on("click", function() {
		
		$.ajax({
			url : "${cpath}/event/lunchboxOrderby.do",
			type : 'GET',
			data : {
				order_type : $(this).text()
			},
			success : function(data) {
				$('.desktop-quiz-rows').html(data);
			}
		});
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

</body>

</html>
