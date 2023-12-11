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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/myPageStyle.css"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
.e69_230 {
	width: 77.26097869873047px;
	height: 50.37036895751953px;
	position: absolute;
	left: 26.268733978271484px;
	top: 2.0002174377441406px;
	background-image: url(${cpath}/resources/images/my/image_6.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e69_236 {
	width: 181px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e69_299 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e69_169 {
	border-radius: 500px;
	border: solid 1px gray;
	width: 300px;
	height: 200px;
	position: absolute;
	left: 614px;
	top: 240px;
	background-image: url(${cpath}/resources/images/my/ellipse_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_336 {
	width: 37px;
	height: 41px;
	position: absolute;
	left: 10px;
	top: 32px;
	background-image: url(${cpath}/resources/images/my/likeimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_334 {
	width: 41px;
	height: 45px;
	position: absolute;
	left: 16px;
	top: 28px;
	background-image: url(${cpath}/resources/images/my/friendimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_332 {
	width: 41px;
	height: 36px;
	position: absolute;
	left: 11px;
	top: 40px;
	background-image: url(${cpath}/resources/images/my/pointimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_330 {
	width: 36px;
	height: 41px;
	position: absolute;
	left: 16px;
	top: 28px;
	background-image: url(${cpath}/resources/images/my/orderlist.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_322 {
	width: 36px;
	height: 32px;
	position: absolute;
	left: 16px;
	top: 37px;
	background-image: url(${cpath}/resources/images/my/del_image.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_326 {
	width: 34px;
	height: 38px;
	position: absolute;
	left: 16px;
	top: 29px;
	background-image:
		url(${cpath}/resources/images/my/subscription_update.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_328 {
	width: 45px;
	height: 46px;
	position: absolute;
	left: 9px;
	top: 30px;
	background-image:
		url(${cpath}/resources/images/my/subscription_image.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_338 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1243px;
	top: 45px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e72_340 {
	width: 71px;
	height: 52px;
	position: absolute;
	left: 970px;
	top: 600px;
	border: 1px solid gray; border-top-left-radius : 20px;
	border-top-right-radius : 20px; border-bottom-left-radius : 20px;
	border-bottom-right-radius : 20px; background-image :
	url(${cpath}/resources/images/my/myimage.png);
	background-repeat: no-repeat;
	background-size: cover;
	background-image: url(${cpath}/resources/images/my/myimage.png);
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

.e74_157 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 2001px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e74_159 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 2008px;
	background-image: url(${cpath}/resources/images/my/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body style="width: 100%">
	<div class=e69_166>
		<div class="e69_167"></div>
		<div class=e69_219>
			<div class=e69_220>
				<span class="e69_221">추천인 코드</span><a href="${cpath }/my/myMenu.do"
					class="e69_222">내정보</a><span class="e69_223">${mem.mem_code }</span>
				<div class="e69_224"></div>
				<div class="e69_225"></div>
			</div>
			<span class="e69_229">LV.${mem.mem_grade }</span>
			<div class="e69_230"></div>
		</div>
	</div>
	<div class=e69_231>
		<div class="e69_232"></div>
		<div class=e69_233>
			<div class=e69_234>
				<span class="e69_235">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit. Commodo libero viverra dapibus odio sit malesuada
					in quis. Arcu tristique elementum viverra integer id.</span>
				<div class="e69_236"></div>
			</div>
		</div>
		<div class=e69_262>
			<span class="e69_263">Contact Us</span>
			<div class=e69_264>
				<span class="e69_265">1234 Country Club Ave</span><span
					class="e69_266">NC 123456, London, UK</span><span class="e69_267">+0123
					456 7891</span>
			</div>

		</div>
		<div class=e69_272>
			<span class="e69_273">User Link</span>
			<div class=e69_274>
				<span class="e69_275">About Us</span><span class="e69_276">Contact
					Us</span><span class="e69_277">Order Delivery</span><span class="e69_278">Payment
					& Tex</span><span class="e69_279">Terms of Services</span>
			</div>
		</div>
		<div class=e69_280>
			<span class="e69_281">Opening Restaurant</span>
			<div class=e69_282>
				<span class="e69_283">Sat-Wet: 09:00am-10:00PM</span><span
					class="e69_284">Thursdayt: 09:00am-11:00PM</span><span
					class="e69_285">Friday: 09:00am-8:00PM</span>
			</div>
		</div>
	</div>
	<div class=e69_291>
		<div class=e69_292>
			<a href="${cpath }" class="e69_299"></a>
		</div>
	</div>
	<div class="e69_169"></div>
	<div class=e69_168>
		<span class="e69_170">${mem.mem_id }</span>
	</div>
	<a href="${cpath }/menu/menu.do" class="e69_295">메뉴보기</a>
	<span class="e69_296">구독하기</span>
	<span class="e69_297">요모조모</span>
	<a href="${cpath }/doran/doran.do" class="e69_298">도란도란</a>
	<a href="${cpath }/event/challenge.do" class="e69_294">이벤트</a>
	<!-- 로그아웃 -->
	<a href="${cpath }/my/logout.do" class="e69_319">로그아웃 </a>
	<span class="e69_290">마이페이지</span>
	<!-- ajax 테스트 -->


	<span class="e69_320">회원등급</span>
	<div class=e69_172>
		<div class=e69_173>
		<!-- 	<div class=e69_174>
				<div class=e69_175>
					<span class="e69_176">찜</span><span class="e69_177">Set your
						default language, currency, and timezone</span>
				</div>
				<div class="e72_336"></div>
			</div> -->
			<div class=e69_180>
				<div class=e69_181>
					<span class="e69_182">Manage your personal data, connected
						services, and data sharing settings</span>
				</div>
				<span class="e69_185">친구초대</span>
				<div class="e72_334"></div>
			</div>
			<a class=e69_186 href= "${cpath }/my/pointAndCoupon.do">
				<div class=e69_187>
					<span class="e69_188">찜 목록 / 포인트 및 쿠폰</span><span class="e69_189">Choose
						notification preferences and how you want to be contacted</span>
				</div>
				<div class="e72_332"></div>
			</a>
			<div class=e69_195>
				<div class=e69_196>
					<span class="e69_197">주문/결제 내역</span><span class="e69_198">Manage
						taxpayer information and tax documents</span>
				</div>
				<div class="e72_330"></div>
			</div>
			<div class=e69_201>
				<div class=e69_202>
					<span class="e69_203">배송 내역/조회</span><span class="e69_204">Review
						payments, payouts, coupons, and gift cards</span>
				</div>
				<div class="e72_322"></div>
			</div>
			<div class=e69_208>
				<div class=e69_209>
					<span class="e69_210">구독변경 및 구독멈추기</span><span class="e69_211">Update
						your password and secure your account</span>
				</div>
				<div class="e72_326"></div>
			</div>
			<div class=e69_214>
				<div class=e69_215>
					<span class="e69_216">나의 구독 내역</span><span class="e69_217">Provide
						personal details and how we can reach you</span>
				</div>
				<div class="e72_328"></div>
			</div>
		</div>
	</div>
	<div class="e72_338"></div>
	<div class="e69_304"></div>
	<a href="${cpath }/my/myMenu.do" class="e72_340"></a>
	<div class="e74_157"></div>
	<div class="e74_159"></div>

</body>


<script type="text/javascript">
	
</script>
</html>