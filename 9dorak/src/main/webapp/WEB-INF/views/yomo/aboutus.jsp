<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/aboutusStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class=e815_534>
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
		<div class="e844_606"></div>
	</div>
	<div class="e844_616"></div>
	<div class="e844_619">
		<div class=e75_191>
			<span class="e75_192">이것만은 꼭 지켜요</span><span class="e75_193">구도락의
				세 가지 원칙을 소개합니다</span>
			<div class=e75_194>
				<div class=e75_195>
					<div class=ei75_195_17_183>
						<div class="ei75_195_17_162"></div>
						<div class=ei75_195_17_161>
							<div class=ei75_195_17_154>
								<div class="ei75_195_17_156"></div>
							</div>
						</div>
					</div>
					<span class="ei75_195_17_186">꼼꼼한 영양소 체크</span>
				</div>
			</div>
			<div class=e75_196>
				<div class=e75_197>
					<div class=ei75_197_17_183>
						<div class="ei75_197_17_162"></div>
					</div>
					<span class="ei75_197_17_186">아이의 취향과 부모의 바램을 함께</span>
				</div>
				<div class=e75_198>
					<div class=ei75_198_17_153>
						<div class="ei75_198_17_157"></div>
					</div>
				</div>
			</div>
			<div class=e75_199>
				<div class=e75_200>
					<div class=ei75_200_17_183>
						<div class="ei75_200_17_162"></div>
					</div>
					<span class="ei75_200_17_186">올바른 시간과 장소</span>
				</div>
				<div class=e75_201>
					<div class=ei75_201_17_155>
						<div class="ei75_201_17_158"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="explain-cart" ></div>
		<div class=e75_202>
			<div class=e75_203>
				<div class=e75_204>
					<span class="e75_206">구도락이란</span><span class="e75_207">구도락은
						소중한 우리 아이들을 건강하게 키우고 싶은 바램에서 탄생했어요. 맞벌이 부부 아이의 건강한 식습관을 책임질 수 있는
						방법을 찾았어요!</span>
				</div>
				<div class=e75_208>
					<span class="e75_209">9일간의 구독</span><span class="e75_210">일주일은
						너무 짧지 않나요? 9일 동안의 구독서비스를 선물할게요! 무료 체험 서비스를 통해 구도락을 경험해보세요.</span>
					<div class="e75_211"></div>
				</div>
				<div class=e75_212>
					<span class="e75_213">도시락이 궁금해요</span><span class="e75_214">아이
						건강, 나이, 신체 상태에 따른 메뉴가 추천됩니다! 고른 영양소와 엄선한 재료들로 만들어진 도시락을 무려 9일 연속으로
						받아볼 수 있어요.</span>
						<div class="chicken"></div>
				</div>
				<div class=e75_216>
					<div class=e75_217>
						<div class="e75_218"></div>
						<div class="e75_219"></div>
						<div class="e75_220"></div>
					</div>
					<div class=e75_221>
						<div class="e75_222"></div>
						<div class="e75_224"></div>
						<div class="e75_312"></div>
					</div>
				</div>
			</div>
			<span class="e75_225">아이를 위한 9일의 도시락</span><span class="e75_226">구도락을
				소개합니다</span>
		</div>
		<a href="${pageContext.request.contextPath}/event/freelunchbox.do"
			class=e75_252>
			<div class=e75_253>
				<div class="e75_254"></div>
				<span class="e75_255">무료 체험하기</span>
			</div>
			<div class=e75_256>
				<span class="ei75_256_17_225"> 무료 체험하기</span>
				<div class=ei75_256_17_218>
					<div class=ei75_256_17_218_17_210>
						<div class="ei75_256_17_218_17_210_3_106"></div>
					</div>
					<div class=ei75_256_17_218_17_214>
						<div class="ei75_256_17_218_17_214_17_203"></div>
					</div>
				</div>
			</div>
		</a>
		<div class="e75_315"></div>
		<div class="e75_316"></div>
	</div>
	<div class=e1081_4450>
		<div class=e1081_4451>
			<div class=e1081_4452>
				<span class="e1081_4453">요모조모</span>
			</div>
		</div>
		<span class="e1081_4454">About us</span>
	</div>
	<div class=e1081_4455>
		<div class=e1081_4456>
			<c:choose>
				<c:when test="${empty sessionScope.loginmem.mem_image}">
					<div class="profile_photo"></div>
				</c:when>

				<c:when
					test="${sessionScope.loginmem.mem_image eq 'resources/images/my/baseProfile.png'}">
					<div class="profile_photo"
						style="background-image: url(${cpath}/${sessionScope.loginmem.mem_image});"></div>
				</c:when>
				<c:otherwise>
					<div class="profile_photo"
						style="background-image: url(${cpath}/resources/upload/${sessionScope.loginmem.mem_image}); "></div>
				</c:otherwise>
			</c:choose>
			<!--  -->
			<c:choose>
				<c:when test="${empty sessionScope.loginmem.mem_image}">
					<span class="e1081_4458"></span>
					<span class="e1081_4459"></span>
				</c:when>
				<c:otherwise>
					<span class="e1081_4458">${sessionScope.loginmem.mem_name}</span>
					<span class="e1081_4459">LV.${sessionScope.loginmem.mem_grade}</span>
				</c:otherwise>
			</c:choose>
		</div>
		<div class=e1081_4460>
			<a href="${pageContext.request.contextPath}/yomo/notice.do"
				class=e1081_4461> <span class="e1081_4462">공지사항</span>
			</a> <a href="${pageContext.request.contextPath}/yomo/faq.do"
				class=e1081_4463> <span class="e1081_4464">자주 묻는 질문</span>
			</a> <a href="${pageContext.request.contextPath}/yomo/oneask.do"
				class=e1081_4465> <span class="e1081_4466">1:1 문의</span>
			</a>
			<div class=e1081_4467>
				<span class="e1081_4468">About Us</span>
			</div>
		</div>
	</div>
	<div class="e1558_2333"></div>
	<footer class="footer" style="top:150rem;">
		<div class="footer-company-loco">
			<div class="footer-company">
				<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요 우리는
					홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
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
<script type="text/javascript">
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