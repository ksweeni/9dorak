<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
.register {
	background-color: #ffffff;
	display: flex;
	flex-direction: row;
	justify-content: center;
	width: 100%;
}

.register .div {
	background-color: #ffffff;
	width: 1920px;
	height: 2000px;
	position: relative;
}

.register .group {
	position: absolute;
	width: 682px;
	height: 1555px;
	top: 373px;
	left: 700px;
}

.register .group-2 {
	position: relative;
	width: 684px;
	height: 1555px;
}

.register .signupwith {
	position: absolute;
	width: 511px;
	height: 30px;
	top: 117px;
	left: 1px;
}

.register .group-3 {
	position: relative;
	width: 513px;
	height: 30px;
}

.register .line {
	position: absolute;
	width: 103px;
	height: 3px;
	top: 12px;
	left: 0;
}

.register .text-wrapper {
	position: absolute;
	width: 373px;
	top: 0;
	left: 138px;
	font-family: "Poppins-Bold", Helvetica;
	font-weight: 700;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0.48px;
	line-height: normal;
}

.register .overlap {
	position: absolute;
	width: 682px;
	height: 1352px;
	top: 203px;
	left: 0;
}

.register .view {
	position: absolute;
	width: 466px;
	height: 1352px;
	top: 0;
	left: 0;
}

.register .view-2 {
	position: absolute;
	width: 464px;
	height: 620px;
	top: 0;
	left: 0;
}

.register .name {
	position: absolute;
	width: 334px;
	height: 75px;
	top: 108px;
	left: 0;
}

.register .group-4 {
	position: relative;
	width: 336px;
	height: 75px;
}

.register .rectangle {
	width: 334px;
	height: 50px;
	top: 25px;
	border-radius: 10px;
	border-color: #e7e7e7;
	position: absolute;
	left: 0;
	background-color: #f9fcff;
	border: 1px solid;
}

