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
		location.href = '${pageContext.request.contextPath}/event/challenge2.do?challenge_no=' + challenge_no;
		alert('Redirect to challenge number ' + challenge_no);
}
</script>
</head>
<body>
	<div class="screen">
		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-wrapper-22">
						<a href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
					</div>
					<div class="text-wrapper-23">구독하기</div>
					<div class="text-wrapper-24">요모조모</div>
					<div class="text-wrapper-25">
						<a href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
					</div>
					<div class="text-wrapper-21">이벤트</div>
				</div>
				<img class="untitled-2" src="img/untitled-1-1.png" />
				<div class="div-2">
					<div class="text-wrapper-26">
						<span><a
							href="${pageContext.request.contextPath}/login/login.do">로그인</a></span>
						| <span> <a
							href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a></span>
					</div>
					<div class="group-5">
						<div class="overlap-group-5">
							<img class="group-6" src="img/group-1.svg" />
							<div class="ellipse-3"></div>
							<div class="text-wrapper-27">2</div>
						</div>
					</div>
				</div>
			</div>
		</header>
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
		<hr>
		<div id="main">
			<h4>우리 아이와 함께하고 혜택 받기</h4>
			<h5>구도락 회원이면 누구나 간단히 빠르게 참여하고 포인트를 받아가세요!</h5>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ch" items="${chlist}" varStatus="rowStatus">
						<tr onclick="redirectToChallenge(${ch.challenge_no})">
							<td>${ch.challenge_no}</td>
							<td>${ch.challenge_name}</td>
							<td>${ch.challenge_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul class="pagination">
			</ul>
		</div>
	</div>
	<div id="button" style="text-align: right;">
		<button type="button" class="right-aligned-button">챌린지 글쓰기</button>
	</div>
	<div class=e47_426>
		<div class=e47_454>
			<div class="e47_455"></div>
			<div class=e47_456>
				<div class=e47_457>
					<span class="e47_458">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e47_459"></div>
				</div>
				<div class=e47_460>
					<div class=e47_461>
						<div class=e47_462>
							<div class="e47_463"></div>
						</div>
						<div class=e47_464>
							<div class=e47_465>
								<div class="e47_466"></div>
							</div>
						</div>
					</div>
					<div class=e47_467>
						<div class=e47_468>
							<div class="e47_469"></div>
						</div>
						<div class=e47_470>
							<div class=e47_471>
								<div class="e47_472"></div>
							</div>
						</div>
					</div>
					<div class=e47_473>
						<div class=e47_474>
							<div class="e47_475"></div>
						</div>
						<div class=e47_476>
							<div class=e47_477>
								<div class="e47_478"></div>
							</div>
						</div>
					</div>
					<div class=e47_479>
						<div class=e47_480>
							<div class="e47_481"></div>
						</div>
						<div class=e47_482>
							<div class=e47_483>
								<div class="e47_484"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class=e47_485>
				<span class="e47_486">Contact Us</span>
				<div class=e47_487>
					<span class="e47_488">1234 Country Club Ave</span><span
						class="e47_489">NC 123456, London, UK</span><span class="e47_490">+0123
						456 7891</span>
				</div>
				<div class=e47_491>
					<div class="e47_492"></div>
					<div class=e47_493>
						<div class=ei47_493_21_320>
							<div class="ei47_493_21_320_3_106"></div>
						</div>
						<div class=ei47_493_21_324>
							<div class="ei47_493_21_324_17_203"></div>
						</div>
					</div>
					<span class="e47_494">Enter your email....</span>
				</div>
			</div>
			<div class=e47_495>
				<span class="e47_496">User Link</span>
				<div class=e47_497>
					<span class="e47_498">About Us</span><span class="e47_499">Contact
						Us</span><span class="e47_500">Order Delivery</span><span class="e47_501">Payment
						& Tex</span><span class="e47_502">Terms of Services</span>
				</div>
			</div>
			<div class=e47_503>
				<span class="e47_504">Opening Restaurant</span>
				<div class=e47_505>
					<span class="e47_506">Sat-Wet: 09:00am-10:00PM</span><span
						class="e47_507">Thursdayt: 09:00am-11:00PM</span><span
						class="e47_508">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>