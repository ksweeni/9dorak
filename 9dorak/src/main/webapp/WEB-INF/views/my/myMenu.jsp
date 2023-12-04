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
.79_160 {
	overflow: hidden;
}

.e79_160 {
	background-color: rgba(255, 255, 255, 1);
	width: 100%;
	height: 1581px;
	position: absolute;
}

.e81_146 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e81_147 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e81_148 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e81_149 {
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

.e81_150 {
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

.e81_151 {
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

.e81_152 {
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

.e81_153 {
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

.e81_154 {
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

.e81_155 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e81_156 {
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

.e81_183 {
	width: 197.1374969482422px;
	height: 69.015625px;
	position: absolute;
	left: 370px;
	top: 142px;
}

.e79_330 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 100px;
	height: 18px;
	position: absolute;
	left: 83px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_405 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 197.1374969482422px;
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

.e79_385 {
	width: 10px;
	height: 11.37930965423584px;
	position: absolute;
	left: 61px;
	top: 3px;
	background-image: url(${cpath}/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e79_325 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 51px;
	height: 18px;
	position: absolute;
	left: 2px;
	top: 0px;
	font-family: Roboto;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_253 {
	background-color: rgba(255, 255, 255, 1);
	width: 250px;
	height: 324px;
	position: absolute;
	left: 70px;
	top: 260px;
	border: 1px solid gray;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.79_253 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e79_254 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e79_256 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 83px;
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

.e79_257 {
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

.e79_424 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e79_258 {
	width: 198px;
	height: 206px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e79_259 {
	background-color: rgba(254.99996960163116, 174.5559909939766, 100.30001074075699, 1);
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 16px;
	border-top-right-radius: 16px;
	border-bottom-left-radius: 16px;
	border-bottom-right-radius: 16px;
}

.e79_260 {
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

.e79_261 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
}

.e79_262 {
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

.e79_263 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 104px;
}

.e79_264 {
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

.e79_265 {
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

.e79_266 {
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

.e79_161 {
	width: 700px;
	height: 713px;
	position: absolute;
	left: 378px;
	top: 266px;
}

.e79_162 {
	width: 700px;
	height: 892px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e79_388 {
	width: 118px;
	height: 98px;
	position: absolute;
	left: 128px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/profile.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.79_425 {
	border: 1px solid
		rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
}

.e79_425 {
	width: 74.265625px;
	height: 32px;
	position: absolute;
	left: 252px;
	top: 32px;
	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
}

.e79_426 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 49px;
	height: 20px;
	position: absolute;
	left: 12px;
	top: 6px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_427 {
	width: 91px;
	height: 32px;
	position: absolute;
	left: 361.5px;
	top: 32px;
}

.e82_185 {
	width: 33px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/image_9.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e79_430 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 64px;
	height: 20px;
	position: absolute;
	left: 27px;
	top: 6px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_410 {
	width: 400px;
	height: 75px;
	position: absolute;
	left: 133px;
	top: 111px;
}

.e79_244 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 67.8787841796875px;
	height: 16px;
	position: absolute;
	left: 6.059966087341309px;
	top: 9.094947017729282e-13px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_409 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 400px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 27px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.79_409 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e79_411 {
	width: 400px;
	height: 75px;
	position: absolute;
	left: 133px;
	top: 210px;
}

.e79_412 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 89.69696807861328px;
	height: 16px;
	position: absolute;
	left: 6.060606002807617px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_413 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 400px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 27px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.79_413 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e79_415 {
	width: 400px;
	height: 75px;
	position: absolute;
	left: 133px;
	top: 309px;
}

.e79_416 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 67.8787841796875px;
	height: 16px;
	position: absolute;
	left: 6.060606002807617px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_417 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 400px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 27px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.79_417 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e79_418 {
	width: 400px;
	height: 75px;
	position: absolute;
	left: 133px;
	top: 408px;
}

.e79_419 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 67.8787841796875px;
	height: 16px;
	position: absolute;
	left: 6.060606002807617px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_420 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 400px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 27px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.79_420 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e79_421 {
	width: 400px;
	height: 75px;
	position: absolute;
	left: 133px;
	top: 507px;
}

.e79_422 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 101.81818389892578px;
	height: 16px;
	position: absolute;
	left: 6.060606002807617px;
	top: 0px;
	font-family: Inter;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e79_423 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 400px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 27px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.79_423 {
	border: 1px solid rgba(0, 0, 0, 1);
}

.e79_168 {
	background-color: rgba(172.33757883310318, 206.37504279613495, 255, 1);
	width: 135.578125px;
	height: 44px;
	position: absolute;
	left: 126px;
	top: 626px;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
}

.e79_169 {
	color: #795548;
	width: 100px;
	height: 22px;
	position: absolute;
	left: 18px;
	top: 11px;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.79_166 {
	border: 1px solid
		rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
}

.e79_166 {
	width: 135.578125px;
	height: 44px;
	position: absolute;
	left: 277px;
	top: 626px;
	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
	border-top-left-radius: 40px;
}

.e79_167 {
	color: rgba(26.000000350177288, 26.000000350177288, 26.000000350177288, 1);
	width: 135.578125px;
	position: absolute;
	font-family: Inter;
	text-align: center;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
	/* 	border: 1px solid gray;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px; */
	height: 44px;
	top: 11px;
}

.e79_164 {
	background-color: rgba(200.00000327825546, 69.00000348687172, 69.00000348687172, 1);
	width: 105.671875px;
	height: 44px;
	position: absolute;
	left: 427px;
	top: 626px;
	border-top-left-radius: 40px;
	border-top-right-radius: 40px;
	border-bottom-left-radius: 40px;
	border-bottom-right-radius: 40px;
}

.79_164 {
	border: 1px solid
		rgba(200.00000327825546, 69.00000348687172, 69.00000348687172, 1);
}

.e79_165 {
	color: rgba(255, 255, 255, 1);
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

.e81_157 {
	width: 100%;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1152px;
}

.e81_158 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 100%;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e81_159 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e81_160 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e81_161 {
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

.e81_162 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e81_163 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e81_164 {
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

.e81_165 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e81_166 {
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

.e81_167 {
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

.e81_168 {
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

.e81_169 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e81_170 {
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

.e81_171 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e81_172 {
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

.e81_173 {
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

.e81_174 {
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

.e81_175 {
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

.e81_176 {
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

.e81_177 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e81_178 {
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

.e81_179 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e81_180 {
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

.e81_181 {
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

.e81_182 {
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
</style>
</head>
<body style="width: 100%">
	<div class=e79_160>
		<div class=e81_146>
			<div class=e81_147>
				<div class="e81_148"></div>
			</div>
			<a href="${cpath }/menu/menu.do" class="e81_149">메뉴보기</a><span
				class="e81_150">구독하기</span><span class="e81_151">요모조모</span><a
				href="${cpath }/doran/doran.do" class="e81_152">도란도란</a><a a
				href="${cpath }/event/challenge.do" class="e81_153">이벤트</a><a
				href="${cpath }/my/logout.do" class="e81_154">로그아웃</a>
			<div class="e81_155"></div>
			<div class="e81_156"></div>
		</div>
		<div id="here">
			<!-- ajax 처리할 부분 -->

			<div class=e81_183>
				<span class="e79_330">내 정보 수정</span><span class="e79_405">내
					정보 수정</span>
				<div class="e79_385"></div>
				<span class="e79_325">내 정보</span>
			</div>
			<div class=e79_253>
				<div class=e79_254>
					<span class="e79_256">${mem.mem_name }</span><span class="e79_257">LV.${mem.mem_grade }</span>
					<div class="e79_424"></div>
				</div>
				<div class=e79_258>
					<div class=e79_259>
						<span class="e79_260">내 정보 수정</span>
					</div>
					<div class=e79_261>
						<span class="e79_262">환불 계좌 관리</span>
					</div>
					<div class=e79_263>
						<span class="e79_264">배송지 관리</span>
					</div>
					<div class=e79_265>
						<span class="e79_266">알림 수신 관리</span>
					</div>
				</div>
			</div>
			<div class=e79_161>
				<div class=e79_162>
					<div class="e79_388"></div>
					<div class=e79_425>
						<span class="e79_426">Update</span>
					</div>
					<div class=e79_427>
						<div class="e82_185"></div>
						<span class="e79_430">Remove</span>
					</div>
					<form action="#">
						<div class=e79_410>
							<span class="e79_244">아이디</span>
							<!--  	<div class="e79_409"></div> -->
							<input id="mem_id" type="text" class="e79_409"
								value="${mem.mem_id }" readonly="readonly"></input>

						</div>
						<div class=e79_411>
							<span class="e79_412">비밀번호</span>
							<!-- 	<div class="e79_413"></div> -->
							<input id="mem_pw" type="password" class="e79_413"
								value="${mem.mem_pw }"></input>
						</div>
						<div class=e79_415>
							<span class="e79_416">이름</span>
							<!-- <div class="e79_417"></div> -->
							<input id="mem_name" type="text" class="e79_417"
								value="${mem.mem_name }"></input>
						</div>
						<div class=e79_418>
							<span class="e79_419">생년월일</span>
							<!-- 				<div class="e79_420"></div> -->
							<input id="mem_bd" type="date" class="e79_420"
								value="${mem.mem_bd }"></input>
						</div>
						<div class=e79_421>
							<span class="e79_422">추천인 코드</span>
							<!-- 			<div class="e79_423"></div> -->
							<input class="e79_423" value="${mem.mem_code }"
								readonly="readonly"></input>
						</div>
						<div class=e79_168>
							<span class="e79_169">Save Changes</span>
						</div>
						<div class=e79_166>
							<span class="e79_167">Cancel</span>
						</div>
						<div class=e79_164>
							<span class="e79_165">회원탈퇴</span>
						</div>
					</form>
				</div>
			</div>
		</div>
			<!-- here 부분 -->
		</div>
		<div class=e81_157>
			<div class="e81_158"></div>
			<div class=e81_159>
				<div class=e81_160>
					<span class="e81_161">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e81_162"></div>
				</div>
			</div>
			<div class=e81_163>
				<span class="e81_164">Contact Us</span>
				<div class=e81_165>
					<span class="e81_166">1234 Country Club Ave</span><span
						class="e81_167">NC 123456, London, UK</span><span class="e81_168">+0123
						456 7891</span>
				</div>
			</div>
			<div class=e81_169>
				<span class="e81_170">User Link</span>
				<div class=e81_171>
					<span class="e81_172">About Us</span><span class="e81_173">Contact
						Us</span><span class="e81_174">Order Delivery</span><span class="e81_175">Payment
						& Tex</span><span class="e81_176">Terms of Services</span>
				</div>
			</div>
			<div class=e81_177>
				<span class="e81_178">Opening Restaurant</span>
				<div class=e81_179>
					<span class="e81_180">Sat-Wet: 09:00am-10:00PM</span><span
						class="e81_181">Thursdayt: 09:00am-11:00PM</span><span
						class="e81_182">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
		</div>

</body>
<script type="text/javascript">
	$(".e79_168").on("click", function() {
		var param = {
			mem_id : $("#mem_id").val(),
			mem_pw : $("#mem_pw").val(),
			mem_name : $("#mem_name").val(),
			mem_bd : $("#mem_bd").val()
		}

		$.ajax({

			url : "${cpath}/my/updateMember.do",
			data : param,
			success : function(res) {
				alert(res);
				location.reload();
			}

		})
	}) // 아이디 변경 되는지 확인하자

	$(".e79_166").on("click", function() {
		$("form")[0].reset();
	})

	$(".e79_164").on(
			"click",
			function() {
				if (confirm("정말 탈퇴하시겠습니까?")) {
					location.href = "${cpath}/my/deleteMember.do?mem_id="
							+ $("#mem_id").val();
				}
			})
			
	$(".e79_261").on("click",function(){
		
	})
</script>
</html>
