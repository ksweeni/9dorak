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
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/registerTypeStyle.css?s" type="text/css" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>registerType</title>
<style type="text/css">
.v50_2384 {
	width: 595px;
	height: 740px;
	background: url("${cpath}/resources/images/v50_2384.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 284px;
	left: 20px;
	overflow: hidden;
}

</style>
</head>
<body>
	<div class="v49_2207">
		<div class="v49_2208"></div>
		<div class="v50_2384"></div>
		<div class="v50_2362">
			<!-- <div class="v50_2363">
				<div class="name"></div>
			</div> -->
			<div class="e50_2362" style="">
				<img alt="" src="${cpath }/resources/images/register/typenum2.JPG"
					class="e50_2363">
			</div>
			<!-- <div class=e50_2362>
				<div class=e50_2363>
					<div class=e50_2364>
						<div class=ei50_2364_642_212>
							<div class="ei50_2364_642_213"></div>
							<div class="ei50_2364_642_214"></div>
							<div class="ei50_2364_642_215"></div>
							<div class="ei50_2364_642_216"></div>
							<div class="ei50_2364_642_218"></div>
							<span class="ei50_2364_642_219">2</span><span
								class="ei50_2364_642_220">3</span>
						</div>
					</div>
				</div>
			</div> -->
		</div>

		<!-- 		<span  class="e612_238">반갑습니다, 구도락입니다 !</span> -->
		<a href="${cpath }" class="v49_2133">아이를 위한 9일의 약속 <span
			style="color: orange;">구도락</span></a>
		<div class="v49_2134">
			<div class="v49_2135">
				<a href="${cpath }/register/registerForm.do" class="v49_2136">
					<div class="v49_2137"></div>
					<div class="name"></div> <span class="v49_2139">도시락을 담을 우리
						아이👼</span>
				</a>
			</div>
			<div class="v49_2140">
				<a href="${cpath }/register/registerForm.do" class="v49_2141"> <span
					class="v49_2142">아이에게 선물할 부모님👪</span>
					<div class="v49_2143"></div>
					<div class="name"></div>
				</a>
			</div>
		</div>
		<span class="v49_2130"><span style="color: orange;">가입
				유형</span>을 선택해주세요!</span>
	</div>
</body>
</html>