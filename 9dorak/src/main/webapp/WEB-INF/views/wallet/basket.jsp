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
<meta charset="utf-8" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/basketStyle.css"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
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
						<div class="group-20" id="lightsParent">
							<div class="header-overlap-group-3" onclick="loginBasket()">
								<img class="header-group-21"
									src="${cpath}/resources/images/main/header-cart.png" />
								<!-- <div class="text-wrapper-29">2</div> -->
							</div>
						</div>
					</div>
				</div>
			</header>

			<div class="account-navigation">
				<div class="ol">
					<div class="frame-22">
						<div class="text-wrapper-20">회원등급</div>
					</div>
				</div>
				<div class="text-wrapper-21">장바구니</div>
			</div>


			<div class="basketList">
				<c:if test="${empty blist}">
					<h1>장바구니가 텅 비었어요! 상품을 담아주세요!!</h1>
				</c:if>

				<br>
				<span style="font-weight: bold">
					<c:out value="${sessionScope.loginmem.mem_id}" /> 님의 도시락
				</span>
				
				

				<c:forEach var="items" items="${formattedDates}">
					<div class="member">
						<span class="e126_324">주문 날짜 형식</span>
						<span class="e126_325">${items.formattedDate}</span>
					</div>
				</c:forEach>

				<c:forEach var="items" items="${blist}">
					<div class="member">
					<!-- 일단 '내' 장바구니 회원 아이디는 숨겨
						<span class="e126_321">회원 아이디</span> <span class="e126_322">${items.mem_id}</span>
						 -->
						<span class="e126_324">주문한 상품 번호</span> <span class="e126_325">${items.pro_no}</span>
						<span class="e126_324">주문한 수량</span> <span class="e126_325">${items.basket_pro_count}</span>
					</div>
				</c:forEach>
			</div>



















			<div class="case">
				<div class="div">
					<div class="view">
						<div class="frame">
							<div class="div-wrapper">
								<div class="text-wrapper">가족등록 인증</div>
							</div>
						</div>
					</div>
					<div class="view-2">
						<div class="frame-2">
							<div class="frame-3">
								<div class="text-wrapper-2">결제정보</div>
								<div class="text-wrapper-3">2 Items</div>
							</div>
							<div class="frame-4">
								<div class="frame-5">
									<p class="p">
										<span class="span">from</span> <span class="text-wrapper-4">
											ksweeni</span>
									</p>
									<div class="frame-3">
										<div class="frame-6">
											<div class="text-wrapper-5">스팸마요 도시락</div>
											<div class="text-wrapper-6">8000원</div>
										</div>
										<div class="frame-wrapper">
											<div class="frame-7">
												<img class="img" src="img/image-4.svg" />
												<div class="frame-8">
													<div class="text-wrapper-7">1</div>
												</div>
												<img class="img-2" src="img/image-3.svg" />
											</div>
										</div>
									</div>
								</div>
								<div class="frame-5">
									<p class="p">
										<span class="span">from</span> <span class="text-wrapper-4">
											jongbumee</span>
									</p>
									<div class="frame-3">
										<div class="frame-9">
											<div class="text-wrapper-8">불고기 햄치즈 도시락</div>
											<div class="text-wrapper-6">8000원</div>
										</div>
										<div class="frame-wrapper">
											<div class="frame-7">
												<img class="img" src="img/image.svg" />
												<div class="frame-8">
													<div class="text-wrapper-7">1</div>
												</div>
												<img class="img-2" src="img/image-2.svg" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-10">
							<div class="frame-11">
								<div class="text-wrapper-9">총 합계</div>
								<div class="text-wrapper-9">₹11,400.00</div>
							</div>
							<div class="frame-11">
								<div class="text-wrapper-9">배송비</div>
								<div class="text-wrapper-9">₹11,400.00</div>
							</div>
						</div>
						<div class="frame-11">
							<div class="text-wrapper-10">총 결제 예상 금액</div>
							<div class="text-wrapper-10">₹7,400.00</div>
						</div>
						<div class="frame-12">
							<div class="text-wrapper-11">결제하기</div>
						</div>
					</div>
					<div class="group-wrapper">
						<div class="group">






















							<div class="frame-13">
								<div class="view-3">
									<img class="checkbox" src="img/checkbox-2.svg" />
									<div class="text-wrapper-12">선택해제</div>
								</div>
								<div class="text-wrapper-13">선택삭제</div>
							</div>
							<div class="cart-menus-wrapper">
								<div class="cart-menus">
									<div class="frame-14">
										<div class="frame-15">
											<div class="text-wrapper-14">2023-11-21 (화)</div>
											<div class="group-2">
												<div class="frame-16">
													<div class="frame-17">
														<img class="rectangle" src="img/rectangle-76.png" />
														<div class="frame-18">
															<div class="text-wrapper-15">스팸마요 도시락</div>
															<div class="text-wrapper-16">7,000원</div>
														</div>
													</div>
													<div class="button-product-add">
														<div class="text-wrapper-17">1</div>
														<div class="entypo-plus-wrapper">
															<img class="img-3" src="img/entypo-plus-3.svg" />
														</div>
														<div class="entypo-minus-wrapper">
															<img class="img-3" src="img/entypo-minus.svg" />
														</div>
													</div>
												</div>
												<img class="close"
													src="${cpath}/resources/images/wallet/delete_btn.svg" />
												<div class="frame-19">
													<img class="checkbox-2" src="img/checkbox.svg" />
													<div class="text-wrapper-18">ksweeni</div>
												</div>
											</div>
										</div>
										<div class="group-2">
											<div class="frame-16">
												<div class="frame-17">
													<img class="rectangle" src="img/rectangle-76-3.png" />
													<div class="frame-18">
														<div class="text-wrapper-15">스팸마요 도시락</div>
														<div class="text-wrapper-16">7,000원</div>
													</div>
												</div>
												<div class="button-product-add">
													<div class="text-wrapper-17">1</div>
													<div class="entypo-plus-wrapper">
														<img class="img-3" src="img/entypo-plus-2.svg" />
													</div>
													<div class="entypo-minus-wrapper">
														<img class="img-3" src="img/entypo-minus-2.svg" />
													</div>
												</div>
											</div>
											<img class="close" src="img/close-2.svg" />
											<div class="frame-19">
												<img class="checkbox-2" src="img/checkbox.svg" />
												<div class="text-wrapper-18">ksweeni</div>
											</div>
										</div>
										<div class="frame-20">
											<div class="text-wrapper-14">2023-11-22 (수)</div>
											<div class="group-2">
												<div class="frame-16">
													<div class="frame-17">
														<img class="rectangle" src="img/rectangle-76-2.png" />
														<div class="frame-18">
															<div class="text-wrapper-15">스팸마요 도시락</div>
															<div class="text-wrapper-16">7,000원</div>
														</div>
													</div>
													<div class="button-product-add">
														<div class="text-wrapper-17">1</div>
														<div class="entypo-plus-wrapper">
															<img class="img-3" src="img/entypo-plus-4.svg" />
														</div>
														<div class="entypo-minus-wrapper">
															<img class="img-3" src="img/entypo-minus-3.svg" />
														</div>
													</div>
												</div>
												<img class="close" src="img/close-2.svg" />
												<div class="frame-21">
													<img class="checkbox-2" src="img/checkbox.svg" />
													<div class="text-wrapper-19">jongbumee</div>
												</div>
											</div>
										</div>
										<div class="group-2">
											<div class="frame-16">
												<div class="frame-17">
													<img class="rectangle" src="img/image.png" />
													<div class="frame-18">
														<div class="text-wrapper-15">스팸마요 도시락</div>
														<div class="text-wrapper-16">7,000원</div>
													</div>
												</div>
												<div class="button-product-add">
													<div class="text-wrapper-17">1</div>
													<div class="entypo-plus-wrapper">
														<img class="img-3" src="img/entypo-plus.svg" />
													</div>
													<div class="entypo-minus-wrapper">
														<img class="img-3" src="img/entypo-minus-4.svg" />
													</div>
												</div>
											</div>
											<img class="close" src="img/close.svg" />
											<div class="frame-19">
												<img class="checkbox-2" src="img/checkbox.svg" />
												<div class="text-wrapper-18">ksweeni</div>
											</div>
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
						<div class="footer-text-wrapper-3">Thursday: 09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<!-- div -->
		</div>
	</div>
	<!-- screen -->
</body>

<script>
	$(".e79_263").on("click", function() {
		$.ajax({

			url : "${cpath}/my/myDelivery.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})
</script>

</html>
