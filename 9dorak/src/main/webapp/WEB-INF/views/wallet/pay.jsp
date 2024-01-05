<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/payStyle.css?d"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
<style>
@
keyframes zoomIn {from { transform:scale(0);
	
}

to {
	transform: scale(1);
}

}
.modal {
	background-color: #fefefe;
	border: 1px solid #888;
	z-index: 2; /* Place the modal above the overlay */
	animation: zoomIn 0.3s ease-out; /* Add a simple zoom-in animation */
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	z-index: 1000;
}
</style>
</head>

<script type="text/javascript">
if (self.name != 'reload') {
    self.name = 'reload';
    self.location.reload(true);
}
else self.name = ''; 

</script>
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

			<div class="main-frame">
				<div class="overlap">
					<div class="orange">
						<div class="group">
							<div class="frame">
								<div class="cart-menus">
									<div class="frame-wrapper">
										<div class="frame-2">
											<div class="text-wrapper">배송정보</div>
											<div class="div-wrapper">
												<div class="frame-3">
													<c:choose>
														<c:when test="${empty dlist}">
															<span id="regnodel">등록된 배송지가 없습니다.</span>

															<!--  -->
															<div id="nodel" style="display: none;">
																우편번호<input type="text" id="sample4_postcode"
																	class="changi" placeholder="우편번호"
																	value="${dlist[0].mem_zipcode}" readonly="readonly" />
																<br> <input type="hidden" id="sample4_roadAddress"
																	class="changi" placeholder="도로명주소" readonly="readonly" />
																주소 <input type="text" id="sample4_jibunAddress"
																	placeholder="지번주소" class="changi" readonly="readonly"
																	value="${dlist[0].mem_addr} ${dlist[0].mem_detail}" />
																<span class="changi" id="guide"
																	style="color: #999; display: none"></span> <br /> 상세주소
																<input type="text" id="sample4_detailAddress"
																	class="changi" placeholder="상세주소"
																	value="${dlist[0].mem_detail}"> <input
																	type="hidden" id="sample4_extraAddress" class="changi"
																	readonly="readonly" placeholder="참고항목" /> <br />
															</div>
															<!--  -->

														</c:when>
														<c:when test="${not empty dlist}">
															배송지명 &nbsp; <input type="text" id="mem_delname"
																class="changi" readonly="readonly" placeholder="배송지명"
																value="${dlist[0].mem_delname}">
															<br> 우편번호 &nbsp; <input type="text"
																id="sample4_postcode" class="changi" placeholder="우편번호"
																value="${dlist[0].mem_zipcode}" readonly="readonly" />
															<br>
															<input type="hidden" id="sample4_roadAddress"
																class="changi" placeholder="도로명주소" readonly="readonly" /> 
																주소 &nbsp; <input type="text" id="sample4_jibunAddress"
																placeholder="지번주소" class="changi" readonly="readonly"
																value="${dlist[0].mem_addr} ${dlist[0].mem_detail}" />
															<span class="changi" id="guide"
																style="color: #999; display: none"></span>
															<br> 상세주소 &nbsp;
															<input type="text" id="sample4_detailAddress"
																class="changi" placeholder="상세주소"
																value="${dlist[0].mem_detail}">
															<input type="hidden" id="sample4_extraAddress"
																readonly="readonly" class="changi" placeholder="참고항목" />
															<br>
														</c:when>
													</c:choose>

													<!--  -->
													<a class="entypo-plus-wrapper"
														onclick="sample4_execDaumPostcode()"> <img
														class="entypo-plus"
														src="${cpath}/resources/images/wallet/plus.png" />
													</a>

												</div>
											</div>
											<c:choose>
												<c:when test="${not empty dlist}">
													<div class="my-del-button">
														<button class="my-del">나의 배송지 확인</button>
													</div>
												</c:when>
											</c:choose>

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="coupons">
						<p class="p">
							<span class="span">보유 쿠폰 </span> <span class="text-wrapper-3">${clist.size()}장</span>
						</p>
						<div class="group-2">
							<div class="frame-4" id="couponApply">
								<div class="text-wrapper-4">쿠폰 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<c:choose>
										<c:when test="${clist.size()!=0}">
											<div class="text-wrapper-5" id="coupon">보유 쿠폰 확인하기</div>
										</c:when>
										<c:when test="${clist.size()==0}">
											<div class="text-wrapper-5">보유한 쿠폰이 없습니다.</div>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="text-wrapper-6">쿠폰</div>
						</div>
					</div>
					<div class="points">
						<p class="p">
							<span class="span">보유 포인트 </span> <span class="text-wrapper-3"
								id="mypoint">${mem.mem_point} P</span>
						</p>
						<div class="group-2">
							<div class="frame-4" id="pointApply">
								<div class="text-wrapper-7">포인트 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<input id="point" class="overlap-group"
									placeholder="포인트를 입력해주세요">
							</div>
							<div class="text-wrapper-6">포인트</div>
						</div>
					</div>
				</div>
				<!--  -->

				<div class="info">
					<div class="frame-7">
						<div class="frame-8">
							<div class="text-wrapper-9"
								style="position: relative; left: 69px;">결제정보</div>
							<div class="text-wrapper-10">
								total
								<c:choose>
									<c:when test="${not empty olist}">
										<span id="pro_count">${item}</span>
									</c:when>
									<c:when test="${not empty sub9allist}">
										<span id="pro_count">9</span>
									</c:when>
									<c:when test="${not empty sub9bllist}">
										<span id="pro_count">9</span>
									</c:when>
									<c:when test="${not empty sub19allist}">
										<span id="pro_count">19</span>
									</c:when>
									<c:when test="${not empty sub19bllist}">
										<span id="pro_count">19</span>
									</c:when>
									<c:otherwise>
										<span id="pro_count">${item} </span>
									</c:otherwise>
								</c:choose>
								<!-- else 에는 19개 B 매뉴 사이즈 넣자  -->
							</div>
						</div>
					</div>

					<c:choose>
						<c:when test="${not empty olist}">
							<input type="hidden" value="${order_no}" />
							<div class="frame-9">
								<div class="text-wrapper-11">

									<table style="bottom: 40px; position: relative;">
										<tr>
											<th>상품명</th>
											<th>주문 가격</th>
											<th>주문 수량</th>
										</tr>
										<c:forEach items="${olist}" var="ol">
											<tr style="text-align: center;">
												<td>${ol.pro_name}</td>
												<td>${ol.pro_price}</td>
												<td>${ol.orderdetail_count}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<div class="text-wrapper-11"
									style="position: relative; bottom: 39px; left: 60px; font-weight: 700;">주문
									금액</div>
								<div class="text-wrapper-11" style="right: 15px; bottom: 17px">${total}
									원</div>
							</div>
							<div class="group-3">
								<div class="frame-10">
									<!-- 									<div class="text-wrapper-11">사용</div> -->
									<div class="text-wrapper-12">쿠폰</div>
									<div class="text-wrapper-13">- 0원</div>
								</div>
								<div class="frame-11">
									<div class="text-wrapper-12">포인트</div>
									<div class="text-wrapper-99">- 0원</div>
								</div>
							</div>
							<button class="frame-12" onclick="requestPay()">결제하기</button>
							<img class="line"
								src="${cpath }/resources/images/wallet/Line9.png" />
							<div class="group-4">
								<div class="frame-10">
									<div class="text-wrapper-15">총 결제금액</div>
									<div class="text-wrapper-15" id="lastTotal">${total}원</div>
								</div>
								<div class="group-5">

									<!-- 		<img class="white-question-mark"
										src="img/white-question-mark.svg" /> -->
								</div>
							</div>
							<img class="line"
								src="${cpath}/resources/images/wallet/Line9.png" />
						</c:when>
						<c:otherwise>
							<!-- 주문 목록이 없는 경우 -->
							<div class="frame-9">
								<!-- 특별한 내용 없음 -->
								<div class="text-wrapper-11">

									<c:choose>
										<c:when test="${not empty sub9allist}">
											<div id="proname"
												style="position: relative; bottom: 44px; left: 79px; font-size: 20px;">배부르9A</div>
										</c:when>
										<c:when test="${not empty sub9bllist}">
											<div id="proname"
												style="position: relative; bottom: 44px; left: 79px; font-size: 20px;">배부르9B</div>
										</c:when>
										<c:when test="${not empty sub19allist}">
											<div id="proname"
												style="position: relative; bottom: 44px; left: 79px; font-size: 20px;">배터지9A</div>
										</c:when>
										<c:when test="${not empty sub19bllist}">
											<div id="proname"
												style="position: relative; bottom: 44px; left: 79px; font-size: 20px;">배터지9B</div>
										</c:when>
										<c:when test="${not empty olist}">
											<div id="proname"
												style="position: relative; bottom: 44px; left: 79px; font-size: 20px;">단일
												상품 주문</div>
										</c:when>


									</c:choose>

									<table style="bottom: 40px; position: relative; left: 14px;">
										<tr>
											<th>상품명</th>
											<th>상품수량</th>
										</tr>
										<c:choose>
											<c:when test="${not empty sub9allist}">
												<c:forEach items="${sub9allist}" var="sub">
													<tr style="text-align: center;">
														<td>${sub.pro_name}</td>
														<td>x3</td>
													</tr>
												</c:forEach>
												<input type="hidden" id="subType" value="109" />
											</c:when>
											<c:when test="${not empty sub9bllist}">
												<c:forEach items="${sub9bllist}" var="sub">
													<tr style="text-align: center;">
														<td>${sub.pro_name}</td>
														<td>x3</td>
													</tr>
												</c:forEach>
												<input type="hidden" id="subType" value="109" />
											</c:when>
											<c:when test="${not empty sub19allist}">
												<c:forEach items="${sub19allist}" var="sub"
													varStatus="status">
													<tr style="text-align: center;">
														<td>${sub.pro_name}</td>
														<td>${status.index==0?'x4':'x3'}</td>
													</tr>
												</c:forEach>
												<input type="hidden" id="subType" value="119" />
											</c:when>
											<c:when test="${not empty sub19bllist}">
												<c:forEach items="${sub19bllist}" var="sub"
													varStatus="status">
													<tr style="text-align: center;">
														<td>${sub.pro_name}</td>
														<td>${status.index==0?'x4':'x3'}</td>
													</tr>
												</c:forEach>
												<input type="hidden" id="subType" value="119" />
											</c:when>
											<c:otherwise>
												<c:forEach items="${sub19bllist}" var="sub"
													varStatus="status">
													<tr style="text-align: center;">
														<td>${sub.pro_name}</td>
														<td>${status.index==0?'x4':'x3'}</td>
													</tr>
												</c:forEach>
												<input type="hidden" id="subType" value="119" />
											</c:otherwise>
										</c:choose>
									</table>
								</div>
							</div>

							<c:choose>
								<c:when test="${not empty sub9allist || not empty sub9bllist }">

									<div class="group-3">
										<div class="frame-10">
											<!-- 									<div class="text-wrapper-11">사용</div> -->
											<div class="text-wrapper-12">쿠폰</div>
											<div class="text-wrapper-13">- 0원</div>
										</div>
										<div class="frame-11">
											<div class="text-wrapper-12">포인트</div>
											<div class="text-wrapper-99">- 0원</div>
										</div>
									</div>
									<button class="frame-12" onclick="requestPay()">결제하기</button>
									<img class="line"
										src="${cpath}/resources/images/wallet/Line9.png" />
									<div class="group-4">
										<div class="frame-10">
											<div class="text-wrapper-15">총 결제금액</div>
											<div class="text-wrapper-15" id="lastTotal">${total}원</div>
										</div>
										<div class="group-5">
											<!-- 	<p class="element-p">
												<span class="text-wrapper-16">적립 예정 포인트 </span> <span
													class="text-wrapper-3">P</span>
											</p> -->
											<%-- 			<img class="white-question-mark"
												src="${cpath}/resources/images/wallet/White question mark.png" /> --%>
										</div>
									</div>
									<img class="img"
										src="${cpath}/resources/images/wallet/Line9.png" />
								</c:when>
								<c:otherwise>
									<div class="group-3">
										<!-- 특별한 내용 없음 -->
										<!-- 배터지구 결제부분 -->
										<div style="top: 72px; position: relative; left: 80px;">주문
											금액</div>
										<div style="top: 52px; position: relative; left: 303px;">${total}원</div>
										<div class="frame-10">
											<div class="text-wrapper-11"></div>
											<div class="text-wrapper-12"
												style="position: absolute; top: 115px">쿠폰</div>
											<div class="text-wrapper-13" style="top: 115px">- 0원</div>
										</div>
										<div class="frame-11">
											<div class="text-wrapper-11"></div>
											<div class="text-wrapper-98"
												style="position: absolute; top: 110px">포인트</div>
											<div class="text-wrapper-99" style="top: 110px">- 0원</div>
										</div>
									</div>
									<button class="frame-12" onclick="requestPay()">결제하기</button>
									<img class="line"
										src="${cpath}/resources/images/wallet/Line9.png"
										style="top: 332px" />
									<div class="group-4">
										<div class="frame-10">
											<div class="text-wrapper-15">총 결제금액</div>
											<div class="text-wrapper-15" id="lastTotal">${total}원</div>
										</div>
										<div class="group-5">
											<!-- 										<p class="element-p">
												<span class="text-wrapper-16">적립 예정 포인트 </span> <span
													class="text-wrapper-3">P</span>
											</p> -->
										</div>
									</div>
									<img class="img"
										src="${cpath}/resources/images/wallet/Line9.png"
										style="position: relative; top: 260px;" />
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</div>

			</div>
			<div class="account-navigation">
				<div class="text-wrapper-17">결제하기</div>
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
	</div>
	<!-- modal -->
	<div id="myModal-" class="delmodal">
		<div class="modal-content">
			<span class="close">&times;</span> <br />
			<c:forEach items="${dlist}" var="del" varStatus="1">
				<div class="inp">
					배송지명: ${del.mem_delname}<br> 우편번호: ${del.mem_zipcode}<br>
					주소: ${del.mem_addr}<br> 상세주소: ${del.mem_detail}<br> <br>
					<!-- 선택 버튼 -->
					<button class="selectdel-button" data-delname="${del.mem_delname}"
						data-zipcode="${del.mem_zipcode}" data-addr="${del.mem_addr}"
						data-detail="${del.mem_detail}">선택</button>
				</div>
			</c:forEach>
		</div>
	</div>
	<div id="myModal-" class="couponmodal">
		<div class="modal-content">
			<span class="close">&times;</span> <br />
			<c:forEach items="${clist}" var="coupon" varStatus="1">
				<div class="inp">
					<c:if test="${coupon.coupon_check == '미사용'}">
                    쿠폰명: ${coupon.coupon_name}
                </c:if>
					<button class="selectCoupon-button"
						data-coupon_name="${coupon.coupon_name}">선택</button>
				</div>
			</c:forEach>
		</div>
	</div>
	<div id="overlay" class="overlay">
		<div id="successModal" class="modal">
			<div class="modal-content">
				<p>결제가 성공하였습니다.</p>
				<button onclick="closeModal()" class="closemodal">홈으로 이동하기</button>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">



