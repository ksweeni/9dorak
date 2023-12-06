<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/menuMediaReviewStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<div class="group">
				<div class="overlap-group">
					<div class="frame">
						<div class="frame-2">
							<div class="group-2">
								<div class="frame-3">
									<div class="text-wrapper">ksween</div>
									<div class="text-wrapper-2">2023.11.21</div>
								</div>
								<div class="frame-4">
									<div class="text-wrapper-2">[배부르9] 한종범 불고기 도시락</div>
								</div>
							</div>
							<div class="frame-5">
								<div class="frame-6">
									<div class="menu" style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div>
									<div class="view">
										<div class="frame-7">
											<div class="frame-5">
												<div class="text-wrapper">맛</div>
												<div class="text-wrapper-3">최고에요</div>
											</div>
											<div class="frame-8">
												<div class="text-wrapper">만족도</div>
												<div class="text-wrapper-3">최고에요</div>
											</div>
										</div>
										<p class="p">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !! 데브옵스가 끝나고 허겁지겁
											먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 흐르르루룳 또 머고시퍼요 다이어ㅡ 실패 ~</p>
										<div class="frame-9">
											<img class="happy"
										src="${cpath}/resources/images/menu/happy-unfill.svg" />
											<div class="text-wrapper-4">유용해요</div>
											<div class="text-wrapper-4">0</div>
										</div>
									</div>
								</div>
								<div class="frame-10">
									<div class="menu-2"></div>
									<div class="menu-3"></div>
									<div class="menu-4"></div>
									<div class="menu-5"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="scroll-bar-vertical">
						<div class="thumb-size">
							<div class="thumb"></div>
							<div class="track-spacer"></div>
							<div class="track-spacer"></div>
							<div class="track-spacer"></div>
						</div>
					</div>
				</div>
			</div>
			
			<script>
			// 유용해요 클릭 및 유용 수 증가 
		    document.addEventListener('DOMContentLoaded', function () {
		        document.querySelectorAll('.happy').forEach(function (element) {
		            element.addEventListener('click', function () {
		                console.log("clicked");
		                this.classList.toggle('happy-unfill');
		                this.classList.toggle('happy-fill');

		                // 이미지 변경
		                const imageSrc = this.classList.contains('happy-fill')
		                    ? `${cpath}/resources/images/menu/happy-fill.svg`
		                    : `${cpath}/resources/images/menu/happy-unfill.svg`;
		                this.src = imageSrc;

		                // 유용해요 옆의 숫자 count up
		                const countElement = this.nextElementSibling.nextElementSibling;
		                let count = parseInt(countElement.textContent);

		                // Check if count is a valid number before updating
		                if (!isNaN(count)) {
		                    countElement.textContent = this.classList.contains('happy-fill') ? count + 1 : count - 1;
		                }
		            });
		        });
		    });
			</script>
			
			
			<footer class="footer">
				<div class="company-loco">
					<div class="company">
						<p class="text-wrapper-5">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Commodo libero viverra dapibus odio
							sit malesuada in quis. Arcu tristique elementum viverra integer
							id.</p>
						<img class="untitled" src="img/untitled-1-2.png" />
					</div>
					<div class="social-icon">
						<div class="facebook">
							<img class="mask-group" src="img/mask-group-2.png" />
						</div>
						<div class="instagram">
							<img class="img" src="img/mask-group.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-2" src="img/mask-group-3.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-2" src="img/mask-group-4.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-6">Contact Us</div>
					<div class="group-3">
						<div class="text-wrapper-7">1234 Country Club Ave</div>
						<div class="text-wrapper-8">NC 123456, London, UK</div>
						<div class="text-wrapper-9">+0123 456 7891</div>
					</div>
					<div class="overlap-group-wrapper">
						<div class="overlap-group-2">
							<div class="vector-wrapper">
								<img class="vector" src="img/vector.svg" />
							</div>
							<div class="text-wrapper-10">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-11">User Link</div>
					<div class="group-4">
						<div class="text-wrapper-7">About Us</div>
						<div class="text-wrapper-8">Contact Us</div>
						<div class="text-wrapper-9">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tex</div>
						<div class="text-wrapper-12">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-11">Opening Restaurant</div>
					<div class="group-5">
						<div class="text-wrapper-7">Sat-Wet: 09:00am-10:00PM</div>
						<div class="text-wrapper-8">Thursdayt: 09:00am-11:00PM</div>
						<div class="text-wrapper-9">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-wrapper-13">이벤트</div>
						<div class="text-wrapper-14">메뉴보기</div>
						<div class="text-wrapper-15">구독하기</div>
						<div class="text-wrapper-16">요모조모</div>
						<div class="text-wrapper-17">도란도란</div>
					</div>
					<img class="untitled-2" src="img/untitled-1-1.png" />
					<div class="div-2">
						<div class="text-wrapper-18">로그인 | 회원가입</div>
						<div class="group-6">
							<div class="overlap-group-3">
								<img class="group-7" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-19">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			
		</div>
	</div>
</body>
</html>