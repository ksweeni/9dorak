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
	href="${cpath}/resources/css/lunchboxdetailStyle.css?d" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
				<br></br>
				<div class="board">
					<br> 
					<input type="text" value="${chall.challenge_name}" id="challenge_name"></input><br>
					<br><div class="cont"><div class="challenge_cont">도시락 한 줄 소개</div><br> 
					<input type="text" value="${chall.challenge_cont}" id="challenge_cont"></input><br>
					<br><div class="challenge_recipe">도시락 레시피</div><br> 
					<input type="text" value="${chall.challenge_recipe}" id="challenge_recipe"></input><br>
					<br><div class="mem_id">작성자</div><br> 
					<input type="text" value="${chall.mem_id}" id="mem_id"></input><br> 
					<br><div class="challenge_date">도시락 등록날짜</div><br>
					<input type="text" value="${chall.challenge_date}" id="challenge_date"></input><br>
					<br><div class="likeCnt">좋아요</div><br> <input type="text" value="${likeCnt}" readonly="readonly" id="likeCnt"></input></div><br>
					<br><br>
					<img src="${cpath}/resources/upload/${chall.challenge_image}" /> 
					<br>
					<input type="hidden" value="${chall.challenge_no}" id="challenge_no"></input> 
					<br>
					<div class="button_two">
						<c:if test="${loginmem.mem_id eq chall.mem_id}">
							<button class="button1" id="update">수정</button>
							<button class="button2" id="delete">삭제</button>

							<c:if test="${likeCheck == 1}">
								<button class="button3" id="like"
									style="background-color: #f38820; color: white;">좋아요</button>
								<input type="hidden" value="1" id="check">
							</c:if>
							<c:if test="${likeCheck == 0}">
								<button class="button3" id="like">좋아요</button>
								<input type="hidden" value="0" id="check">
							</c:if>

						</c:if>
						<c:if test="${loginmem.mem_id ne chall.mem_id}">
							<c:if test="${likeCheck == 1}">
								<button class="button4" id="like"
									style="background-color: #f38820; color: white;">좋아요</button>
								<input type="hidden" value="1" id="check">
							</c:if>
							<c:if test="${likeCheck == 0}">
								<button class="button4" id="like">좋아요</button>
								<input type="hidden" value="0" id="check">
							</c:if>
						</c:if>
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
</body>
<script>
$("#update").on("click", function() {
	/*  alert("알림입니다"); */
	//alert($("#challenge_name").val())
	var challenge_name = $("#challenge_name").val();
	var challenge_cont = $("#challenge_cont").val();
	var challenge_recipe = $("#challenge_recipe").val();
	var challenge_date = $("#challenge_date").val();
	var challenge_no = $("#challenge_no").val();
	var param = {
		"challenge_name" : challenge_name,
		"challenge_cont" : challenge_cont,
		"challenge_recipe" : challenge_recipe,
		"challenge_no" : challenge_no
	}
	$.ajax({
		url : "${cpath}/event/challengeUpdate.do",
		type : "post",
		data : param,
		success : function(res) {
			/* alert(res); */
			location.href = "${cpath}/event/makelunchbox.do";
		}
	})
}) // update

$("#delete").on("click", function() {

	var challenge_no = $("#challenge_no").val();
	var param = {
		"challenge_no" : challenge_no
	}
	$.ajax({
		url : "${cpath}/event/challengeDelete.do",
		type : "post",
		data : param,
		success : function(res) {
			/* alert(res); */
			location.href = "${cpath}/event/makelunchbox.do";
		}
	})
}) // delete

$("#like").on("click", function() {
	/*  alert($("#challenge_no").val());*/
	/* alert($("#check").val()) */
	
		var challenge_no = $("#challenge_no").val();
	var param = {
			"challenge_no" : challenge_no,
			"check" : $("#check").val()
		}
	$.ajax({
		url : "${cpath}/event/challengelikeUpdate.do",
		type : "post",
		data : param,
		success : function(res) {
			/* alert(res); */
			if(res=="좋아요 성공"){
			      var likeCntInput = $("#likeCnt");
			      var currentLikeCnt = parseInt(likeCntInput.val());
			      var newLikeCnt = currentLikeCnt + 1;
			      likeCntInput.val(newLikeCnt);
			      location.reload();
			}
			else if(res=="좋아요 취소"){
			      var likeCntInput = $("#likeCnt");
			      var currentLikeCnt = parseInt(likeCntInput.val());
			      var newLikeCnt = currentLikeCnt - 1;
			      likeCntInput.val(newLikeCnt);		
			      location.reload();
			}
			/* location.href = "${cpath}/event/challenge.do"; */
		}
	})
});

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