</script>
<script type="text/javascript">

function openModal() {
	 var overlay = document.getElementById("overlay");
	  var successModal = document.getElementById("successModal");
	  overlay.style.display = "block";
	  successModal.style.display = "block";
	  
	}


	function closeModal() {
		 var overlay = document.getElementById("overlay");
		  var successModal = document.getElementById("successModal");
	  overlay.style.display = "none";
	  successModal.style.display = "none";
	  window.location.href="${cpath}/main.do";
	}
function loginBasket() {
	var mem_id = "${sessionScope.loginmem.mem_id}";
	
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
				},
				error : function(xhr, status, error) {
					console.error("콘솔 - Error during basket operation. Status: " + status);
					console.error("콘솔 - Server response: " + xhr.responseText);
				}
			});
}

function lightsOn() {
	let lights = document.createElement("div");
	lights.setAttribute("class","ellipse-light");
	lights.setAttribute("id","lightsOnID");
	document.querySelector("#lightsParent").append(lights);
	console.log("장바구니 가득 차서 불 켜짐!");
}

var IMP = window.IMP;
IMP.init("imp40668838"); // 내 가맹점 식별 코드

var amountWithCurrency = $("#lastTotal").text();
var amount = amountWithCurrency.substring(0, amountWithCurrency.length - 1);
var coupon = 0;	

