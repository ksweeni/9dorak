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
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/doranUploadStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-event">이벤트</div>
						<div class="text-menu">
							<a class="header-a"
								href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
						</div>
						<div class="text-subscribe">구독하기</div>
						<div class="text-yomo">요모조모</div>
						<div class="text-doran">
							<a class="header-a"
								href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
						</div>
					</div>
					<img class="untitled-2"
						src="${cpath}/resources/images/main/header-logo.png" />
					<div class="div-3">
						<div class="text-wrapper-28">
							<c:choose>
								<c:when test="${not empty sessionScope.loginmem.mem_id}">
									<span
										style="font-weight: bold; left: 2.5rem; position: relative;">
										<c:out value="${sessionScope.loginmem.mem_id}" /> 님
									</span>
								</c:when>
								<c:otherwise>
									<a class="header-a"
										href="${pageContext.request.contextPath}/login/login.do">로그인</a> |
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

			<div class="frame">
				<div class="group">
					<form action="${cpath}/doran/doranUpload.do" method="post"
						enctype="multipart/form-data">
						<div class="overlap">
							<div class="overlap-group-wrapper">
								<div class="overlap-group">
									<!-- 게시 내용 입력 -->
									<div class="doranTitleBox">
										<textarea id="doranTitle" placeholder="제목을 입력해보세요"
											name="doran_title"></textarea>
									</div>
									<div class="doranContBox">
										<textarea id="doranCont" placeholder="자유롭게 입력해보세요"
											name="doran_cont"></textarea>
									</div>
									<div class="upload-field">
										<div class="type-n">
											<img class="feather-upload-cloud"
												src="${cpath }/resources/images/doran/doran_uploadcloud.png" />
											<div class="bottom-content">
												<div class="description">
													<p class="text-wrapper">Select a file or drag and drop
														here</p>
													<p class="p">JPG, PNG or PDF, file size no more than
														10MB</p>
												</div>
												​
												<!-- 버튼 클릭 시 파일첨부 테스트 -->
												<input type="file" id="fileInput" name="singleFile">
												<!-- 멀티파트 객체로 singleFile이 넘어간다 -->
