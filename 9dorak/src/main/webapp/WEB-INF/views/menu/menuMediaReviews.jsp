<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/menuMediaReviewStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
	<div class="div-wrapper">
		<div class="div">
		
			<header class="header">
			    <div class="top-nav">
			        <div class="navbar">
			            <div class="text-event">
			                <a class="header-a" href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
			            </div>
			            <div class="text-menu">
			                <a class="header-a" href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
			            </div>
			            <div class="text-subscribe">
			                <a class="header-a" href="${pageContext.request.contextPath}/sub/sub.do">구독하기</a>
			            </div>
			            <div class="text-yomo">
			                <a class="header-a" href="${pageContext.request.contextPath}/yomo/notice.do">요모조모</a>
			            </div>
			            <div class="text-doran">
			                <a class="header-a" href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
			            </div>
			        </div>
			        <a href="${pageContext.request.contextPath}/main.do">
			            <img class="untitled-2" src="${cpath}/resources/images/main/header-logo.png" />
			        </a>
			        <div class="div-3">
			            <div class="text-wrapper-28">
			                <c:choose>
			                    <c:when test="${not empty sessionScope.loginmem.mem_id}">
			                        <span style="font-weight: bold; left: 2.5rem; position: relative;">
			                            <c:out value="${sessionScope.loginmem.mem_id}" /> 님
			                        </span>
			                    </c:when>
			                    <c:otherwise>
			                        <a class="header-a" href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
			                        <a class="header-a" href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
			                    </c:otherwise>
			                </c:choose>
			            </div>
			            <div class="group-20">
			                <div class="header-overlap-group-3">
			                    <img class="header-group-21" src="${cpath}/resources/images/main/header-cart.png" />
			                    <div class="ellipse-light"></div>
			                    <!-- <div class="text-wrapper-29">2</div> -->
			                </div>
			            </div>
			        </div>
			    </div>
			</header>
			
			<div class="group">
				<div class="overlap-group">
					<div class="frame">
						<div class="frame-2">
							<div class="group-2">
								<div class="frame-3">
									<div class="text-wrapper">ksween</div>
									<div class="text-wrapper-2">2023.11.21</div>
								</div>
								<div class="frame-4">
									<div class="text-wrapper-2">[배부르9] 한종범 불고기 도시락</div>
								</div>
							</div>
							<div class="frame-5">
								<div class="frame-6">
									<div class="menu"
										style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
									<div class="view">
										<div class="frame-7">
											<div class="frame-5">
												<div class="text-wrapper">맛</div>
												<div class="text-wrapper-3">최고에요</div>
											</div>
											<div class="frame-8">
												<div class="text-wrapper">만족도</div>
												<div class="text-wrapper-3">최고에요</div>
											</div>
										</div>
										<p class="p">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !! 데브옵스가 끝나고 허겁지겁
											먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 흐르르루룳 또 머고시퍼요 다이어ㅡ 실패 ~</p>
										<div class="frame-9">
											<img class="happy"
												src="${cpath}/resources/images/menu/happy-unfill.svg" />
											<div class="text-wrapper-4">유용해요</div>
											<div class="text-wrapper-4">0</div>
										</div>
									</div>
								</div>

								<div class="doran-card">

									<div class="frame-10">
										<div class="frame-pic">
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
										</div>

										<div class="frame-pic">
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
										</div>

										<div class="frame-pic">
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
										</div>

										<div class="frame-pic">
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
										</div>

										<div class="frame-pic">
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
											<div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<script>
				// 유용해요 클릭 및 유용 수 증가 
				document
						.addEventListener(
								'DOMContentLoaded',
								function() {
									document
											.querySelectorAll('.happy')
											.forEach(
													function(element) {
														element
																.addEventListener(
																		'click',
																		function() {
																			console
																					.log("clicked");
																			this.classList
																					.toggle('happy-unfill');
																			this.classList
																					.toggle('happy-fill');

																			// 이미지 변경
																			const imageSrc = this.classList
																					.contains('happy-fill') ? `${cpath}/resources/images/menu/happy-fill.svg`
																					: `${cpath}/resources/images/menu/happy-unfill.svg`;
																			this.src = imageSrc;

																			// 유용해요 옆의 숫자 count up
																			const countElement = this.nextElementSibling.nextElementSibling;
																			let count = parseInt(countElement.textContent);

																			// Check if count is a valid number before updating
																			if (!isNaN(count)) {
																				countElement.textContent = this.classList
																						.contains('happy-fill') ? count + 1
																						: count - 1;
																			}
																		});
													});
								});
			</script>


			<footer class="footer">
				<div class="company-loco">
					<div class="company">
						<p class="text-wrapper-5">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Commodo libero viverra dapibus odio
							sit malesuada in quis. Arcu tristique elementum viverra integer
							id.</p>
						<img class="untitled" src="img/untitled-1-2.png" />
					</div>
					<div class="social-icon">
						<div class="facebook">
							<img class="mask-group" src="img/mask-group-2.png" />
						</div>
						<div class="instagram">
							<img class="img" src="img/mask-group.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-2" src="img/mask-group-3.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-2" src="img/mask-group-4.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-6">Contact Us</div>
					<div class="group-3">
						<div class="text-wrapper-7">1234 Country Club Ave</div>
						<div class="text-wrapper-8">NC 123456, London, UK</div>
						<div class="text-wrapper-9">+0123 456 7891</div>
					</div>
					<div class="overlap-group-wrapper">
						<div class="overlap-group-2">
							<div class="vector-wrapper">
								<img class="vector" src="img/vector.svg" />
							</div>
							<div class="text-wrapper-10">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-11">User Link</div>
					<div class="group-4">
						<div class="text-wrapper-7">About Us</div>
						<div class="text-wrapper-8">Contact Us</div>
						<div class="text-wrapper-9">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tex</div>
						<div class="text-wrapper-12">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-11">Opening Restaurant</div>
					<div class="group-5">
						<div class="text-wrapper-7">Sat-Wet: 09:00am-10:00PM</div>
						<div class="text-wrapper-8">Thursdayt: 09:00am-11:00PM</div>
						<div class="text-wrapper-9">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>

		</div><!-- div -->
	</div><!-- div-wrapper -->
</body>
</html>