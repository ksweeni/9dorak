<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/doranFeedDetailStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

</head>
<script>
	var c = "${comments}";
	console.log(c);
</script>
<body>

	<div class="div-wrapper">
		<div class="div">

			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-event">이벤트</div>
						<div class="text-menu">
							<a class="header-a"
								href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
						</div>
						<div class="text-subscribe">구독하기</div>
						<div class="text-yomo">요모조모</div>
						<div class="text-doran">
							<a class="header-a"
								href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
						</div>
					</div>
					<img class="untitled-2"
						src="${cpath}/resources/images/main/header-logo.png" />
					<div class="div-3">
						<div class="text-wrapper-28">
							<c:choose>
								<c:when test="${not empty sessionScope.loginmem.mem_id}">
									<span
										style="font-weight: bold; left: 2.5rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님
									</span>
								</c:when>
								<c:otherwise>
									<a class="header-a"
										href="${pageContext.request.contextPath}/login/login.do">로그인</a> |
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

			<div class="group-2">
				<div class="feeds">
					<div class="group-3">
						<div class="overlap-group-2">
							<img class="unsplash"
								src="${cpath }/resources/upload/${doran.doran_image}" />
							<p class="p">엄마가 사준 디저트 매우 맛있다 학교 앞에도 있었으면 좋겠다!!!
								#반모#중2#슬릭백장인</p>

							<div class="doran-underInfo">
								<div class="doran-review">
									<div class="doran-review-like">
										<img class="doran-review-likeicon"
											src="${cpath }/resources/images/doran/icon_doran-like-fill.png" />
										<div class="doran-review-like2">${doran.dlike}</div>
									</div>
									<div class="doran-review-reviewCnt">
										<img class="doran-review-reviewCnticon"
											src="${cpath }/resources/images/doran/icon_doranviewcnt.png" />
										<div class="doran-review-reviewCnt2">${doran.doran_view}</div>
									</div>
									<div class="doran-review-dcomment">
										<img class="doran-review-dcommenticon"
											src="${cpath }/resources/images/doran/icon_dorancomment.png" />
										<div class="doran-review-dcomment2">${doran.dcomment}</div>
									</div>
								</div>
								<div class="doran-uploadInfo-time">${doran.doran_date }</div>
							</div>

							<div class="group-4">
								<img class="unsplash-ykc-qhmjk"
									src="img/unsplash-y3kc-7qhmjk.svg" />
								<div class="frame-2">
									<div class="frame-3">
										<div class="text-wrapper-10">${sessionScope.loginmem.mem_id}</div>
										<div class="text-wrapper-11">${sessionScope.loginmem.mem_grade}</div>
									</div>
									<div class="group-5">
										<div class="text-wrapper-12">8분전</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-13">COMMENTS ☁️</div>
					<div class="overlap-wrapper">
						<div class="overlap">
							<div class="frame-5">
								<div class="frame-wrapper">
									<div class="frame-6">
										<div class="comment">
											<div class="reply">
												<div class="text-wrapper-14">Name</div>
												<div class="message">
													<div class="overlap-group-3">
														<div class="text">
															<div class="text-wrapper-15">Here’s some
																feedback...</div>
														</div>
														<img class="tail" src="img/tail-2.svg" />
													</div>
												</div>
											</div>
											<div class="text-wrapper-16">2023.11.22</div>
										</div>
										<div class="comment">
											<div class="reply">
												<div class="text-wrapper-14">Name</div>
												<div class="message">
													<div class="overlap-group-3">
														<div class="text">
															<div class="text-wrapper-15">Here’s some
																feedback...</div>
														</div>
														<img class="tail" src="img/tail-3.svg" />
													</div>
												</div>
											</div>
											<div class="text-wrapper-16">2023.11.22</div>
										</div>
										<div class="comment">
											<div class="reply">
												<div class="text-wrapper-14">Name</div>
												<div class="message">
													<div class="overlap-group-3">
														<div class="text">
															<div class="text-wrapper-15">Here’s some
																feedback...</div>
														</div>
														<img class="tail" src="img/tail.svg" />
													</div>
												</div>
											</div>
											<div class="text-wrapper-16">2023.11.22</div>
										</div>
										<div class="comment">
											<div class="reply">
												<div class="text-wrapper-14">Name</div>
												<div class="message">
													<div class="overlap-group-3">
														<div class="text">
															<div class="text-wrapper-15">Here’s some
																feedback...</div>
														</div>
														<img class="tail" src="img/tail-4.svg" />
													</div>
												</div>
											</div>
											<div class="text-wrapper-16">2023.11.22</div>
										</div>
									</div>
								</div>
							</div>
							<div class="group-6">
								<div class="overlap-2">
									<div class="input-comments">
										<img class="unsplash-upihhsyew"
											src="img/unsplash-u3pi6hhsyew.svg" />
										<div class="textzone">
											<div class="overlap-group-4">
												<div class="text-wrapper-17">자유롭게 작성해 보세요 ..</div>
											</div>
										</div>
										<div class="group-wrapper">
											<div class="group-7">
												<div class="overlap-group-5">
													<div class="text-wrapper-18">Paylaş</div>
													<div class="rectangle"></div>
													<div class="text-wrapper-19">댓글달기</div>
													<img class="carbon-send-alt"
														src="img/carbon-send-alt-filled.svg" />
												</div>
											</div>
										</div>
									</div>
									<img class="line" src="img/line-7.svg" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- group-2 -->

			<div class="group-8">
				<div class="group-9">
					<div class="group-10">
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
							<div class="text-wrapper-write">글 작성하기</div>
						</div>
					</button>
				</form>

			</div>
			<div class="group-11">
				<div class="group-12">
					<div class="overlap-group-6">
						<div class="card">
							<div class="frame-7">
								<div class="ellipsis-wrapper">
									<div class="ellipsis">􀍠</div>
								</div>
							</div>
							<div class="tab">
								<button class="text-wrapper-20">도란도란</button>
							</div>
							<div class="tab-2">
								<button class="text-wrapper-21">내가 쓴 글</button>
							</div>
						</div>
						<div class="text-wrapper-22">도란도란</div>
					</div>
				</div>
				<div class="group-13">
					<div class="overlap-3">
						<input class="text-wrapper-23" id=searchTxt type="text"
							placeholder="검색어를 입력하세요" />
					</div>
					<div class="doran-search">
						<button class="doran-search-button">
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

			<footer class="footer">
				<div class="company-loco">
					<div class="company">
						<p class="text-wrapper-24">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Commodo libero viverra dapibus odio
							sit malesuada in quis. Arcu tristique elementum viverra integer
							id.</p>
						<img class="untitled-2" src="img/untitled-1-2.png" />
					</div>
					<div class="social-icon">
						<div class="facebook">
							<img class="mask-group" src="img/mask-group.png" />
						</div>
						<div class="instagram">
							<img class="mask-group-2" src="img/image.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-3" src="img/mask-group-2.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-3" src="img/mask-group-3.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-25">Contact Us</div>
					<div class="group-14">
						<div class="text-wrapper-26">1234 Country Club Ave</div>
						<div class="text-wrapper-27">NC 123456, London, UK</div>
						<div class="text-wrapper-28">+0123 456 7891</div>
					</div>
					<div class="group-15">
						<div class="overlap-group-7">
							<div class="vector-wrapper">
								<img class="vector-3" src="img/image.svg" />
							</div>
							<div class="text-wrapper-29">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-30">User Link</div>
					<div class="group-16">
						<div class="text-wrapper-26">About Us</div>
						<div class="text-wrapper-27">Contact Us</div>
						<div class="text-wrapper-28">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tex</div>
						<div class="text-wrapper-31">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-30">Opening Restaurant</div>
					<div class="group-17">
						<div class="text-wrapper-26">Sat-Wet: 09:00am-10:00PM</div>
						<div class="text-wrapper-27">Thursdayt: 09:00am-11:00PM</div>
						<div class="text-wrapper-28">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<!-- footer -->

		</div>
		<!-- div -->
	</div>
	<!-- div-wrapper -->

</body>
</html>