function generateMerchantUid() {
    var timestamp = new Date().getTime();
    var random = Math.floor(Math.random() * 100000000)+'${olist[0].order_no}';
    var merchantUid = 'ORD' + timestamp + '-' + random;
    return merchantUid;
}

console.log(generateMerchantUid());

function requestPay() {
 	if ($('#sample4_postcode').val().length === 0) {
		alert("주소를 입력하세요");
		return;
	} 
 	
 	var sub9allist = ${not empty sub9allist};
 	  var sub9bllist = ${not empty sub9bllist};
 	  var sub19allist = ${not empty sub19allist};
 	  var sub19bllist = ${not empty sub19bllist};
 	  
	 var proCountElement = document.getElementById('pro_count');
/* 	 alert($("#lastTotal").text().substring(0, $("#lastTotal").text().length - 1)); */

	  if (sub9allist ||sub9bllist || sub19allist || sub19bllist) {
		  param = {
					order_price : $("#lastTotal").text().substring(0, $("#lastTotal").text().length - 1),
					pro_no : $("#subType").val(),
					orderdetail_count : $("#pro_count").text()
				}
				$.ajax({
					url : "${cpath}/subOrder",
					data : param,
					type : "post",
					success : function(res) {

					}
				})// 주문 테이블 / 주문 상세 인서트
	  } else {
	    // 기본 동작
		    $.ajax({
		    	url : "${cpath}/proOrder",
		    	type : "post",
				success : function(res) {
				
				}
		    })

	  }
	
	  
/* 	  var discountedAmount = 0;
	 
	if (!isNaN(amount)) {
	    // amount가 숫자일 때
	    var numericAmount = parseFloat(amount.replace(/,/g, ''));
	    discountedAmount = numericAmount - coupon; 
	} else {
	    // amount가 숫자가 아닐 때
	    var numericAmount = parseFloat(amount.replace(/,/g, ''));
	    if (!isNaN(numericAmount)) {
	        // `,`로 구분된 숫자인 경우
	   	discountedAmount = numericAmount - coupon; 
	    }
	} */
	
	var buyer_addr;

	if($("#sample4_jibunAddress").val() == "" ){
		
		buyer_addr = $("#guide").text().substring(10) + " "+ $("#sample4_detailAddress").val();
	}else{
		buyer_addr = $("#sample4_jibunAddress").val() + " "+ $("#sample4_detailAddress").val()
	}


	/* alert($('#proname').text()); */
	var proName;
	
	if($('#proname').text() == ""){
		proName = "구도락 단일 상품 주문";
		
	} else {
		proName = $('#proname').text();
	}
/* 	alert(proName); */
 	discountedAmount = $("#lastTotal").text().substring(0, $("#lastTotal").text().length - 1);
	var merchant_uid = generateMerchantUid();
	IMP.request_pay({
		pg : "inicis",
		pay_method : "card",
		merchant_uid : merchant_uid, // 매번 새로워야 함
		name : proName,
		amount : discountedAmount,
		buyer_email : "${mem.mem_id}",
		buyer_name : "${mem.mem_name}",
		buyer_tel : "${mem.mem_phone}",
		buyer_addr : buyer_addr,
		buyer_postcode : "01181"
	}, function(rsp) { // callback
	
		$.ajax({
			type : 'POST',
/* 			url : '${cpath}/verify/' + rsp.imp_uid + '?order_no=${order_no}', */
			url : '${cpath}/verify/' + rsp.imp_uid ,
		}).done(function(data) {
			console.log(data);

			if (data) {
				$.ajax({
					  url: "${cpath}/delBasket",
					  type: "post",
					  success: function(res) {
						
					  }
					});
				   
				openModal();
				
			} else {

				var msg = '결제에 실패하였습니다.\n' + '에러내용: ' + data.error_msg;
				alert(msg);
			}
		});
	});
}

