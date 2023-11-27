<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	request.setCharacterEncoding("UTF-8");
%>


<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link href="./css/main.css" rel="stylesheet" />
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	font-size: 14px;
}

.v8_2387 {
	width: 100%;
	height: 1024px;
	background: linear-gradient(rgba(255, 170, 86, 1),
		rgba(255, 232, 210, 1));
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
}

.v8_2388 {
	width: 647px;
	height: 880px;
	background: url("../images/v8_2388.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 72px;
	left: 36px;
	overflow: hidden;
}

.v8_2389 {
	width: 488px;
	height: 701px;
	background: url("../images/v8_2389.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 241px;
	left: 716px;
	overflow: hidden;
}

.v8_2390 {
	width: 488px;
	color: url("../images/v8_2390.png");
	position: absolute;
	top: 0px;
	left: 0px;
	font-family: Poppins;
	font-weight: SemiBold;
	font-size: 45px;
	opacity: 1;
	text-align: center;
}

.v8_2391 {
	width: 274px;
	color: rgba(54, 48, 48, 1);
	position: absolute;
	top: 80px;
	left: 93px;
	text-shadow: 0px 4px 6px rgba(0, 0, 0, 0.25);
	font-family: Poppins;
	font-weight: Light;
	font-size: 24px;
	opacity: 1;
	text-align: left;
}

.v8_2392 {
	width: 327px;
	color: url("../images/v8_2392.png");
	position: absolute;
	top: 665px;
	left: 81px;
	text-shadow: 0px 4px 6px
		rgba(0.8069442510604858, 0.7597712278366089, 0.7139212489128113, 1);
	font-size: 24px;
	opacity: 1;
	text-align: left;
}

.v8_2393 {
	width: 632px;
	color: url("../images/v8_2393.png");
	position: absolute;
	top: 60px;
	left: 97px;
	font-family: Poppins;
	font-weight: SemiBold;
	font-size: 64px;
	opacity: 1;
	text-align: left;
}

.v8_2394 {
	width: 100%;
	height: 400px;
	background: url("../images/v8_2394.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 430px;
	left: 435px;
	overflow: hidden;
}

.v8_2395 {
	width: 400px;
	height: 400px;
	background: url("../images/v8_2395.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	overflow: hidden;
}

.v8_2396 {
	width: 400px;
	height: 400px;
	background: url("../images/v8_2396.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
}

.v8_2397 {
	width: 400px;
	height: 400px;
	background: linear-gradient(rgba(255, 255, 255, 1),
		rgba(235, 164, 93, 0.6979166865348816));
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	box-shadow: 5px 4px 10px
		rgba(0.15277761220932007, 0.15277761220932007, 0.15277761220932007, 0.25
		);
	overflow: hidden;
}

.name {
	color: #fff;
}

.v8_2399 {
	width: 360px;
	color: rgba(255, 255, 255, 1);
	position: absolute;
	top: 237px;
	left: 21px;
	text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	font-family: Poppins;
	font-weight: SemiBold;
	font-size: 30px;
	opacity: 1;
	text-align: center;
}

.v8_2400 {
	width: 400px;
	height: 400px;
	background: url("../images/v8_2400.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 650px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
	overflow: hidden;
}

.v8_2401 {
	width: 400px;
	height: 400px;
	background: url("../images/v8_2401.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
}

.v8_2402 {
	width: 360px;
	color: rgba(0, 0, 0, 1);
	position: absolute;
	top: 243px;
	left: 20px;
	text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	font-family: Poppins;
	font-weight: SemiBold;
	font-size: 30px;
	opacity: 1;
	text-align: center;
}

.v8_2403 {
	width: 400px;
	height: 400px;
	background: url("../images/v8_2403.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
	opacity: 1;
	position: absolute;
	top: 0px;
	left: 0px;
	border: 1px solid rgba(255, 255, 255, 1);
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
	overflow: hidden;
}

.name {
	color: #fff;
}

.name {
	color: #fff;
}
</style>
<title>Document</title>
</head>
<body>
	<div class="v8_2387">
		<div class="v8_2388"></div>
		<div class="v8_2389">
			<span class="v8_2390">가입 유형을 선택해주세요</span><span class="v8_2391">반갑습니다,
				구도락입니다 !</span><span class="v8_2392">이미 계정이 있나요? 로그인하기</span>
		</div>
		<span class="v8_2393">아이를 위한 9일의 약속 구도락</span>
		<div class="v8_2394">
			<div class="v8_2395">
				<a href="${pageContext.request.contextPath}/register/registerForm.do">아이
				<div class="v8_2396">
					<div class="v8_2397"></div>
					<div class="name"></div>
					<span class="v8_2399">도시락을 담을 우리 아이</span>
				</div>
			</a>
			</div>
			<a href="${pageContext.request.contextPath }/register/registerForm.do">부모
			<div class="v8_2400">
				<div class="v8_2401">
					<span class="v8_2402">아이에게 선물할 부모님</span>
					<div class="v8_2403"></div>
					<div class="name"></div>
				</div>
			</div>
			</a>
		</div>
		<div class="name"></div>
	</div>
</body>
</html>