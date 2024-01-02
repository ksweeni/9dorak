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
	href="${cpath}/resources/css/reviewUploadStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
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
			
			<div>
				<form action="${cpath}/review/reviewUpload.do" method="post"
							enctype="multipart/form-data">
					<div class="overlap">
						<div class="group">
							<div class="overlap-group">
								<div class="group">
									<div class="group-wrapper">
										<div class="input-wrapper">
											<div class="input">
												<div class="label-check-helper">
													<div class="label-check">
														<p class="text-wrapper-review">맛과 양의 정도, 배송 등 간단하게 후기를
															남겨주세요</p>
													</div>
												</div>
												<input type="hidden" id="order_no" name="order_no" value="${orderdetail.order_no }">
												<input type="hidden" id="pro_no" name="pro_no" value="${orderdetail.pro_no }">
												<textarea class="container-default" id="memreview_cont" name="memreview_cont" placeholder="자유롭게 작성해 보세요"></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="frame-wrapper">
									<div class="frame">
										<div class="button-group">
											<button class="button" onclick="goBack()">
												<div class="upload">취소하기</div>
											</button>
											<button class="upload-wrapper" onclick="goSubmit()">
												<div class="upload-2">글쓰기</div>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="menu"
							style="background-image: url('${cpath }/resources/upload/${images[1].proimage_image}');"></div>
						<div class="text-wrapper-2">${orderdetail.pro_name }, 어떠셨나요?</div>
						<p class="p">이 상품에 대해 어느 정도 만족하셨나요?</p>
					</div><!-- overlap -->
		
					<div class="upload-field">
						<div class="type-n">
							<img class="feather-upload-cloud"
								src="${cpath }/resources/images/doran/doran_uploadcloud.png" />
							<div class="bottom-content">
								<div class="description">
									<p class="text-wrapper">Select a file or drag and drop here</p>
									<p class="file-desc">JPG, PNG or PDF, file size no more than
										10MB</p>
								</div>
								​
								<!-- 버튼 클릭 시 파일첨부 테스트 -->
								<input type="file" id="fileInput" name="singleFile">
								<!-- 멀티파트 객체로 singleFile이 넘어간다 -->
								​
							</div>
							<!-- bottom-content -->
						</div>
						<!-- type-n -->
					</div><!-- upload-field -->
				</form>
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

		</div><!-- div -->
	</div><!-- screen -->
	
<script>
    
    //취소하기 버튼 클릭
    function goBack() {
    	
    	event.preventDefault();
    	
        // 뒤로가기 실행
        window.history.back();
    }
    
    //글쓰기 버튼 클릭
    function goSubmit() {
    	
    	var checkedReview = ${checkedreview};

        if (checkedReview < 1) {
            // 기존 이벤트를 수행
            alert("리뷰 작성을 완료했습니다!");
            
            return true;
        } else {
        	
        	alert("이미 작성한 리뷰입니다!");
        	// 이벤트 취소
            event.preventDefault();
            // 뒤로가기 실행
            window.history.back();
            
            return false;
        }
        
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
</body>
</html>
