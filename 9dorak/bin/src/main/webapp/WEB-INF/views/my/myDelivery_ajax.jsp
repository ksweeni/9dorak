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
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.128_186 {
	overflow: hidden;
}

.e128_186 {
	background-color: rgba(255, 255, 255, 1);
	width: 1440px;
	height: 1788px;
	position: absolute;
}

.e128_187 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e128_188 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e128_189 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e128_190 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 314px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_191 {
	color: rgba(0, 0, 0, 1);
	width: 93px;
	height: 22px;
	position: absolute;
	left: 421px;
	top: 17px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_192 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 541px;
	top: 17px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_193 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 648px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_194 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 755px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_195 {
	color: rgba(0, 0, 0, 1);
	width: 89px;
	height: 22px;
	position: absolute;
	left: 951px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_196 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e128_197 {
	box-shadow: 0px 0px 22px
		rgba(204.00000303983688, 0, 0, 0.800000011920929);
	border-radius: 500px;
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 15px;
	height: 15px;
	position: absolute;
	left: 1057px;
	top: 10px;
}

.e128_198 {
	width: 950.1522827148438px;
	height: 742px;
	position: absolute;
	left: 464.84771728515625px;
	top: 364px;
}

.e128_218 {
	width: 950.1522827148438px;
	height: 742px;
	/* 	position: absolute; */
	left: 0px;
	top: 0px;
}

.e126_328 {
	width: 784.029541015625px;
	height: 94px;
	/* 	position: absolute; */
	left: 0.15234375px;
	top: 0px;
	margin-bottom: 50px;
}

.126_327 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e126_327 {
	width: 784.029541015625px;
	height: 94px;
	/* 	position: absolute; */
	left: 0px;
	top: 0px;
	border: 1px solid gray;
	border-top-left-radius: 30px;
	border-top-right-radius: 30px;
	border-bottom-left-radius: 30px;
	border-bottom-right-radius: 30px;
	border-top-left-radius: 30px;
}

.e126_320 {
	width: 611px;
	height: 94px;
	/* 	position: absolute; */
	left: 31px;
	top: 0px;
}

.e126_321 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 109px;
	height: 27.9761905670166px;
	/* position: absolute; */
	position: relative;
	left: 305px;
	top: 10px;
	font-family: Roboto;
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e126_322 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 157px;
	height: 62.66666793823242px;
	/* position: absolute; */
	position: relative;
	left: 0px;
	top: 40px;
	font-family: Roboto;
	text-align: left;
	font-size: 17px;
	letter-spacing: 0;
	line-height: px;
}

.e126_325 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 345px;
	height: 62.66666793823242px;
	/* position: absolute; */
	position: relative;
	left: 48px;
	top: 40px;
	font-family: Roboto;
	text-align: left;
	font-size: 17px;
	letter-spacing: 0;
	line-height: px;
}

.e126_324 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 75px;
	height: 27.9761905670166px;
	/* position: absolute; */
	position: relative;
	left: -64px;
	top: 10px;
	font-family: Roboto;
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.128_274 {
	border: 1px solid
		rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
}

.e128_274 {
	width: 103.53125px;
	height: 44px;
	position: relative;
	/* 	position: absolute; */
	left: 660px;
	top: -72px;
	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
	border-top-left-radius: 40px;
}

.e128_275 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 70px;
	height: 20px;
	position: absolute;
	left: 17px;
	top: 12px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.128_276 {
	border: 1px solid
		rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
}

.e128_276 {
	width: 103.53125px;
	height: 44px;
	/* 	position: absolute; */
	position: relative;
	left: 660px;
	top: -138px;
	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
	border-top-left-radius: 40px;
}

.e128_277 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 70px;
	height: 20px;
	position: absolute;
	left: 17px;
	top: 12px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.128_278 {
	border: 1px solid
		rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
}