.register .text-wrapper-2 {
	position: absolute;
	width: 46px;
	top: 0;
	left: 0;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .email {
	position: absolute;
	width: 464px;
	height: 75px;
	top: 324px;
	left: 0;
}

.register .group-wrapper {
	height: 75px;
}

.register .group-5 {
	position: relative;
	width: 468px;
	height: 75px;
}

.register .overlap-group {
	position: absolute;
	width: 332px;
	height: 50px;
	top: 25px;
	left: 0;
	background-color: #f9fcff;
	border-radius: 10px;
	border: 1px solid;
	border-color: #e7e7e7;
}

.register .payments {
	width: 273px;
	top: 13px;
	left: 28px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .text-wrapper-3 {
	position: absolute;
	width: 68px;
	top: 0;
	left: 1px;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .order-now-wrapper {
	display: flex;
	width: 111px;
	height: 49px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 33px 67px;
	position: absolute;
	top: 25px;
	left: 353px;
	border-radius: 15px;
	background: linear-gradient(180deg, rgb(255, 182.25, 115.1) 0%,
		rgb(245.44, 220.89, 196.35) 100%);
}

.register .order-now {
	position: relative;
	width: fit-content;
	margin-top: -18.5px;
	margin-bottom: -16.5px;
	margin-left: -55px;
	margin-right: -55px;
	font-family: "Montserrat-SemiBold", Helvetica;
	font-weight: 600;
	color: var(- -white);
	font-size: 15px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.register .frame {
	position: absolute;
	width: 332px;
	height: 75px;
	top: 216px;
	left: 1px;
}

.register .payments-2 {
	width: 251px;
	top: 17px;
	left: 27px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .text-wrapper-4 {
	position: absolute;
	width: 85px;
	top: 0;
	left: 0;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .id-wrapper {
	position: absolute;
	width: 464px;
	height: 75px;
	top: 0;
	left: 0;
}

.register .payments-wrapper {
	position: absolute;
	width: 333px;
	height: 50px;
	top: 25px;
	left: 1px;
	background-color: #f9fcff;
	border-radius: 10px;
	border: 1px solid;
	border-color: #e7e7e7;
}

.register .payments-3 {
	width: 218px;
	top: 12px;
	left: 27px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .text-wrapper-5 {
	position: absolute;
	width: 58px;
	top: 0;
	left: 0;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .order-now-2 {
	position: relative;
	width: fit-content;
	margin-top: -18.5px;
	margin-bottom: -16.5px;
	margin-left: -39.5px;
	margin-right: -39.5px;
	font-family: "Montserrat-SemiBold", Helvetica;
	font-weight: 600;
	color: var(- -white);
	font-size: 15px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.register .birthday-wrapper {
	position: absolute;
	width: 334px;
	height: 80px;
	top: 432px;
	left: 1px;
}

.register .birthday {
	height: 80px;
}

.register .group-6 {
	position: relative;
	width: 338px;
	height: 80px;
}

.register .div-wrapper {
	position: absolute;
	width: 334px;
	height: 50px;
	top: 30px;
	left: 0;
	background-color: #f9fcff;
	border-radius: 10px;
	border: 1px solid;
	border-color: #e7e7e7;
}

.register .payments-4 {
	width: 236px;
	top: 15px;
	left: 27px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .text-wrapper-6 {
	position: absolute;
	width: 93px;
	top: 0;
	left: 0;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .phone-wrapper {
	position: absolute;
	width: 335px;
	height: 75px;
	top: 545px;
	left: 0;
}

.register .phone {
	position: relative;
	width: 339px;
	height: 75px;
}

.register .overlap-group-2 {
	position: absolute;
	width: 335px;
	height: 50px;
	top: 25px;
	left: 0;
	background-color: #f9fcff;
	border-radius: 10px;
	border: 1px solid;
	border-color: #e7e7e7;
}

.register .payments-5 {
	width: 274px;
	top: 15px;
	left: 28px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .text-wrapper-7 {
	position: absolute;
	width: 87px;
	top: 0;
	left: 1px;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.register .register-button {
	position: absolute;
	width: 202px;
	height: 63px;
	top: 1194px;
	left: 161px;
}

.register .overlap-2 {
	position: relative;
	width: 200px;
	height: 63px;
	background-color: #f48e28;
	border-radius: 35px;
	box-shadow: 0px 10px 30px #c4501182;
}

.register .text-wrapper-8 {
	position: absolute;
	width: 76px;
	height: 30px;
	top: 18px;
	left: 62px;
	font-family: "Poppins-SemiBold", Helvetica;
	font-weight: 600;
	color: #ffffff;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0.6px;
	line-height: normal;
}

.register .p {
	position: absolute;
	width: 239px;
	top: 1322px;
	left: 141px;
	text-shadow: 0px 4px 4px #00000040;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: transparent;
	font-size: 16px;
	letter-spacing: 0.48px;
	line-height: normal;
}

.register .span {
	color: #000000;
}

.register .text-wrapper-9 {
	font-family: "Poppins-Light", Helvetica;
	font-weight: 300;
	color: #000000;
}

.register .text-wrapper-10 {
	font-family: "Poppins-SemiBold", Helvetica;
	font-weight: 600;
	color: #ff7200;
}

.register .overlap-wrapper {
	position: absolute;
	width: 682px;
	height: 222px;
	top: 681px;
	left: 0;
}

.register .overlap-3 {
	position: relative;
	width: 684px;
	height: 222px;
}

.register .group-7 {
	position: absolute;
	width: 523px;
	height: 222px;
	top: 0;
	left: 0;
}

.register .view-wrapper {
	position: absolute;
	width: 335px;
	height: 50px;
	top: 172px;
	left: 1px;
}

.register .overlap-group-wrapper {
	width: 337px;
	height: 50px;
}

.register .overlap-group-3 {
	position: relative;
	width: 335px;
	height: 50px;
	background-color: #f9fcff;
	border-radius: 10px;
	border: 1px solid;
	border-color: #e7e7e7;
}

.register .payments-6 {
	width: 274px;
	top: 14px;
	left: 24px;
	position: absolute;
	opacity: 0.4;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0.25px;
	line-height: 28px;
	white-space: nowrap;
}

.register .img {
	position: absolute;
	width: 369px;
	height: 54px;
	top: 9px;
	left: 2px;
}

.register .group-8 {
	width: 684px;
	height: 48px;
	top: 100px;
	position: absolute;
	left: 0;
}

.register .line-2 {
	top: 24px;
	position: absolute;
	width: 103px;
	height: 3px;
	left: 0;
}

.register .text-wrapper-11 {
	position: absolute;
	width: 543px;
	height: 48px;
	top: 0;
	left: 139px;
	font-family: "Montserrat-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 15px;
	letter-spacing: 0;
	line-height: normal;
}

.register .view-3 {
	position: absolute;
	width: 521px;
	height: 189px;
	top: 960px;
	left: 0;
}

.register .overlap-4 {
	position: relative;
	width: 523px;
	height: 189px;
}

.register .group-9 {
	position: absolute;
	width: 523px;
	height: 189px;
	top: 0;
	left: 0;
}

.register .text-wrapper-12 {
	position: absolute;
	width: 521px;
	top: 0;
	left: 0;
	font-family: "Poppins-Bold", Helvetica;
	font-weight: 700;
	color: #000000;
	font-size: 48px;
	letter-spacing: 0;
	line-height: normal;
}

.register .view-4 {
	position: absolute;
	width: 501px;
	height: 29px;
	top: 160px;
	left: 0;
}

.register .rectangle-2 {
	width: 28px;
	height: 28px;
	top: 0;
	border-radius: 6px;
	border-color: #e3e2e2;
	position: absolute;
	left: 0;
	background-color: #f9fcff;
	border: 1px solid;
}

.register .text-wrapper-13 {
	position: absolute;
	width: 421px;
	top: 2px;
	left: 55px;
	font-family: "Poppins-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0.25px;
	line-height: 22px;
}

.register .chevron-down {
	position: absolute;
	width: 20px;
	height: 20px;
	top: 4px;
	left: 479px;
}

.register .line-wrapper {
	width: 103px;
	height: 1px;
	top: 122px;
	position: absolute;
	left: 0;
}

.register .line-3 {
	top: -3px;
	position: absolute;
	width: 103px;
	height: 3px;
	left: 0;
}

.register .text-wrapper-14 {
	position: absolute;
	width: 227px;
	top: 0;
	left: 1px;
	font-family: "Poppins-Bold", Helvetica;
	font-weight: 700;
	color: #000000;
	font-size: 48px;
	letter-spacing: 0;
	line-height: normal;
}

.register .element {
	position: absolute;
	top: 100px;
	left: 97px;
	font-family: "Poppins-SemiBold", Helvetica;
	font-weight: 600;
	color: transparent;
	font-size: 64px;
	letter-spacing: 1.28px;
	line-height: normal;
}

.register .text-wrapper-15 {
	color: #f48e28;
}

.register .progress-bar {
	position: absolute;
	width: 436px;
	height: 84px;
	top: 238px;
	left: 742px;
}

.register .progress-bar-2 {
	height: 84px;
}

.register .overlap-5 {
	position: relative;
	width: 436px;
	height: 84px;
	border-radius: 5px;
}

.register .progress-bar-3 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 10px;
	padding: 12px 43px;
	position: absolute;
	top: 0;
	left: 0;
	border-radius: 5px;
	overflow: hidden;
}

.register .group-10 {
	position: relative;
	width: 352px;
	height: 60px;
	margin-right: -2px;
}

.register .overlap-group-4 {
	position: relative;
	width: 350px;
	height: 60px;
}

.register .line-4 {
	position: absolute;
	width: 291px;
	height: 5px;
	top: 25px;
	left: 59px;
}

.register .ellipse {
	left: 0;
	background-color: #f38820;
	position: absolute;
	width: 61px;
	height: 60px;
	top: 0;
	border-radius: 30.58px/30px;
}

.register .ellipse-2 {
	left: 144px;
	background-color: #f39132;
	position: absolute;
	width: 61px;
	height: 60px;
	top: 0;
	border-radius: 30.58px/30px;
}

.register .ellipse-3 {
	left: 289px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #f38820;
	position: absolute;
	width: 61px;
	height: 60px;
	top: 0;
	border-radius: 30.58px/30px;
}

.register .vector {
	position: absolute;
	width: 29px;
	height: 20px;
	top: 21px;
	left: 16px;
}

.register .text-wrapper-16 {
	position: absolute;
	width: 15px;
	top: 24px;
	left: 315px;
	font-family: "Poppins-SemiBold", Helvetica;
	font-weight: 600;
	color: #f38820;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.register .vector-2 {
	position: absolute;
	width: 29px;
	height: 21px;
	top: 32px;
	left: 204px;
}
</style>
</head>
<body>
	<div class="register">
		<div class="div">
			<div class="group">
				<div class="group-2">
					<div class="signupwith">
						<div class="group-3">
							<img class="line" src="img/line-1-2.svg" />
							<p class="text-wrapper">구도락에 가입하고 다양한 도시락을 체험해보세요</p>
						</div>
					</div>
					<div class="overlap">
						<div class="view">
							<div class="view-2">
								<div class="name">
									<div class="group-4">
										<input input type="text" value="홍찬기" id="mem_name"
											name="mem_name" class="rectangle">
										<div class="text-wrapper-2">이름</div>
									</div>
								</div>
								<div class="email">
									<div class="group-wrapper">
										<div class="group-5">
											<div class="overlap-group">
												<div class="payments">abc@abc.com</div>
											</div>
											<div class="text-wrapper-3">이메일</div>
											<div class="order-now-wrapper">
												<div class="order-now">인증메일 전송</div>
											</div>
										</div>
									</div>
								</div>
								<div class="frame">
									<div class="group-wrapper">
										<div class="group-4">
											<div class="overlap-group">
												<div class="payments-2">**********</div>
											</div>
											<div class="text-wrapper-4">비밀번호</div>
										</div>
									</div>
								</div>
								<div class="id-wrapper">
									<div class="group-wrapper">
										<div class="group-5">
											<input type="text" value="aaaa" id="mem_id" name="mem_id"
												class="payments-wrapper">
											<!-- <div class="payments-3">abc</div> -->
										</div>
										<div class="text-wrapper-5">아이디</div>
										<button class="order-now-wrapper">
											<div id="idCheck" class="order-now-2">중복확인</div>
										</button>
									</div>
								</div>
							</div>
							<div class="birthday-wrapper">
								<div class="birthday">
									<div class="group-6">
										<div class="div-wrapper">
											<div class="payments-4">1990.01.30</div>
										</div>
										<div class="text-wrapper-6">생년월일</div>
									</div>
								</div>
							</div>
							<div class="phone-wrapper">
								<div class="phone">
									<div class="overlap-group-2">
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
					<div class="overlap-wrapper">
						<div class="overlap-3">
							<div class="group-7">
								<div class="view-wrapper">
									<div class="overlap-group-wrapper">
										<div class="overlap-group-3">
											<div class="payments-6">추천인 코드 입력</div>
										</div>
									</div>
								</div>
								<img class="img" src="img/image-2.svg" />
							</div>
							<div class="group-8">
								<img class="line-2" src="img/line-1.svg" />
								<p class="text-wrapper-11">고객님과 추천인 모두에게 구도락 포인드를 드려요!</p>
							</div>
						</div>
					</div>
					<div class="view-3">
						<div class="overlap-4">
							<div class="group-9">
								<div class="text-wrapper-12">약관동의</div>
								<div class="view-4">
									<div class="rectangle-2"></div>
									<p class="text-wrapper-13">이용 약관에 관한 모든 사항을 확인하였으며, 이에
										동의합니다</p>
									<img class="chevron-down" src="img/chevron-down.svg" />
								</div>
							</div>
							<div class="line-wrapper">
								<img class="line-3" src="img/image.svg" />
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
						<div class="group-10">
							<div class="overlap-group-4">
								<img class="line-4" src="img/line-4.svg" />
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
	<!-- 	</div> -->
</body>

<script type="text/javascript">
	$("#")
</script>
</html>
