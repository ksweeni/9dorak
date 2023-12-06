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
	href="${cpath}/resources/css/friendaddStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div class="screen">
		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-wrapper-21">이벤트</div>
					<div class="text-wrapper-22">메뉴보기</div>
					<div class="text-wrapper-23">구독하기</div>
					<div class="text-wrapper-24">요모조모</div>
					<div class="text-wrapper-25">도란도란</div>
				</div>
				<img class="untitled-2" src="img/untitled-1-1.png" />
				<div class="div-2">
					<div class="text-wrapper-26">로그인 | 회원가입</div>
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
				<li><a>친구 추가</a></li>
			</ul>
		</div>
	</div>
	<hr>
	<div class=e62_324>
		<div class=e62_385>
			<div class="e62_386"></div>
			<div class=e62_387>
				<div class=e62_388>
					<span class="e62_389">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e62_390"></div>
				</div>
				<div class=e62_391>
					<div class=e62_392>
						<div class=e62_393>
							<div class="e62_394"></div>
						</div>
						<div class=e62_395>
							<div class=e62_396>
								<div class="e62_397"></div>
							</div>
						</div>
					</div>
					<div class=e62_398>
						<div class=e62_399>
							<div class="e62_400"></div>
						</div>
						<div class=e62_401>
							<div class=e62_402>
								<div class="e62_403"></div>
							</div>
						</div>
					</div>
					<div class=e62_404>
						<div class=e62_405>
							<div class="e62_406"></div>
						</div>
						<div class=e62_407>
							<div class=e62_408>
								<div class="e62_409"></div>
							</div>
						</div>
					</div>
					<div class=e62_410>
						<div class=e62_411>
							<div class="e62_412"></div>
						</div>
						<div class=e62_413>
							<div class=e62_414>
								<div class="e62_415"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class=e62_416>
				<span class="e62_417">Contact Us</span>
				<div class=e62_418>
					<span class="e62_419">1234 Country Club Ave</span><span
						class="e62_420">NC 123456, London, UK</span><span class="e62_421">+0123
						456 7891</span>
				</div>
				<div class=e62_422>
					<div class="e62_423"></div>
					<div class=e62_424>
						<div class=ei62_424_21_320>
							<div class="ei62_424_21_320_3_106"></div>
						</div>
						<div class=ei62_424_21_324>
							<div class="ei62_424_21_324_17_203"></div>
						</div>
					</div>
					<span class="e62_425">Enter your email....</span>
				</div>
			</div>
			<div class=e62_426>
				<span class="e62_427">User Link</span>
				<div class=e62_428>
					<span class="e62_429">About Us</span><span class="e62_430">Contact
						Us</span><span class="e62_431">Order Delivery</span><span class="e62_432">Payment
						& Tex</span><span class="e62_433">Terms of Services</span>
				</div>
			</div>
			<div class=e62_434>
				<span class="e62_435">Opening Restaurant</span>
				<div class=e62_436>
					<span class="e62_437">Sat-Wet: 09:00am-10:00PM</span><span
						class="e62_438">Thursdayt: 09:00am-11:00PM</span><span
						class="e62_439">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
		</div>


		<div class=e62_466>

			<div class=e62_325>
				<div class=e62_326>
					<p class="e62_327">친구 추가로 혜택을 함께 누려보세요</p>
					<p class="e62_328">지인이나 가족 목록에 사람을 추가해보세요! 회원 코드를 복사하고 등록하면</p>
				</div>
			</div>
			<span class="e62_465">두 분 모두에게 <span class="pointer">900P</span>
				를 드려요 !
			</span>
		</div>
		<div class=e63_173>
			<span class="e62_373">추가한 친구</span><span class="e62_374">추가된
				친구</span>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			function fadeInSequentially(elements, interval) {
				var index = 0;
				var intervalId = setInterval(function() {
					elements.eq(index).addClass("active");
					index++;

					if (index === elements.length) {
						clearInterval(intervalId);
					}
				}, interval);
			}

			var elements = $(".e62_326, .e63_173, .e62_465");
			fadeInSequentially(elements, 500); // 각 요소가 1초 간격으로 나타납니다.
		});
	</script>
</body>
</html>