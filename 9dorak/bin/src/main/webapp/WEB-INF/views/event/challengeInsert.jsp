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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/challengeStyle3.css?d" type="text/css" />
	
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<div class="frame-2">
				<div class="frame-3">
					<div class="frame-4">
						<div class="text-wrapper-3">챌린지 참여하기</div>
						<img class="line" src="img/line-5.svg" />
					</div>
				</div>
			</div>
			<div class="overlap">
				<div class="group">
					<div class="overlap-group">
						<form action="${cpath}/event/insertChal.do" method="post"
							enctype="multipart/form-data">
							<!-- 제목 -->
							<div class="group">
								<div class="overlap-group-2">
									<div class="input-wrapper">
										<div class="input">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">제목</div>
												</div>
											</div>
											<input class="container-default" type="text"
												name="challenge_name" placeholder="참여하는 챌린지의 이름을 입력해주세요" />
										</div>
									</div>
									<!-- 내용 -->
									<div class="group-2">
										<div class="input-2">
											<div class="label-check-helper">
												<div class="label-check">
													<div class="text-wrapper">내용</div>
												</div>
											</div>
											<input class="container-default-2" type="text"
												name="challenge_cont" placeholder="본인이 참여한 내용을 자세히 적어주세요" />
										</div>
									</div>

									<!-- 챌린지 참여 시작일, 챌린지 참여 종료일 -->
									<div class="group-3">
										<div class="group-4">
											<div class="input-3">
												<div class="label-check-helper">
													<div class="label-check">
														<div class="text-wrapper">챌린지 참여 시작일</div>
													</div>
												</div>
												<input class="container-default-3" type="date"
													name="challenge_start" />
											</div>
										</div>
										<div class="group-6">
											<div class="input-4">
												<div class="label-check-helper">
													<div class="label-check">
														<div class="text-wrapper">챌린지 참여 종료일</div>
													</div>
												</div>
												<input class="container-default-3" type="date"
													name="challenge_end" placeholder="챌린지 종료 날짜" />
											</div>
										</div>
									</div>
<!-- 파일 선택 부분 js로 수정함 -->
<div class="bottom">
<label class="fileUpload" for="singleFile" onmousedown="handleMouseDown(event)">파일 선택</label>
<input type="file" name="singleFile" id="singleFile" style="display: none;"/>

<span id="selectedFileName"></span>

<script>
function handleMouseDown(event) {
    event.preventDefault();
    var fileInput = document.getElementById("singleFile");
    fileInput.click();
}

document.addEventListener("DOMContentLoaded", function() {
    var fileInput = document.getElementById("singleFile");
    var selectedFileNameSpan = document.getElementById("selectedFileName");

    fileInput.addEventListener("change", function() {
        if (fileInput.files.length > 0) {
            selectedFileNameSpan.textContent = fileInput.files[0].name;
        } else {
            selectedFileNameSpan.textContent = "";
        }
        console.log("File selected:", fileInput.files[0].name);
    });
});
</script>

										<!-- 글쓰기 버튼 -->
										<button type="submit" class="right-aligned-button">글쓰기</button>
									</div>
								</div>
							</div>
						</form>
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
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			<img class="group-10" src="img/group-481746.png" />
			<div class="navbar">
				<div class="element-aug"
					onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
					style="cursor: pointer;">챌린지 ZONE</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/freelunchbox.do'"
					style="cursor: pointer;">도시락 무료 체험</div>
				<div class="element-sep"
					onclick="location.href='${pageContext.request.contextPath}/event/makelunchbox.do'"
					style="cursor: pointer;">도시락 만들9</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/friendreco.do'"
					style="cursor: pointer;">친구 추천</div>
				<div class="text-wrapper-11"
					onclick="location.href='${pageContext.request.contextPath}/event/friendadd.do'"
					style="cursor: pointer;">친구 추가</div>
			</div>
			<header class="header">
				<div class="top-nav">
					<div class="navbar-2">
						<div class="text-wrapper-12"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">이벤트</div>
						<div class="text-wrapper-13"
							onclick="location.href='${pageContext.request.contextPath}/menu/menu.do'"
							style="cursor: pointer;">메뉴보기</div>
						<div class="text-wrapper-14"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">구독하기</div>
						<div class="text-wrapper-15"
							onclick="location.href='${pageContext.request.contextPath}/event/challenge.do'"
							style="cursor: pointer;">요모조모</div>
						<div class="text-wrapper-16"
							onclick="location.href='${pageContext.request.contextPath}/doran/doran.do'"
							style="cursor: pointer;">도란도란</div>
					</div>
					<img class="untitled-2" src="img/untitled-1-1.png" />
					<div class="div-2">
						<div class="text-wrapper-17">
							<span><a
								href="${pageContext.request.contextPath}/login/login.do">로그인</a></span>
							| <span><a
								href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a></span>
						</div>
						<div class="group-11">
							<div class="overlap-group-5">
								<img class="group-12" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-18">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
	</div>
</body>
</html>
