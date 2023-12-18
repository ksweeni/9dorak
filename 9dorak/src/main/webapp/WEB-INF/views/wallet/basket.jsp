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
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/basketStyle.css?d"
	type="text/css" />
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
<style>
.nullorder {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}
</style>
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

			<div class="smallMenu">
				<div class="text-wrapper-20">회원등급</div>
				<div class="text-wrapper-21">장바구니</div>
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
												<img class="img" src="/myapp/resources/images/menu/plus.png">
												<div class="frame-8">
													<div class="text-wrapper-7">1</div>
												</div>
												<img class="img" src="/myapp/resources/images/menu/minus.png">
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
				<!-- 내 장바구니! -->
				<c:if test="${empty blist}">
				<div class="empty">
					<p>장바구니가 텅 비었어요! 상품을 담아주세요!!</p>
					</div>
				</c:if>
			</div>
							
							
					<c:forEach items="${basket}" var="basket" varStatus="status">
							<div class="cart-menus-wrapper">
								<div class="cart-menus">
									<div class="frame-14">
										<div class="frame-15">
											 <!-- 
											<div class="text-wrapper-14" style="display:${basket[status.index].basket_date==basket[(status.index-1)].basket_date?'none':'block' }">${basket.basket_date}</div>
											-->
											
											
											
									<!--		
                    <div class="text-wrapper-14" style="display:${basket[status.index].basket_date == basket[(status.index-1)].basket_date?'none':'show'}">${basket.basket_date}</div>
											-->
											
											
											  
											<div class="text-wrapper-14">${basket.basket_date}</div>
											<div class="group-2">
												<div class="frame-16">
													<div class="frame-17">
														<img class="rectangle" src="${cpath}/${basket.proimage_image}" />
														<div class="frame-18">
															<div class="text-wrapper-15">${basket.pro_name}</div>
															
															
															<input class="text-wrapper-16" id="proPrice" type="number" min="7000" value="${basket.pro_price}" readOnly />
															
															<div class="text-wrapper-3" id="total-amount">
									총 금액 <span id="totalAmount">${basket.pro_price}</span>
									원
								</div>
														</div>
													</div>
													
													<div class="button-product-add">
													<input class="text-wrapper-17" id="countNumb" type="number" min="1" value="${basket.basket_pro_count}" readOnly />
													
													<!-- 
														<div class="text-wrapper-17" id="countNumb">${basket.basket_pro_count}</div>  -->
														<div class="entypo-plus-wrapper" onclick="increaseBasketProCount()">
															<img class="img-3" src="/myapp/resources/images/menu/plus.png">
														</div>
														<div class="entypo-minus-wrapper" onclick="decreaseBasketProCount()">
															<img class="img-3" src="/myapp/resources/images/menu/minus.png">
														</div>
													</div>
													
												</div>
												<img class="close"
													src="${cpath}/resources/images/wallet/delete_btn.svg" />
													
												<div class="frame-19">
													<input type="checkbox" class="checkbox-2" name="selection" value="${basket.pro_no}" onchange="logCheckboxValue(this)">
													<div class="text-wrapper-18">${basket.mem_name}</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="frame-13">
								
								
								<div class="view-3">
									<input type="checkbox" class="checkbox" name="selection" onclick="checkBoxSelector()">
									<div class="text-wrapper-12">선택해제</div>
								</div>
								<div class="text-wrapper-13">선택삭제</div>
							</div>
								
								
							</div>
							</c:forEach>
							
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
function logCheckboxValue(checkbox) {
    console.log("Checkbox value: ", checkbox.value);
}

// 체크 박스 선택
var isChecked = false;

function checkBoxSelector() {
    if (isChecked) {
    	selectAll();
    	unselectAll();
    } else {
    	selectAll();
    }
    isChecked = !isChecked;
}

function selectAll() {
	var checkboxes = document.getElementsByName('selection');
    
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = true;
    }
}

function unselectAll() {
var checkboxes = document.getElementsByName('selection');
    
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = false;
    }
}

// 장바구니 상품 수량 변화
var proCountElement = document.getElementById('countNumb'); // 최소값 설정
var proPriceElement = document.getElementById('proPrice'); // 상품 가격

var proCount = parseInt(proCountElement.value); // 최소값 설정
var proPrice = parseFloat(proPriceElement.value); // 상품 가격

function increaseBasketProCount() {
	proCount++;
  updateBasketProCount();
}

function decreaseBasketProCount() {
	proCount = Math.max(1, proCount-1);
  updateBasketProCount();
}

function updateBasketProCount() {
    var totalAmount = proCount * proPrice;
    console.log("Total Amount:", totalAmount);
    console.log("Total count:", proCount);
    proCountElement.value = proCount;
    document.getElementById('totalAmount').value = totalAmount;
}


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