//쿠폰할인
var lastTotalText = $("#lastTotal").text().replace(/\D/g, '');
var lastTotal = parseFloat(lastTotalText);
    
$("#couponApply").on("click", function() {
    var text = $(".text-wrapper-5").text();

    if (text === "보유 쿠폰 확인하기" || text === "보유한 쿠폰이 없습니다.") {
        return;
    }

    // "원"이 포함된 경우 금액 차감
    if (text.includes("원")) {
    	//alert("asdasdasd");
        var matches = text.match(/\d+/);
        if (matches) {
            var deductionAmount = parseFloat(matches[0]);
	
            // 숫자가 유효한 경우에만 연산 수행
            if (!isNaN(lastTotal)) {
                var newTotal = lastTotal - deductionAmount;

                // 차감된 결과를 출력
                $("#lastTotal").text(Math.floor(newTotal)+"원") ;
				
                // 할인된 금액을 ".text-wrapper-13"에 표시
                $(".text-wrapper-13").text("-" + Math.floor(deductionAmount) + "원");
            }
        }
    }

    // "%"가 포함된 경우 할인율 적용
    if (text.includes("%")) {
        var matches = text.match(/\d+/);
        if (matches) {
            var discountPercentage = parseFloat(matches[0]);
		
            // 숫자가 유효한 경우에만 연산 수행
            if (!isNaN(lastTotal)) {
                var discountAmount = (discountPercentage / 100) * lastTotal;
                var newTotal = lastTotal - discountAmount;
				
                // 할인된 결과를 출력
                $("#lastTotal").text(Math.floor(newTotal) +"원");

                // 할인된 금액을 ".`"에 표시
                $(".text-wrapper-13").text("-" + Math.floor(discountAmount) + "원");
   
            }
        }
    }
});


