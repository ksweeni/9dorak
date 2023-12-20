<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/payStyle.css"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
<style type="text/css">
#myModal- {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 10;
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}
</style>
</head>
<body>
	<div class="screen">
		<div class="div">
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

													배송지명 : <input type="text" id="mem_delname"
														placeholder="배송지명" value="${dlist[0].mem_delname }">
													<br> 우편번호 : <input type="text" id="sample4_postcode"
														placeholder="우편번호" value="${dlist[0].mem_zipcode}" /> <br>
													<input type="hidden" id="sample4_roadAddress"
														placeholder="도로명주소" /> 주소 : <input type="text"
														id="sample4_jibunAddress" placeholder="지번주소"
														value="${dlist[0].mem_addr} ${dlist[0].mem_detail}" /> <span
														id="guide" style="color: #999; display: none"></span> <br />
													상세주소 : <input type="text" id="sample4_detailAddress"
														placeholder="상세주소" value="${dlist[0].mem_detail}">
													<input type="hidden" id="sample4_extraAddress"
														placeholder="참고항목" /> <br />
													<!--  -->
													<a class="entypo-plus-wrapper"
														onclick="sample4_execDaumPostcode()"> <img
														class="entypo-plus"
														src="${cpath}/resources/images/wallet/plus.png" />
													</a>

												</div>
											</div>
											<div class="my-del-button">
												<button class="my-del">나의 배송지 확인</button>
											</div>
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
							<div class="frame-4">
								<div class="text-wrapper-4">쿠폰 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<!--  -->
									<c:choose>
										<c:when test="${clist.size() !=0 }">
											<div class="text-wrapper-5" id = "coupon">보유 쿠폰 확인하기</div>
										</c:when>
										<c:when test="${clist.size() ==0 }">
											<div class="text-wrapper-5">보유한 쿠폰이 없습니다.</div>
										</c:when>
									</c:choose>

									<!--  -->
								</div>
							</div>
							<div class="text-wrapper-6">쿠폰</div>
						</div>
					</div>
					<div class="points">
						<p class="p">
							<span class="span">보유 포인트 </span> <span class="text-wrapper-3">${mem.mem_point }
								P</span>
						</p>
						<div class="group-2">
							<div class="frame-4">
								<div class="text-wrapper-7">포인트 적용</div>
							</div>
							<div class="overlap-group-wrapper">
								<input class="overlap-group" value="0">
									<!-- <div class="text-wrapper-5">0</div> -->
								</input>
							</div>
							<div class="text-wrapper-6">포인트</div>
						</div>
					</div>
					<div class="payment">
						<div class="view-wrapper">
							<div class="view">
								<input type="checkbox" class="checkbox" id="creditCard"
									name="paymentMethod" value="creditCard"> <label
									for="creditCard" class="text-wrapper-8">신용카드</label>
							</div>
						</div>
						<div class="frame-5">
							<div class="view-2">
								<input type="checkbox" class="checkbox" id="bankTransfer1"
									name="paymentMethod" value="bankTransfer1"> <label
									for="bankTransfer1" class="text-wrapper-8">계좌 이체</label>
							</div>
						</div>
						<div class="frame-6">
							<div class="view-2">
								<input type="checkbox" class="checkbox" id="bankTransfer2"
									name="paymentMethod" value="bankTransfer2"> <label
									for="bankTransfer2" class="text-wrapper-8">계좌 이체</label>
							</div>
						</div>
						<div class="text-wrapper-6">결제수단</div>
					</div>

				</div>
				<div class="info">
					<div class="frame-7">
						<div class="frame-8">
							<div class="text-wrapper-9">결제정보</div>
							<div class="text-wrapper-10">total 2 Items</div>
						</div>
					</div>
					<div class="frame-9">
						<div class="text-wrapper-11">주문 금액</div>
						<div class="text-wrapper-11">83,400 원</div>
					</div>
					<div class="group-3">
						<div class="frame-10">
							<div class="text-wrapper-11">사용</div>
							<div class="text-wrapper-12">쿠폰</div>
							<div class="text-wrapper-13">-1,000 원</div>
						</div>
						<div class="frame-11">
							<div class="text-wrapper-12">포인트</div>
							<div class="text-wrapper-13">-500 P</div>
						</div>
					</div>
					<div class="frame-12">
						<div class="text-wrapper-14">결제하기</div>
					</div>
					<img class="line" src="img/line-10.svg" />
					<div class="group-4">
						<div class="frame-10">
							<div class="text-wrapper-15">총 결제금액</div>
							<div class="text-wrapper-15">81,900 원</div>
						</div>
						<div class="group-5">
							<p class="element-p">
								<span class="text-wrapper-16">적립 예정 포인트 </span> <span
									class="text-wrapper-3"> 35 P</span>
							</p>
							<img class="white-question-mark"
								src="img/white-question-mark.svg" />
						</div>
					</div>
					<img class="img" src="img/line-9.svg" />
				</div>
			</div>
			<div class="account-navigation">
				<div class="text-wrapper-17">결제하기</div>
			</div>
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


	<div id="myModal-" class="delmodal" style="display: none">
		<div class="modal-content">
			<span class="close">&times;</span> <br />

			<c:forEach items="${dlist }" var="del" varStatus="1">
				<div style="border: 1px solid gray; border-radius: 30px;">
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

	<div id="myModal-" class="couponmodal" style="display: none">
		<div class="modal-content">
			<span class="close">&times;</span> <br />
			<c:forEach items="${clist }" var="coupon" varStatus="1">
				<div style="border: 1px solid gray; border-radius: 30px;">
					<c:if test="${coupon.coupon_check == '미사용' }">
				쿠폰명 : ${coupon.coupon_name }
				</c:if>
					<button class="selectCoupon-button" data-coupon_name="${coupon.coupon_name}"
						>선택</button>
				</div>
			</c:forEach>
		</div>
	</div>
</body>

<script type="text/javascript">
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
</script>

<script type="text/javascript">
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
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
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
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</html>