​
											</div><!-- bottom-content -->
										</div><!-- type-n -->
									</div><!-- upload-field -->
									​
									<%-- <div class="doran-fileUpload">
										<div class="doran-fileUploadText">
											<div class="doran-fileUploadText-file">File</div>
											<div class="doran-fileUploadText-added">added</div>
										</div>
										<div class="doran-fileUploadBar">
											<svg xmlns="http://www.w3.org/2000/svg" width="25"
												height="25" viewBox="0 0 25 25" fill="none">
											<g clip-path="url(#clip0_1666_337)">
												<path
													d="M9.91406 10.6252C10.2095 10.6252 10.5021 10.567 10.7751 10.454C11.0481 10.3409 11.2961 10.1752 11.5051 9.96623C11.714 9.7573 11.8797 9.50926 11.9928 9.23628C12.1059 8.9633 12.1641 8.67072 12.1641 8.37524C12.1641 8.07977 12.1059 7.78719 11.9928 7.51421C11.8797 7.24122 11.714 6.99319 11.5051 6.78425C11.2961 6.57532 11.0481 6.40959 10.7751 6.29651C10.5021 6.18344 10.2095 6.12524 9.91406 6.12524C9.31733 6.12524 8.74503 6.3623 8.32307 6.78425C7.90112 7.20621 7.66406 7.77851 7.66406 8.37524C7.66406 8.97198 7.90112 9.54428 8.32307 9.96623C8.74503 10.3882 9.31733 10.6252 9.91406 10.6252Z"
													fill="#FF8000" />
											    <path
													d="M21.1602 21.1252C21.1602 21.9209 20.8441 22.684 20.2815 23.2466C19.7189 23.8092 18.9558 24.1252 18.1602 24.1252H6.16016C5.36451 24.1252 4.60144 23.8092 4.03884 23.2466C3.47623 22.684 3.16016 21.9209 3.16016 21.1252V3.12524C3.16016 2.32959 3.47623 1.56653 4.03884 1.00392C4.60144 0.441315 5.36451 0.125244 6.16016 0.125244L14.4102 0.125244L21.1602 6.87524V21.1252ZM6.16016 1.62524C5.76233 1.62524 5.3808 1.78328 5.0995 2.06458C4.81819 2.34589 4.66016 2.72742 4.66016 3.12524V18.1252L7.99616 14.7892C8.11438 14.6713 8.26858 14.5962 8.43433 14.5758C8.60008 14.5554 8.76788 14.591 8.91116 14.6767L12.1602 16.6252L15.3957 12.0952C15.459 12.0067 15.5408 11.933 15.6354 11.8793C15.7301 11.8255 15.8353 11.793 15.9438 11.784C16.0522 11.7751 16.1614 11.7898 16.2636 11.8272C16.3658 11.8646 16.4586 11.9238 16.5357 12.0007L19.6602 15.1252V6.87524H16.6602C16.0634 6.87524 15.4911 6.63819 15.0692 6.21623C14.6472 5.79428 14.4102 5.22198 14.4102 4.62524V1.62524H6.16016Z"
													fill="#FF8000" />
											</g>
											<defs>
											    <clipPath id="clip0_1666_337">
											      <rect width="24" height="24" fill="white"
													transform="translate(0.160156 0.125244)" />
											    </clipPath>
									  		</defs>
										</svg>
											<div class="doran-fileUploadBar-fileName">파일이름</div>
											<button class="doran-fileUploadBar-filePreview">Preview</button>
											<div class="doran-fileUploadBar-fileSize">파일크기</div>
										</div>
									</div> --%>
									​
									<!-- 업로드 testing -->
									<div class="button-group-wrapper">
										<div class="button-group">
											<button class="cancel-wrapper">
												<div class="cancel">취소하기</div>
											</button>
											<button class="upload-wrapper" type="submit">
												<div class="upload">업로드</div>
											</button>
										</div>
									</div>
									​
								</div>
							</div>
							<div class="frame-wrapper">
								<div class="frame-2">
									<div class="frame-3">
										<div class="text-wrapper-2">글 작성하기</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div class="group-9">
				<div class="group-10">
					<div class="overlap-group-4">
						<div class="card">
							<div class="frame-4">
								<div class="ellipsis"><img class="ellipsis-img" src="${cpath }/resources/images/doran/doran_logo.png" /></div>
							</div>
							<div class="tab">
								<button id="doran" class="text-wrapper-17"
									onclick="getData('doran')">도란도란</button>
							</div>
							<div class="tab-2">
								<button id="myDoran" class="text-wrapper-18"
									onclick="getData('myDoran')">내가 쓴 글</button>
							</div>
						</div>
						<div class="text-wrapper-19">도란도란</div>
					</div>
				</div>
			</div>

			<div class="group-15">
				<div class="group-16">
					<div class="group-17">
						<div class="div-2">
							<div class="doran-profile">
								<div class="doran-profile-photo">
									<img class="doran-profile-photoImg"
										src="${cpath }/resources/images/doran/test.png" />
								</div>
								<!-- alert("MemVO [mem_id=ksween, mem_name=김수인, mem_gender=Male, 
									mem_bd=2001-05-04, mem_email=ksween@naver.com, mem_phone=01046302647, 
									mem_pw=1234, mem_code=test111, mem_addr=null, mem_point=50, 
									mem_grade="낑깡", mem_aller=null, mem_quit=0]"); -->
								<div class="doran-profile-info">
									<div class="doran-profile-info-memname">${sessionScope.loginmem.mem_id}</div>
									<div class="doran-profile-info-grade">
										<div class="doran-profile-info-lv">LV.</div>
										<div class="doran-profile-info-memgrade">${sessionScope.loginmem.mem_grade}</div>
									</div>
								</div>
								<div class="doran-profile-point">
									<div class="info-point">
										<div>보유한포인트</div>
										<div>${sessionScope.loginmem.mem_point}</div>

									</div>

									<div class="progress-div">
										<progress id="progress" class="overlap-group-3" id="progress"
											value="${sessionScope.loginmem.mem_point}" min="0" max="324"></progress>
									</div>

								</div>
								<button class="doran-button-frofile-setting">
									<span>프로필 설정하기</span>
								</button>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- <div class="group-wrapper">
				<div class="group-11">
					<div class="group-12">
						<div class="profile-wrapper">
							<img class="profile" src="img/profile.png" />
						</div>
					</div>
				</div>
			</div> -->

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
						<div class="footer-text-wrapper-3">Thursday:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>

		</div>
		<!-- div -->
	</div>
	<!-- div-wrapper -->
</body>

</html>