//포인트할인
var myPoint = $("#mypoint").text().replace(/\D/g, '');

//포인트 적용 버튼 클릭 이벤트 처리
$("#pointApply").on("click", function () {
    // 입력된 포인트 값을 가져오기
    var enteredPointText = $("#point").val();
	var enteredPoint = parseFloat(enteredPointText);
	
	var lastTotalText = $("#lastTotal").text().replace(/\D/g, '');
	var lastTotal = parseFloat(lastTotalText);

    // 숫자가 유효한 경우에만 연산 수행
    if (!isNaN(enteredPoint) && !isNaN(lastTotal)) {
    	
    	if(enteredPoint <= myPoint) {
            // 입력된 포인트를 "#lastTotal"에서 차감
            var newTotal = lastTotal - parseFloat(enteredPoint);

            // 차감된 결과를 출력
            $("#lastTotal").text(Math.floor(newTotal));
            
            // 할인된 금액을 ".text-wrapper-99"에 표시
            $(".text-wrapper-99").text("-" + Math.floor(enteredPoint) + "원");
    	}
    	else {
    		alert("보유 포인트를 다시 확인해주세요!");
    	}
    }

});

$(".my-del").on("click", function() {
	$(".delmodal").show();
})
$(".close").on("click", function() {
	$(".delmodal").hide();
	$(".couponmodal").hide();

})
$("#coupon").on("click", function() {
	$(".couponmodal").show();
})

	$(document).ready(function() {
		$(".selectdel-button").on("click", function() {

			// 선택된 배송지 정보 가져오기
			var selectedDelName = $(this).data("delname");
			var selectedZipcode = $(this).data("zipcode");
			var selectedAddr = $(this).data("addr");
			var selectedDetail = $(this).data("detail");
			$("#mem_delname").val(selectedDelName);
			$("#sample4_postcode").val(selectedZipcode);
			$("#sample4_jibunAddress").val(selectedAddr);
			$("#sample4_detailAddress").val(selectedDetail);

			$(".delmodal").css("display", "none");

		});

		$(".selectCoupon-button").on("click", function() {
			var coupon_name = $(this).data("coupon_name");
			$("#coupon").text(coupon_name);
			$(".couponmodal").css("display", "none");

		});
	});
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	$("#regnodel").hide();
	$("#nodel").show().css({
        'display': 'flex',
        'flex-direction': 'column',
        'margin-top': '-1.2rem'
    });
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample4_postcode').value = data.zonecode;
					document.getElementById("sample4_roadAddress").value = roadAddr;
					document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if (roadAddr !== '') {
						document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
						document.getElementById("sample4_extraAddress").value = '';
					}

					var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if (data.autoRoadAddress) {
						var expRoadAddr = data.autoRoadAddress
								+ extraRoadAddr;
						guideTextBox.innerHTML = '(예상 도로명 주소 : '
								+ expRoadAddr + ')';
						guideTextBox.style.display = 'block';

					} else if (data.autoJibunAddress) {
						var expJibunAddr = data.autoJibunAddress;
		/* 				guideTextBox.innerHTML = '예상 지번 주소 : '
								+ expJibunAddr + '';
						guideTextBox.style.display = 'block'; */
						document.getElementById("sample4_jibunAddress").value = expJibunAddr;
						
					} else {
						guideTextBox.innerHTML = '';
						guideTextBox.style.display = 'none';
					}
				}

			}).open();
	
}
</script>
</html>