.e128_278 {
	width: 130.53125px;
	height: 44px;
	position: relative;
	/* 	position: absolute; */
	left: 647.15234375px;
	top: 34px;
	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
	border-top-left-radius: 40px;
}

.e128_279 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 97px;
	height: 20px;
	position: absolute;
	left: 17px;
	top: 12px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e128_246 {
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1359px;
}

.e128_247 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 1440px;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e128_248 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e128_249 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e128_250 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 393px;
	height: 89px;
	position: absolute;
	left: 0px;
	top: 138px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_251 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e128_252 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e128_253 {
	color: rgba(0, 0, 0, 1);
	width: 167.9425811767578px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e128_254 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e128_255 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 228.40191650390625px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_256 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 234px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_257 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 148.90908813476562px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_258 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e128_259 {
	color: rgba(0, 0, 0, 1);
	width: 156.1761016845703px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e128_260 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e128_261 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 103.710693359375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_262 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 123.23270416259766px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_263 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 162.2767333984375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_264 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 165.93710327148438px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 102px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_265 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 194px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 136px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_266 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e128_267 {
	color: rgba(0, 0, 0, 1);
	width: 295px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e128_268 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e128_269 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 264.0036315917969px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_270 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 277.8985595703125px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_271 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 239.4202880859375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e128_272 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e128_273 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 320px;
	background-image: url(${cpath}/resources/images/my/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e125_209 {
	background-color: rgba(255, 255, 255, 1);
	width: 250px;
	height: 324px;
	position: absolute;
	left: 78px;
	top: 346px;
	border: 1px solid gray;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
	border-top-left-radius: 16px;
}

.125_209 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e125_210 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e125_211 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 145px;
	height: 26px;
	position: absolute;
	left: 52px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 21px;
	letter-spacing: 0;
	line-height: px;
}

.e125_212 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 71px;
	height: 20px;
	position: absolute;
	left: 53px;
	top: 27px;
	font-family: Inter;
	text-align: left;
	font-size: 13px;
	letter-spacing: 0.800000011920929;
	line-height: px;
}

.e125_213 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e125_214 {
	width: 198px;
	height: 206px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e125_219 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e125_220 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e125_217 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
}

.e125_218 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e125_281 {
	background-color: rgba(254.99996960163116, 174.5559909939766, 100.30001074075699, 1);
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 104px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e125_282 {
	color: rgba(255, 255, 255, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e125_221 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 156px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e125_222 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e125_204 {
	width: 300px;
	height: 69.015625px;
	position: absolute;
	left: 385px;
	top: 200px;
}

.e125_205 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 152.17800903320312px;
	height: 18px;
	position: absolute;
	left: 125.29296875px;
	top: -9.094947017729282e-13px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e125_206 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 300px;
	height: 41px;
	position: absolute;
	left: 0px;
	top: 28.015625px;
	font-family: Roboto;
	text-align: left;
	font-size: 32px;
	letter-spacing: 0;
	line-height: px;
}

.e125_207 {
	width: 15.217805862426758px;
	height: 11.37930965423584px;
	position: absolute;
	left: 91.841796875px;
	top: 3px;
	background-image: url(${cpath}/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e125_208 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 77.61075592041016px;
	height: 18px;
	position: absolute;
	left: 2.05078125px;
	top: -9.094947017729282e-13px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}
</style>
</head>
<body>
	<div class=e128_186>
		<div class=e128_187>
			<a href="${cpath }" class=e128_188>
				<div class="e128_189"></div>
			</a> <a href="${cpath }/menu/menu.do" class="e128_190">메뉴보기</a> <span
				class="e128_191">구독하기</span><span class="e128_192">요모조모</span> <a
				href="${cpath }/doran/doran.do" class="e128_193">도란도란</a> <a
				href="${cpath }/event/challenge.do" class="e128_194">이벤트</a> <a
				href="${cpath }/my/logout.do" class="e128_195">로그아웃</a>

			<div class="e128_196"></div>
			<div class="e128_197"></div>
		</div>
		<div class="e128_198">
			<div class="e128_218">
				<c:if test="${empty dlist}">
					<p>등록된 배송지가 없습니다.</p>
				</c:if>
				<c:forEach var="item" items="${dlist}">
					<div class="e126_328">
						<div class="e126_327">
							<div class="e126_320">
								<span class="e126_321">배송지</span> <span class="e126_322">${item.mem_delname}</span>
								<span
									class="e126_324">주소	</span>
								<span class="e126_325">${item.mem_addr}</span> 
							</div>
							<div class="e128_274"
								onclick="deleteItem('${item.mem_delname}');">
								<span class="e128_275">삭제</span>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="e128_278">
					<!-- <span class="e128_279">배송지 추가</span> -->
					<c:if test="${dlist.size() == 3}">
						<a class="e128_279" id="fulldlist">배송지 추가</a>
					</c:if>
					<c:if test="${dlist.size() != 3}">
						<a class="e128_279" href="#none"
							onclick="window.open('${cpath}/my/selectDelivery.do','new','scrollbars=yes,resizable=no width=700 height=200, left=0,top=0');return false">배송지추가</a>
					</c:if>

				</div>
			</div>
		</div>
		<div class=e128_246>
			<div class="e128_247"></div>
			<div class=e128_248>
				<div class=e128_249>
					<span class="e128_250">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e128_251"></div>
				</div>
			</div>
			<div class=e128_252>
				<span class="e128_253">Contact Us</span>
				<div class=e128_254>
					<span class="e128_255">1234 Country Club Ave</span><span
						class="e128_256">NC 123456, London, UK</span><span
						class="e128_257">+0123 456 7891</span>
				</div>
			</div>
			<div class=e128_258>
				<span class="e128_259">User Link</span>
				<div class=e128_260>
					<span class="e128_261">About Us</span><span class="e128_262">Contact
						Us</span><span class="e128_263">Order Delivery</span><span
						class="e128_264">Payment & Tex</span><span class="e128_265">Terms
						of Services</span>
				</div>
			</div>
			<div class=e128_266>
				<span class="e128_267">Opening Restaurant</span>
				<div class=e128_268>
					<span class="e128_269">Sat-Wet: 09:00am-10:00PM</span><span
						class="e128_270">Thursdayt: 09:00am-11:00PM</span><span
						class="e128_271">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e128_272"></div>
			<div class="e128_273"></div>
		</div>
		<div class=e125_209>
			<div class=e125_210>
				<span class="e125_211">${mem.mem_id }</span><span class="e125_212">LV.${mem.mem_grade }</span>
				<div class="e125_213"></div>
			</div>
			<div class=e125_214>
				<div class=e125_219>
					<span class="e125_220">내 정보 수정</span>
				</div>
				<div class=e125_217>
					<span class="e125_218">환불 계좌 관리</span>
				</div>
				<div class=e125_281>
					<span class="e125_282">배송지 관리</span>
				</div>
				<div class=e125_221>
					<span class="e125_222">알림 수신 관리</span>
				</div>
			</div>
		</div>
		<div class=e125_204>
			<span class="e125_205">배송지 관리</span><span class="e125_206">배송지
				관리</span>
			<div class="e125_207"></div>
			<span class="e125_208">내 정보</span>
		</div>
	</div>
</body>
<script>
	$(".e125_219").on("click", function() {
		$.ajax({

			url : "${cpath}/my/myMenu.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	}) // 내정보 수정 ajax
	function deleteItem(delname) {
		//alert(delname);
		var param = {

			"mem_delname" : delname
		};
		$.ajax({

			url : "${cpath}/my/deleteDelivery.do",
			type : "post",
			data : param,
			success : function(res) {
				alert("삭제되었습니다");
				$("body").html(res);
			}

		})
	}

	$("#fulldlist").on("click", function() {
		alert("3개까지 등록 가능합니다.");

	})
</script>

</html>