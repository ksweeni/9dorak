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
	href="${cpath}/resources/css/familyListStyle.css?s" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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
	<div
		class="u4358u4449u4363u4469u4369u4454u4363u4469u4364u4469-u4364u4469u4363u4469u4523-u4358u4457u4520u4357u4457u4520-u4364u4457u4370u4460 screen">

		<div class="account-navigation">
			<div class="frame-481485">
				<div class="text-7 valign-text-middle">마이페이지</div>
				<div class="li">
					<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10"
						viewBox="0 0 6 10" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
							d="M0.38408 0.949976C0.332645 0.898177 0.291917 0.836754 0.264221 0.769215C0.236524 0.701676 0.222402 0.629342 0.22266 0.556345C0.222918 0.483348 0.237551 0.411116 0.265724 0.343775C0.293897 0.276433 0.335058 0.215299 0.386858 0.163865C0.438657 0.112431 0.50008 0.0717024 0.567619 0.0440059C0.635158 0.0163094 0.707491 0.00218694 0.780489 0.00244488C0.853486 0.00270282 0.925717 0.0173361 0.993059 0.0455092C1.0604 0.0736823 1.12153 0.114844 1.17297 0.166643L5.61741 4.61109C5.72089 4.71518 5.77896 4.85598 5.77896 5.00275C5.77896 5.14952 5.72089 5.29033 5.61741 5.39442L1.17297 9.83886C1.12153 9.89066 1.0604 9.93182 0.993059 9.96C0.925717 9.98817 0.853486 10.0028 0.780489 10.0031C0.707491 10.0033 0.635158 9.9892 0.567619 9.9615C0.50008 9.93381 0.438657 9.89308 0.386858 9.84164C0.335058 9.79021 0.293897 9.72908 0.265724 9.66173C0.237551 9.59439 0.222918 9.52216 0.22266 9.44916C0.222402 9.37617 0.236524 9.30383 0.264221 9.23629C0.291917 9.16875 0.332645 9.10733 0.38408 9.05553L4.43408 5.00553L0.38408 0.949976Z"
							fill="#767676" />
</svg>
					<div class="text-8">친구 목록 조회</div>
				</div>
			</div>
			<h1 class="text-9"
				style="margin-top: 52px; font-weight: 800; position: relative; top: 5px;">친구
				목록 조회</h1>
		</div>
		<div class="overlap-group2">
			<div class="menu">
				<div class="username">
					<!-- 					<div class="medium"></div> -->
					<c:choose>
						<c:when
							test="${sessionScope.loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
							<div class="medium"
								style="background-image: url(${cpath}/${sessionScope.loginmem.mem_image});"></div>
						</c:when>
						<c:otherwise>
							<div class="medium"
								style="background-image: url(${cpath}/resources/upload/${sessionScope.loginmem.mem_image}); "></div>
						</c:otherwise>
					</c:choose>
					<div class="flex-col">
						<div class="text-3 valign-text-middle">${loginmem.mem_name }</div>
						<div class="lv valign-text-middle">LV.${loginmem.mem_grade }</div>
					</div>
				</div>
				<div class="links">
					<div class="links-1">
						<div class="privacy-1 privacy-3">
							<a class="text-4 valign-text-middle inter-bold-black-14px"
								href="${pageContext.request.contextPath}/my/familyReg.do">
								친구 등록</a>
						</div>
					</div>
					<div class="privacy-2 privacy-3">
						<div class="text-5 valign-text-middle">친구 목록 조회</div>
					</div>
				</div>
			</div>
		</div>

		<div class="familyList">
			<jsp:include page="familyList_ajax.jsp"></jsp:include>
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
</body>
<script>
function deleteSelect() {
    var form = document.getElementById('deleteForm');
    var checkboxes = document.querySelectorAll('.rowCheckbox');
    var checkedOne = Array.prototype.slice.call(checkboxes).some(x => x.checked);

    if (!checkedOne) {
        alert('삭제할 친구를 선택해주세요.');
        return false;
    }

    if (confirm('선택한 친구를 정말 삭제하시겠습니까?')) {
    	var arr = [];
    	$(".rowCheckbox").each(function(index, item){
    		if($(this).prop("checked")){
    			arr.push($(item).val());
    		}
    		
    	});
    	console.log(arr);
	    var obj = {"selectedIds":arr};
	    $.ajax({
	 	   url:"${pageContext.request.contextPath}/my/deleteFamilyMembers",
	 	   data:obj,
	 	   type: "post",
	 	   success: function(responsData){
	 		   $(".familyList").html(responsData);
	 	   }
	    });
    }
}

//장바구니 
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






