<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/registerStyle.css"
	type="text/css" />
</head> 
<body style="background: linear-gradient(243deg, #FFD4B4 -0.78%, rgba(218, 221, 223, 0.23) 22.11%, rgba(218, 220, 221, 0.16) 26.74%, rgba(217, 219, 220, 0.11) 34.37%, rgba(255, 255, 255, 0.07) 49.83%, rgba(217, 217, 217, 0.00) 100.71%);">
	<div class="register">
		<div class="overlap-wrapper">
			<div class="overlap">
				<div class="group">
					<div class="div">
						<div class="signupwith">
							<div class="frame-wrapper">
								<div class="frame">
									<img class="line" src="img/line-1-3.svg" />
									<p class="text-wrapper">구도락에 가입하고 다양한 도시락을 체험해보세요</p>
								</div>
							</div>
						</div>
						<div class="overlap-group">
							<div class="view">
								<div class="view-2">
									<div class="name">
										<div class="group-2">
											<div class="rectangle"></div>
											<div class="text-wrapper-2">이름</div>
										</div>
									</div>
									<div class="email">
										<div class="group-wrapper">
											<div class="group-3">
												<div class="payments-wrapper">
													<div class="payments">abc@abc.com</div>
												</div>
												<div class="text-wrapper-3">이메일</div>
												<div class="order-now-wrapper">
													<div class="order-now">인증메일 전송</div>
												</div>
											</div>
										</div>
									</div>
									<div class="password-wrapper">
										<div class="group-wrapper">
											<div class="group-2">
												<div class="payments-wrapper">
													<div class="payments-2">**********</div>
												</div>
												<div class="text-wrapper-4">비밀번호</div>
											</div>
										</div>
									</div>
									<div class="id-wrapper">
										<div class="group-wrapper">
											<div class="group-3">
												<div class="div-wrapper">
													<div class="payments-3">abc</div>
												</div>
												<div class="text-wrapper-5">아이디</div>
												<div class="order-now-wrapper">
													<div class="order-now-2">중복확인</div>
												</div>
											</div>
										</div>
									</div>
									<div class="birthday-wrapper">
										<div class="birthday">
											<div class="group-4">
												<div class="overlap-group-2">
													<div class="payments-4">1990.01.30</div>
												</div>
												<div class="text-wrapper-6">생년월일</div>
											</div>
										</div>
									</div>
									<div class="phone-wrapper">
										<div class="phone">
											<div class="overlap-group-3">
												<div class="payments-5">010-0000-0000</div>
											</div>
											<div class="text-wrapper-7">휴대폰</div>
										</div>
									</div>
								</div>
								<div class="register-button">
									<div class="overlap-2">
										<div class="text-wrapper-8">회원가입</div>
									</div>
								</div>
								<p class="p">
									<span class="span">이미 계정이 있나요?&nbsp;&nbsp;</span> <span
										class="text-wrapper-9">&nbsp;&nbsp;</span> <span
										class="text-wrapper-10">로그인하기</span>
								</p>
							</div>
							<div class="overlap-group-wrapper">
								<div class="overlap-3">
									<div class="group-5">
										<div class="view-wrapper">
											<div class="view-3">
												<div class="overlap-group-4">
													<div class="payments-6">추천인 코드 입력</div>
												</div>
											</div>
										</div>
										<img class="img" src="img/image.svg" />
									</div>
									<div class="group-6">
										<div class="frame">
											<img class="line" src="img/line-1.svg" />
											<p class="text-wrapper-11">고객님과 추천인 모두에게 구도락 포인드를 드려요!</p>
										</div>
									</div>
								</div>
							</div>
							<div class="view-4">
								<div class="overlap-4">
									<div class="group-7">
										<div class="text-wrapper-12">약관동의</div>
										<div class="view-5">
											<div class="rectangle-2"></div>
											<div class="overlap-group-5">
												<p class="text-wrapper-13">이용 약관에 관한 모든 사항을 확인하였으며, 이에
													동의합니다</p>
												<img class="chevron-down" src="img/chevron-down.svg" />
											</div>
										</div>
									</div>
									<div class="line-wrapper">
										<img class="line-2" src="img/line-1-2.svg" />
									</div>
								</div>
							</div>
						</div>
						<div class="text-wrapper-14">회원가입</div>
					</div>
				</div>
				<p class="element">
					<span class="span">아이를 위한 9일의 약속<br /></span> <span
						class="text-wrapper-15">구도락</span>
				</p>
				<div class="progress-bar">
					<div class="progress-bar-2">
						<div class="overlap-5">
							<div class="progress-bar-3">
								<div class="group-8">
									<div class="overlap-group-6">
										<img class="line-3" src="img/line-4.svg" />
										<div class="ellipse"></div>
										<div class="ellipse-2"></div>
										<div class="ellipse-3"></div>
										<img class="vector" src="img/vector.svg" />
										<div class="text-wrapper-16">3</div>
									</div>
								</div>
							</div>
							<img class="vector-2" src="img/vector-2.svg" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
