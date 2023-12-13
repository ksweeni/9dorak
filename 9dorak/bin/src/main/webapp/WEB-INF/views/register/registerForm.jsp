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
<%-- <link rel="stylesheet" href="${cpath}/resources/css/registerStyle.css"
	type="text/css" /> --%>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>registerForm</title>
<style type="text/css">
.106_187 {
	overflow: hidden;
}

.e106_187 {
	background-color: rgba(255, 255, 255, 1);
	width: 100%;
	height: 2373px;
	position: absolute;
}

.e106_320 {
	width: 1079px;
	height: 56px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 85px;
}

.e106_321 {
	width: 99px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e106_322 {
	width: 99px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image:
		url(${cpath}/resources/images/register/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_323 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 310px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_324 {
	color: rgba(0, 0, 0, 1);
	width: 93px;
	height: 22px;
	position: absolute;
	left: 419px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_325 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 541px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_326 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 650px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_327 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 760px;
	top: 18px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_492 {
	width: 182px;
	height: 22px;
	position: absolute;
	left: 897px;
	top: 18px;
}

.e106_493 {
	color: rgba(0, 0, 0, 1);
	width: 69px;
	height: 22px;
	position: absolute;
	left: 8px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_494 {
	color: rgba(0, 0, 0, 1);
	width: 105px;
	height: 22px;
	position: absolute;
	left: 77px;
	top: 0px;
	font-family: Montserrat;
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e106_334 {
	width: 650px;
	height: 192px;
	position: absolute;
	left: 155px;
	top: 248px;
}

.e106_335 {
	color: rgba(0, 0, 0, 1);
	width: 630px;
	height: 192px;
	position: absolute;
	left: 0px;
	top: 0px;
	font-family: Poppins;
	text-align: left;
	font-size: 55px;
	letter-spacing: 2;
}

.e106_348 {
	width: 607px;
	height: 360px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 313px;
}

.e106_291 {
	width: 607px;
	height: 163px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/register/image_26.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_193 {
	color: rgba(0, 0, 0, 1);
	width: 203px;
	height: 72px;
	position: absolute;
	left: 32px;
	top: 214px;
	font-family: Poppins;
	text-align: left;
	font-size: 48px;
	letter-spacing: 0;
}

.e106_454 {
	width: 106px;
	height: 37px;
	position: absolute;
	left: 28px;
	top: 323px;
	background-image: url(${cpath}/resources/images/register/image_30.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_455 {
	color: rgba(0, 0, 0, 1);
	width: 382px;
	height: 26px;
	position: absolute;
	left: 148px;
	top: 328px;
	font-family: Poppins;
	text-align: left;
	font-size: 16px;
	letter-spacing: 0;
}

.e106_393 {
	width: 617px;
	height: 928.960205078125px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 700px;
}

.e106_421 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e106_400 {
	width: 163px;
	height: 48px;
	position: absolute;
	left: 389px;
	top: 25px;
}

.e106_401 {
	box-shadow: 0px 10px 30px
		rgba(196.00000351667404, 80.00000283122063, 17.00000088661909,
		0.5099999904632568);
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 163px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 35px;
	border-top-right-radius: 35px;
	border-bottom-left-radius: 35px;
	border-bottom-right-radius: 35px;
}

.e106_402 {
	color: rgba(255, 255, 255, 1);
	width: 131px;
	height: 23px;
	position: absolute;
	left: 16px;
	top: 13px;
	font-family: Poppins;
	text-align: center;
	font-size: 20px;
	letter-spacing: 3;
}

.e106_422 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_422 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_423 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: 0px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_418 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 98px;
}

.e106_419 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_419 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_420 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: -0.33349609375px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_415 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 196px;
}

.e106_416 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_416 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_417 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: -0.31201171875px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_412 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 294px;
}

.e106_413 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_413 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_414 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: 0.296875px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_397 {
	width: 163px;
	height: 48px;
	position: absolute;
	left: 390.15625px;
	top: -5px;
}

.e106_398 {
	box-shadow: 0px 10px 30px
		rgba(196.00000351667404, 80.00000283122063, 17.00000088661909,
		0.5099999904632568);
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 163px;
	height: 48px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 35px;
	border-top-right-radius: 35px;
	border-bottom-left-radius: 35px;
	border-bottom-right-radius: 35px;
}

.e106_399 {
	color: rgba(255, 255, 255, 1);
	width: 131px;
	height: 23px;
	position: absolute;
	left: 16px;
	top: 13px;
	font-family: Poppins;
	text-align: center;
	font-size: 20px;
	letter-spacing: 3;
}

.e106_409 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 392px;
}

.e106_410 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_410 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_411 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: 0px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_406 {
	width: 580px;
	height: 83px;
	position: absolute;
	left: 0px;
	top: 490px;
}

.e106_407 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 1.35791015625px;
	top: 25px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
}

.106_407 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_408 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: 0px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_403 {
	width: 616px;
	height: 198px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 633px;
}

.e106_386 {
	color: rgba(0, 0, 0, 1);
	width: 412px;
	height: 76px;
	position: absolute;
	left: -6px;
	top: -13px;
	font-family: Poppins;
	text-align: left;
	font-size: 48px;
	letter-spacing: 0;
}

.e106_456 {
	width: 106px;
	height: 37px;
	position: absolute;
	left: 0px;
	top: 63px;
	background-image: url(${cpath}/resources/images/register/image_30.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_457 {
	background-color: rgba(249.6875050663948, 252.87500202655792, 255, 1);
	width: 330px;
	height: 48px;
	position: absolute;
	left: 4.5px;
	top: 133.5px;
	border-radius: 10px;
}

.106_457 {
	border: 1px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e106_458 {
	color: rgba(0, 0, 0, 1);
	width: 382px;
	height: 26px;
	position: absolute;
	left: 121px;
	top: 68px;
	font-family: Poppins;
	text-align: left;
	font-size: 16px;
	letter-spacing: 0;
}

.e106_459 {
	color: rgba(0, 0, 0, 1);
	width: 58.38211441040039px;
	height: 25px;
	position: absolute;
	left: 8px;
	top: 109px;
	font-family: Poppins;
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
}

.e106_394 {
	width: 300px;
	height: 77.960205078125px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 880px;
}

.e106_395 {
	box-shadow: 0px 10px 30px
		rgba(196.00000351667404, 80.00000283122063, 17.00000088661909,
		0.5099999904632568);
	background-color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 300px;
	height: 77.960205078125px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 35px;
	border-top-right-radius: 35px;
	border-bottom-left-radius: 35px;
	border-bottom-right-radius: 35px;
}

.e106_396 {
	color: rgba(255, 255, 255, 1);
	width: 114px;
	height: 37.123905181884766px;
	position: absolute;
	left: 100px;
	top: 20px;
	font-family: Poppins;
	text-align: center;
	font-size: 20px;
	letter-spacing: 3;
}

.e108_189 {
	width: 300px;
	height: 30px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 1700px;
}

.e108_188 {
	color: rgba(0, 0, 0, 1);
	width: 166.46177673339844px;
	height: 30px;
	position: absolute;
	left: 180px;
	top: 0px;
	font-family: Poppins;
	text-align: left;
	font-size: 16px;
	letter-spacing: 3;
}

.e108_187 {
	color: rgba(0, 0, 0, 1);
	width: 208px;
	height: 23px;
	position: absolute;
	left: 27px;
	top: 1px;
	text-align: left;
	font-size: 16px;
	letter-spacing: 3;
}

.e106_461 {
	width: 100%;
	height: 429px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 1944px;
}

.e106_462 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 100%;
	height: 429px;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 0px;
}

.e106_463 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e106_464 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e106_465 {
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

.e106_466 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image:
		url(${cpath}/resources/images/register/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_467 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e106_468 {
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

.e106_469 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e106_470 {
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

.e106_471 {
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

.e106_472 {
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

.e106_473 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e106_474 {
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

.e106_475 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e106_476 {
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

.e106_477 {
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

.e106_478 {
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

.e106_479 {
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

.e106_480 {
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

.e106_481 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e106_482 {
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

.e106_483 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e106_484 {
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

.e106_485 {
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

.e106_486 {
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

.e106_487 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/register/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e106_488 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 320px;
	background-image: url(${cpath}/resources/images/register/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.v39_199 {
	color: rgba(255, 255, 255, 1);
	width: 131px;
	height: 23px;
	position: absolute;
	left: 84px;
	top: 24px;
	font-family: Poppins;
	text-align: center;
	font-size: 20px;
	letter-spacing: 3;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>
	<div class=e106_187>
		<div class=e106_320>
			<div class=e106_321>
				<a href="${cpath }" class="e106_322"></a>
			</div>
			<a class="e106_323" href="${cpath }/menu/menu.do">메뉴보기</a><span
				class="e106_324">구독하기</span><span class="e106_325">요모조모</span><a
				href="${cpath }/doran/doran.do" class="e106_326">도란도란</a><a
				href="${cpath }/event/challenge.do" class="e106_327">이벤트</a>
			<div class=e106_492>
				<a class="e106_493" href="${cpath }/login/loginForm.do">로그인 |</a><a
					href="${cpath}/register/registerType.do" class="e106_494">회원가입</a>
			</div>
		</div>


		<!-- <div class=e106_334>
			<span class="e106_335">아이를 위한 9일의 약속 <span style="color: orange;">구도락</span></span>
		</div> -->
		<div class=e106_348>
			<div class="e106_291"></div>
			<span class="e106_193">회원가입</span>
			<div class="e106_454"></div>
			<span class="e106_455">구도락에 가입하고 다양한 도시락을 체험해보세요!</span>
		</div>
		<form
			action="${pageContext.request.contextPath }/register/register.do"
			method="post">
			<div class=e106_393>
				<div class=e106_421>
					<div class=e106_400>
						<button class="e106_401" id="idCheck">
							<div class="e106_402">중복확인</div>
						</button>
					</div>
					<input class="e106_422" type="text" id="mem_id" 
					name="mem_id"
					value="${id }" ${kakao==1?"readonly":"" }
						placeholder="hcghcg17" /> <span class="e106_423">아이디</span>
				</div>
				<div class=e106_418>
					<input class="e106_419" type="password" id="mem_pw" name="mem_pw"
						placeholder="1234" /> <span class="e106_420">비밀번호</span>
				</div>
				<div class=e106_415>
					<input class="e106_416" type="text" id="mem_name" name="mem_name"
						placeholder="홍찬기" /> <span class="e106_417">이름</span>
				</div>
				<div class=e106_412>
					<input class="e106_413" type="email" name="mem_email"
					    value="${email }" ${kakao==1?"readonly":"" }
						id="mem_email" placeholder="hcghcg17@naver.com" /> <span
						class="e106_414">이메일</span>
					<div class=e106_397 id="emailCheck">
						<div class="e106_398"></div>
						<div class="e106_399">이메일인증</div>
						<input type="hidden" id= "mail-Check-Btn"/>
						<%-- 						<a class="e106_399" href="#none"
							onclick="window.open('${cpath}/register/emailCheckPage.do','new','scrollbars=yes,resizable=no width=700 height=200, left=0,top=0');return false">이메일인증</a> --%>
					</div>
					<input class="form-control mail-check-input" id="numInput"
						placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6"
						style="left: 373px; position: relative; top:63px; display: none;">

					<span id="mail-check-warn"
						style="position: relative; left: 156px; top: 95px;"></span>

				</div>

				<div class=e106_409>
					<input class="e106_410" type="date" name="mem_bd" id="mem_bd" /> <span
						class="e106_411">생년월일</span>
				</div>
				<div class=e106_406>
					<input class="e106_407" type="text" id="mem_phone" name="mem_phone"
						placeholder="01096681635" /> <span class="e106_408">휴대폰</span>
				</div>
				<div class=e106_403>
					<span class="e106_386">추천인 입력 <span style="color: orange;">(선택)</span></span>
					<div class="e106_456"></div>
					<!-- 					<div class="e106_457"></div> -->
					<input class="e106_457" type="text" placeholder="추천인 코드 입력"
						name="mem_code" id="mem_code" /> <span class="e106_458">고객님과
						추천인 모두에게 구도락 포인트를 드려요!</span><span class="e106_459">추천인</span>
				</div>
				<div class=e106_394>
					<button class="e106_395" id="register">
						<div class="v39_199">회원가입</div>
					</button>
					<!-- 
					<div class="e106_395"></div>
					<span class="e106_396">회원가입</span> -->
				</div>
			</div>
			<input type="hidden" value="idUncheck" id="idCheckValue" />
		</form>
		<!--  -->
		<div class=e108_189>
			<a href="${cpath }/login/loginForm.do" class="e108_188">로그인하기</a><span
				class="e108_187">이미 계정이 있나요? </span>
		</div>

		<div class=e106_461>
			<div class="e106_462"></div>

			<div class=e106_463>
				<div class=e106_464>
					<span class="e106_465">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e106_466"></div>
				</div>
			</div>
			<div class=e106_467>
				<span class="e106_468">Contact Us</span>
				<div class=e106_469>
					<span class="e106_470">1234 Country Club Ave</span><span
						class="e106_471">NC 123456, London, UK</span><span
						class="e106_472">+0123 456 7891</span>
				</div>
			</div>
			<div class=e106_473>
				<span class="e106_474">User Link</span>
				<div class=e106_475>
					<span class="e106_476">About Us</span><span class="e106_477">Contact
						Us</span><span class="e106_478">Order Delivery</span><span
						class="e106_479">Payment & Tex</span><span class="e106_480">Terms
						of Services</span>
				</div>
			</div>
			<div class=e106_481>
				<span class="e106_482">Opening Restaurant</span>
				<div class=e106_483>
					<span class="e106_484">Sat-Wet: 09:00am-10:00PM</span><span
						class="e106_485">Thursdayt: 09:00am-11:00PM</span><span
						class="e106_486">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e106_487"></div>
			<div class="e106_488"></div>
		</div>
	</div>

</body>
<script type="text/javascript">
	$("#idCheck").on("click", function(e) {
		e.preventDefault();
		if ($("#mem_id").val().length == 0) {
			alert("아이디를 입력해주세요");
			return;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/register/idCheck.do",
			data : {
				mem_id : $("#mem_id").val()
			},
			success : function(data) {
				if (data === "false") {
					$("#idCheckValue").val("idUncheck");
					alert("사용 불가능한 아이디 입니다.")
				} else if (data === "true") {
					$("#idCheckValue").val("idcheck");
					alert("사용 가능한 아이디 입니다.")
				}
			}

		}); // ajax

	}); // idcheck

	$("#register").on("click",function(e) {
						// e.preventDefault(); 
						
	

	if ($('#mail-Check-Btn').prop('disabled')) {
							// disabled 가 true 일 때의 처리
							console.log('인증완료');
							return ;
						} else {
							// disabled 가 false 일 때의 처리
							alert("이메일 또는 인증번호를 확인하세요");
							e.preventDefault();
							return ;
						}

	

						if ($("#idCheckValue").val() == "idUncheck") {
							alert("아이디 중복 체크하세요 ");
							e.preventDefault();
							return;
						}

						e.preventDefault();

						if ($("#mem_id").val().length == 0) {
							alert("아이디를 입력해주세요");
							$("#mem_id").focus();
							return;
						} else if ($("#mem_name").val().length == 0) {
							alert("이름을 입력해주세요");
							$("#mem_name").focus();
							return;
						} else if ($("#mem_pw").val().length == 0) {
							alert("비밀번호를 입력해주세요");
							$("#mem_pw").focus();
							return;
						} else if ($("#mem_email").val().length == 0) {
							alert("이메일을 입력해주세요");
							$("#mem_email").focus();
							return;
						} else if ($("#mem_bd").val().length == 0) {
							alert("생년월일을 입력해주세요");
							$("#mem_bd").focus();
							return;
						} else if ($("#mem_phone").val().length == 0) {
							alert("휴대폰 번호를 입력해주세요");
							$("#mem_phone").focus();
							return;
						}

						if ($("#mem_code").val().length != 0) {

							$
									.ajax({
										url : "${pageContext.request.contextPath}/register/codeCheck.do",
										data : {
											mem_code : $("#mem_code").val()
										},
										success : function(data) {
											if (data === "false") {
												alert("추천인 코드를 확인하세요");
											} else if (data == "true") {
												$("form").submit();
											}

										}
									});
						} else {
							$("form").submit();
						} // 추천인 코드 체크 + 회원가입
					});

	$("#emailCheck").on("click", function(event) {

		const email = $('#mem_email').val();
		const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
		$.ajax({
			type : 'get',
			//url : '<c:url value ="/user/mailCheck?email="/>' + eamil, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			url : '${cpath}/register/emailCheck.do?email=' + email, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
			success : function(data) {

				console.log("data : " + data);
				checkInput.attr('disabled', false);
				$("#numInput").show();
				code = data;
				alert('인증번호가 전송되었습니다.')
			}
		}); // end ajax

	});// 이메일 인증 나중에 하자
	$('.mail-check-input').blur(
			function() {
				const inputCode = $(this).val();
				const $resultMsg = $('#mail-check-warn');

				if (inputCode === code) {
					$resultMsg.html('인증번호가 일치합니다.');
					$resultMsg.css('color', 'green');
					$('#mail-Check-Btn').attr('disabled', true);
					$('#userEamil1').attr('readonly', true);
					$('#userEamil2').attr('readonly', true);
					$('#userEmail2').attr('onFocus',
							'this.initialSelect = this.selectedIndex');
					$('#userEmail2').attr('onChange',
							'this.selectedIndex = this.initialSelect');
				} else {
					$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
					$resultMsg.css('color', 'red');
				}
			});
</script>
</html>