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
	href="${cpath}/resources/css/challengeStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
/* 	function pagination() {
		var req_num_row = 5;
		var $tr = jQuery('tbody tr');
		var total_num_row = $tr.length;
		var num_pages = 0;
		if (total_num_row % req_num_row == 0) {
			num_pages = total_num_row / req_num_row;
		}
		if (total_num_row % req_num_row >= 1) {
			num_pages = total_num_row / req_num_row;
			num_pages++;
			num_pages = Math.floor(num_pages++);
		}

		jQuery('.pagination').append("<li><a class=\"prev\">Previous</a></li>");

		for (var i = 1; i <= num_pages; i++) {
			jQuery('.pagination').append("<li><a>" + i + "</a></li>");
			jQuery('.pagination li:nth-child(2)').addClass("active");
			jQuery('.pagination a').addClass("pagination-link");
		}

		jQuery('.pagination').append("<li><a class=\"next\">Next</a></li>");

		$tr.each(function(i) {
			jQuery(this).hide();
			if (i + 1 <= req_num_row) {
				$tr.eq(i).show();
			}
		});

		jQuery('.pagination a').click('.pagination-link', function(e) {
			e.preventDefault();
			$tr.hide();
			var page = jQuery(this).text();
			var temp = page - 1;
			var start = temp * req_num_row;
			var current_link = temp;

			jQuery('.pagination li').removeClass("active");
			jQuery(this).parent().addClass("active");

			for (var i = 0; i < req_num_row; i++) {
				$tr.eq(start + i).show();
			}

			if (temp >= 1) {
				jQuery('.pagination li:first-child').removeClass("disabled");
			} else {
				jQuery('.pagination li:first-child').addClass("disabled");
			}

		});

		jQuery('.prev').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:first-child').removeClass("active");
		});

		jQuery('.next').click(function(e) {
			e.preventDefault();
			jQuery('.pagination li:last-child').removeClass("active");
		});

	}

	jQuery('document').ready(function() {
		pagination();

		jQuery('.pagination li:first-child').addClass("disabled");

	}); */
function redirectToChallenge(challenge_no) {
		location.href = '${pageContext.request.contextPath}/event/challengeDetail.do?challenge_no=' + challenge_no;
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
		<div id="event_menu">
			<ul>
				<li><a>챌린지 ZONE</a></li>
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
		<div id="main">
			<h4>우리 아이와 함께하고 혜택 받기</h4>
			<h5>구도락 회원이면 누구나 간단히 빠르게 참여하고 포인트를 받아가세요!</h5>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<!-- <th>번호</th> -->
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="ch" items="${chlist}" varStatus="rowStatus">
						<tr onclick="redirectToChallenge(${ch.challenge_no})">
					<%-- 		<td>${ch.challenge_no}</td> --%>
							<td>${ch.challenge_name}</td>
							<td>${ch.mem_id}</td>
							<td>${ch.challenge_date}</td>
						</tr>
					</c:forEach>
					<%-- 					<c:forEach var="ch" items="${chlist}" varStatus="rowStatus">
						<tr onclick="redirectToChallenge(${ch.CHALLENGE_NO})">
							<td>${ch.CHALLENGE_NO}</td>
							<td>${ch.CHALLENGE_NAME}</td>
							<td>${ch.CHALLENGE_DATE}</td>
						</tr>
					</c:forEach> --%>
				</tbody>
			</table>
			<!-- 게시판 테스트 -->
			<div class="table_number">
				<c:if test="${pagingVO.currentRange ne 1 }">
					<a href="#" onclick="fn_paging(1)">[처음]</a>
				</c:if>
				<c:if test="${pagingVO.currentRange ne 1 }">
					<a href="#" onclick="fn_paging('${pagingVO.prevPage}')">[이전]</a>
				</c:if>
				<c:forEach var="pageNum" begin="${pagingVO.beginPage }"
					end="${pagingVO.endPage }">
					<c:choose>
						<c:when
							test="${pageNum eq pagingVO.currentPage && search eq null}">
							<span><a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a></span>
						</c:when>
						<c:when
							test="${pageNum eq pagingVO.currentPage && search ne null}">
							<span><a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a></span>
						</c:when>
						<c:otherwise>
							<a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if
					test="${pagingVO.currentPage ne pagingVO.totalPage && pagingVO.totalPage > 0 }">
					<a href="#" onclick="fn_paging('${pagingVO.nextPage}')">[다음]</a>
				</c:if>
				<c:if
					test="${pagingVO.currentRange ne pagingVO.totalRange && pagingVO.totalRange > 0 }">
					<a href="#" onclick="fn_paging('${pagingVO.totalPage}')">[끝]</a>
				</c:if>
			</div>
			<ul class="pagination">
			</ul>
		</div>
			<div id="button" style="text-align: right;">
		<button type="button" class="right-aligned-button">챌린지 글쓰기</button>
	</div>
	</div>
	<div class=e47_426>
			<footer class="footer" style="top:30rem;">
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
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
	</div>
</body>

<script type="text/javascript">

 	$(".right-aligned-button").on("click",function(){
		location.href = "${cpath}/event/insertChal.do";
	}) 

function fn_paging(currentPage) {


	location.href = "${cpath}/event/challenge.do?currentPage=" + currentPage ;
	}
 	
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
</html>