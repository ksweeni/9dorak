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
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?s"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
.178_596 {
	overflow: hidden;
}

.e178_596 {
	background-color: rgba(255, 255, 255, 1);
	width: 100%;
	height: 1788px;
	position: absolute;
}

.e178_597 {
	width: 1073px;
	height: 56px;
	position: absolute;
	left: 166px;
	top: 37px;
}

.e178_598 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_599 {
	width: 94px;
	height: 56px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_1.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_600 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 314px;
	top: 18px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_601 {
	color: rgba(0, 0, 0, 1);
	width: 93px;
	height: 22px;
	position: absolute;
	left: 421px;
	top: 17px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_602 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 541px;
	top: 17px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_603 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 648px;
	top: 18px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_604 {
	color: rgba(0, 0, 0, 1);
	width: 80px;
	height: 22px;
	position: absolute;
	left: 755px;
	top: 18px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_605 {
	color: rgba(0, 0, 0, 1);
	width: 89px;
	height: 22px;
	position: absolute;
	left: 951px;
	top: 18px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_606 {
	width: 33px;
	height: 36px;
	position: absolute;
	left: 1040px;
	top: 10px;
	background-image: url(${cpath}/resources/images/my/basketimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_607 {
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

.e178_608 {
	width: 1298px;
	height: 906px;
	position: absolute;
	left: 130px;
	top: 200px;
}

.e178_609 {
	width: 300px;
	height: 69.015625px;
	position: absolute;
	left: 307px;
	top: 0px;
}

.e178_610 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 152.17800903320312px;
	height: 18px;
	position: absolute;
	left: 125.29296875px;
	top: -9.094947017729282e-13px;
	/**/
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	line-height: px;
}

.e178_611 {
	color: rgba(72.00000330805779, 72.00000330805779, 72.00000330805779, 1);
	width: 300px;
	height: 41px;
	position: absolute;
	left: 0px;
	top: 28.015625px;
	/**/
	text-align: left;
	font-size: 32px;
	letter-spacing: 0;
	line-height: px;
}

.e178_612 {
	width: 15.217805862426758px;
	height: 11.37930965423584px;
	position: absolute;
	left: 91.841796875px;
	top: 3px;
	background-image: url(${cpath}/resources/images/my/image_8.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_613 {
	width: 77.61075592041016px;
	height: 18px;
	position: absolute;
	left: 2.05078125px;
	top: -9.094947017729282e-13px;
	/**/
	text-align: left;
	font-size: 14px;
	letter-spacing: 0;
	font-weight: 600;
    color: #484848;
}

.e178_614 {
	width: 750px;
	height: 799px;
	position: absolute;
	left: 348px;
	top: 107px;
}

.e178_615 {
	width: 950px;
	height: 799px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_739 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 233px;
	top: 500px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
	cursor: pointer;
}

.178_739 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_740 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 144px;
	height: 18px;
	position: absolute;
	left: 62px;
	top: 11px;
	/**/
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
}

.e178_728 {
	border-radius: 500px;
	width: 300px;
	height: 200px;
	position: absolute;
	left: 176px;
	top: 24px;
/* 	background-image: url(${cpath}/resources/images/my/ellipse_1.png); */
	background-repeat: no-repeat;
	background-size: cover;
}

.178_728 {
	border: 5px solid rgba(250.00000029802322, 249.00000035762787, 255, 1);
}

.e178_729 {
	color: rgba(0, 0, 0, 1);
	width: 185px;
	height: 58px;
	position: absolute;
	left: 265px;
	top: 280px;
	/**/
	text-align: left;
	font-size: 48px;
	letter-spacing: 0;
}

.e178_738 {
	width: 77.26097869873047px;
	height: 50.37036895751953px;
	position: absolute;
	left: 70.26953125px;
	top: 367px;
	background-image: url(${cpath}/resources/images/my/image_6.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_737 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 134.43411254882812px;
	height: 42px;
	position: absolute;
	left: 44px;
	top: 423px;
	/**/
	text-align: left;
	font-size: 24px;
	letter-spacing: 0.800000011920929;
	line-height: px;
}

.e178_731 {
	width: 411px;
	height: 102px;
	position: absolute;
	left: 196px;
	top: 365px;
}

.e178_732 {
	color: rgba(108.37500303983688, 108.37500303983688, 108.37500303983688, 1);
	width: 182.33592224121094px;
	height: 29px;
	position: absolute;
	left: 76px;
	top: 65px;
	/**/
	text-align: left;
	font-size: 24px;
	letter-spacing: 0;
}

.e178_733 {
	color: rgba(108.37500303983688, 108.37500303983688, 108.37500303983688, 1);
	width: 87px;
	height: 29px;
	position: absolute;
	left: 324px;
	top: 65px;
	/**/
	text-align: left;
	font-size: 24px;
	letter-spacing: 0;
}

.e178_734 {
	color: rgba(0, 0, 0, 1);
	width: 223px;
	height: 45px;
	position: absolute;
	left: 82px;
	top: 5px;
	/**/
	text-align: left;
	font-size: 37px;
	letter-spacing: 0;
}

.e178_735 {
	transform: rotate(180deg);
	background-color: rgba(108.00000116229057, 108.00000116229057, 108.00000116229057, 1);
	width: 3.0904393196105957px;
	height: 100px;
	position: absolute;
	left: 3.0904393196105957px;
	top: 2px;
}

.e178_736 {
	transform: rotate(180deg);
	background-color: rgba(108.00000116229057, 108.00000116229057, 108.00000116229057, 1);
	width: 3.0904393196105957px;
	height: 100px;
	position: absolute;
	left: 276.08984375px;
	top: 0px;
}

.e178_741 {
	width: 71px;
	height: 52px;
	position: absolute;
	left: 321px;
	top: 5px;
	background-image: url(${cpath}/resources/images/my/myimage.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_713 {
	width: 88px;
	height: 35px;
	position: absolute;
	left: 116px;
	top: 577px;
}

.e178_726 {
	color: rgba(0, 0, 0, 1);
	width: 91px;
	height: 35px;
	position: absolute;
	left: 16px;
	top: 10px;
	/**/
	text-align: left;
	font-size: 30px;
	letter-spacing: 0;
}

.e178_714 {
	width: 56px;
	height: 3.885780586188048e-16px;
	position: absolute;
	left: 32px;
	top: 0px;
}

.e178_717 {
	color: rgba(0, 0, 0, 1);
	width: 78px;
	height: 35px;
	position: absolute;
	left: 469px;
	top: 588px;
	/**/
	text-align: left;
	font-size: 30px;
	letter-spacing: 0;
}

.e178_718 {
	width: 280px;
	height: 112px;
	position: absolute;
	left: 9.5px;
	top: 646px;
}

.e178_719 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 50.77336502075195px;
	top: 64px;
	background-color: #FFF8F1;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
	cursor: pointer;
}

.178_719 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_720 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 144px;
	height: 18px;
	position: absolute;
	left: 41px;
	top: 11px;
	/**/
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e178_721 {
	background-color: rgba(255, 255, 255, 1);
	width: 280px;
	height: 42.3828125px;
	position: absolute;
	left: 10px;
	top: 0px;
	border-radius: 8px;
}

.178_721 {
	border: 1px solid
		rgba(126.21172472834587, 126.21172472834587, 126.21172472834587, 1);
}

.e178_722 {
	width: 280px;
	height: 112px;
	position: absolute;
	left: 353px;
	top: 646px;
}

.e178_723 {
	background-color: rgba(255, 255, 255, 1);
	width: 200px;
	height: 48px;
	position: absolute;
	left: 42.42787551879883px;
	top: 64px;
	background-color: #FFF8F1;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
	cursor: pointer;
	border-color: #e7e7e7;
}

.178_723 {
	border: 1px solid
		rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
}

.e178_724 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 138px;
	height: 18px;
	position: absolute;
	left: 41px;
	top: 11px;
	/**/
	text-align: left;
	font-size: 20px;
	letter-spacing: 0;
	line-height: px;
}

.e178_725 {
	background-color: rgba(255, 255, 255, 1);
	width: 280px;
	height: 42.3828125px;
	position: absolute;
	left: 0px;
	top: 0px;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
}

.178_725 {
	border: 1px solid
		rgba(126.21172472834587, 126.21172472834587, 126.21172472834587, 1);
}

.e178_629 {
	width: 250px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 146px;
	background-color: #ffffff;
	border-radius: 16px;
	border: 2px solid;
	border-color: #e7e7e7;
	border-radius: 16px;
}

.178_629 {
	border: 2px solid
		rgba(231.62500709295273, 231.62500709295273, 231.62500709295273, 1);
}

.e178_630 {
	width: 198px;
	height: 47px;
	position: absolute;
	left: 26px;
	top: 26px;
}

.e178_631 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 83px;
	height: 26px;
	position: absolute;
	left: 52px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 21px;
	letter-spacing: 0;
}

.e178_632 {
	color: rgba(244.0000006556511, 142.00000673532486, 40.00000141561031, 1);
	width: 71px;
	height: 20px;
	position: absolute;
	left: 53px;
	top: 27px;
	/**/
	text-align: left;
	font-size: 13px;
	letter-spacing: 0.800000011920929;
}

.e178_633 {
	width: 52px;
	height: 43px;
	position: absolute;
	left: 0px;
	top: 0px;
/* 	background-image: url(${cpath}/resources/images/my/profile.png); */
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_634 {
	width: 198px;
	height: 102px;
	position: absolute;
	left: 26px;
	top: 98px;
}

.e178_639 {
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

.e178_640 {
	color: rgba(255, 255, 255, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	/**/
	text-align: left;
	font-size: 15px;
	letter-spacing: 0;
	text-shadow: 0px 4px 4px #00000040;
	font-weight: 700;
}

.e178_635 {
	width: 198px;
	height: 50px;
	position: absolute;
	left: 0px;
	top: 52px;
}

.e178_636 {
	color: rgba(60.00000022351742, 60.00000022351742, 60.00000022351742, 1);
	width: 135px;
	height: 20px;
	position: absolute;
	left: 20px;
	top: 15px;
	/**/
	text-align: left;
	font-size: 15px;
	letter-spacing: 0;
	text-decoration: none;
	text-shadow: 0px 4px 4px #00000040;
}

.e178_643 {
	width: 100%;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 1359px;
}

.e178_644 {
	background-color: rgba(249.6875050663948, 249.900004863739, 255, 1);
	width: 100%;
	height: 429px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_645 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 118px;
	top: 76px;
}

.e178_646 {
	width: 393px;
	height: 227px;
	position: absolute;
	left: 0px;
	top: 0px;
}

.e178_647 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 393px;
	height: 89px;
	position: absolute;
	left: 0px;
	top: 138px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_648 {
	width: 189.68800354003906px;
	height: 108px;
	position: absolute;
	left: 0px;
	top: 0px;
	background-image: url(${cpath}/resources/images/my/untitled_1_2.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_649 {
	width: 234px;
	height: 190px;
	position: absolute;
	left: 1098px;
	top: 107px;
}

.e178_650 {
	color: rgba(0, 0, 0, 1);
	width: 167.9425811767578px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e178_651 {
	width: 234px;
	height: 90px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e178_652 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 228.40191650390625px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_653 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 234px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_654 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 148.90908813476562px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_655 {
	width: 194px;
	height: 258px;
	position: absolute;
	left: 865px;
	top: 107px;
}

.e178_656 {
	color: rgba(0, 0, 0, 1);
	width: 156.1761016845703px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e178_657 {
	width: 194px;
	height: 158px;
	position: absolute;
	left: 0px;
	top: 100px;
}

.e178_658 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 103.710693359375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_659 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 123.23270416259766px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_660 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 162.2767333984375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_661 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 165.93710327148438px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 102px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_662 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 194px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 136px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_663 {
	width: 295px;
	height: 190px;
	position: absolute;
	left: 523px;
	top: 107px;
}

.e178_664 {
	color: rgba(0, 0, 0, 1);
	width: 295px;
	height: 32px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 26px;
	letter-spacing: 0;
}

.e178_665 {
	width: 277.8985595703125px;
	height: 90px;
	position: absolute;
	left: 8.550724983215332px;
	top: 100px;
}

.e178_666 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 264.0036315917969px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 0px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_667 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 277.8985595703125px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 34px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_668 {
	color: rgba(181.68749392032623, 181.68749392032623, 181.68749392032623, 1);
	width: 239.4202880859375px;
	height: 22px;
	position: absolute;
	left: 0px;
	top: 68px;
	/**/
	text-align: left;
	font-size: 18px;
	letter-spacing: 0;
}

.e178_669 {
	width: 147px;
	height: 47px;
	position: absolute;
	left: 118px;
	top: 313px;
	background-image: url(${cpath}/resources/images/my/snsicon.png);
	background-repeat: no-repeat;
	background-size: cover;
}

.e178_670 {
	width: 223px;
	height: 67px;
	position: absolute;
	left: 1091px;
	top: 320px;
	background-image: url(${cpath}/resources/images/my/image_7.png);
	background-repeat: no-repeat;
	background-size: cover;
}

svg {
  margin-left: 95px;
}


</style>
</head>
<body>
	<div class=e178_596>

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


		<div class=e178_608>
			<div class=e178_609>
				<span class="e178_610">지인 등록</span><span class="e178_611">지인
					등록</span>
				<svg xmlns="http://www.w3.org/2000/svg" width="6" height="10"
						viewBox="0 0 6 10" fill="none">
<path fill-rule="evenodd" clip-rule="evenodd"
							d="M0.38408 0.949976C0.332645 0.898177 0.291917 0.836754 0.264221 0.769215C0.236524 0.701676 0.222402 0.629342 0.22266 0.556345C0.222918 0.483348 0.237551 0.411116 0.265724 0.343775C0.293897 0.276433 0.335058 0.215299 0.386858 0.163865C0.438657 0.112431 0.50008 0.0717024 0.567619 0.0440059C0.635158 0.0163094 0.707491 0.00218694 0.780489 0.00244488C0.853486 0.00270282 0.925717 0.0173361 0.993059 0.0455092C1.0604 0.0736823 1.12153 0.114844 1.17297 0.166643L5.61741 4.61109C5.72089 4.71518 5.77896 4.85598 5.77896 5.00275C5.77896 5.14952 5.72089 5.29033 5.61741 5.39442L1.17297 9.83886C1.12153 9.89066 1.0604 9.93182 0.993059 9.96C0.925717 9.98817 0.853486 10.0028 0.780489 10.0031C0.707491 10.0033 0.635158 9.9892 0.567619 9.9615C0.50008 9.93381 0.438657 9.89308 0.386858 9.84164C0.335058 9.79021 0.293897 9.72908 0.265724 9.66173C0.237551 9.59439 0.222918 9.52216 0.22266 9.44916C0.222402 9.37617 0.236524 9.30383 0.264221 9.23629C0.291917 9.16875 0.332645 9.10733 0.38408 9.05553L4.43408 5.00553L0.38408 0.949976Z"
							fill="#767676" />
</svg>
				<span class="e178_613">마이페이지</span>
			</div>
			<div class=e178_614>
				<div class=e178_615>
					<div class=e178_739>
						<span class="e178_740" onclick="copyCode()">코드 복사</span>
					</div>
				<!-- 	<div class="e178_728"></div> -->
				<!-- 프로필 테스트  -->
				<c:choose>
				<c:when
					test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
					<div class="e178_728"
						style="background-image: url(${cpath}/${mem.mem_image});"></div>
				</c:when>
				<c:otherwise>
					<div class="e178_728"
						style="background-image: url(${cpath}/resources/upload/${mem.mem_image}); "></div>
				</c:otherwise>
			</c:choose>

				
				<!--  -->
					<span class="e178_729">${mem.mem_name }</span>
					<div class="e178_738"></div>
					<span class="e178_737">LV.${mem.mem_grade }</span>
					<div class=e178_731>
						<span class="e178_732">추천인 코드</span><span class="e178_733">내정보</span>
						<span class="e178_734" id="codeToCopy">${mem.mem_code }</span>
						<div class="e178_735"></div>
						<div class="e178_736"></div>
						<a class="e178_741" href="${cpath}/my/myMenu.do"></a>
					</div>
					<div class=e178_713>
						<span class="e178_726">가족</span>
					</div>
					<span class="e178_717">지인</span>


					<div class=e178_718>
						<div class=e178_719>
							<span class="e178_720" onclick="registerPeople('가족')">가족
								코드 등록</span>
						</div>
						<input type="text" class="e178_721" id="people_code1" />
					</div>
					<div class=e178_722>
						<div class=e178_723>
							<span class="e178_724" onclick="registerPeople('지인')">지인
								코드 등록</span>
						</div>
						<input type="text" class="e178_725" id="people_code2" />
					</div>
				</div>
			</div>
			<div class=e178_629>
				<div class=e178_630>
					<span class="e178_631">${mem.mem_name }</span><span class="e178_632">LV.${mem.mem_grade }</span>
					<!-- <div class="e178_633"></div> -->
					<c:choose>
				<c:when
					test="${mem.mem_image eq 'resources/images/my/baseProfile.png'}">
					<div class="e178_633"
						style="background-image: url(${cpath}/${mem.mem_image});"></div>
				</c:when>
				<c:otherwise>
					<div class="e178_633"
						style="background-image: url(${cpath}/resources/upload/${mem.mem_image}); "></div>
				</c:otherwise>
			</c:choose>
				</div>
				<div class=e178_634>
					<div class=e178_639>
						<span class="e178_640">지인 등록</span>
					</div>
					<div class=e178_635>
						<a class="e178_636"
							href="${pageContext.request.contextPath}/my/familyList.do">지인
							목록 조회</a>
					</div>
				</div>
			</div>
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

	</div>



</body>
<script>
	function registerPeople(category) {
		var people_code;
		if (category == "가족") {
			people_code = $("#people_code1").val();
		} else {
			people_code = $("#people_code2").val();
		}

		$.ajax({
			url : "${cpath}/my/insertPeople.do",
			data : {
				"mem_code" : people_code,
				"category" : category
			},
			success : function(responseData) {
				alert(responseData);
			}
		});

	}

	function copyCode() {
		var codeElement = document.getElementById("codeToCopy");
		var range = document.createRange();
		range.selectNode(codeElement);
		window.getSelection().removeAllRanges();
		window.getSelection().addRange(range);

		try {
			document.execCommand('copy');
			console.log('코드가 복사되었습니다.');
			alert("추천인코드가 복사되었습니다.")
		} catch (err) {
			console.error('코드 복사 실패:', err);
		}

		window.getSelection().removeAllRanges();
	}

	/*
	$(".e178_719").on("click", function() {
		//alert(people_code);
		$.ajax({
			url : "${cpath}/register/codeCheck.do",
			data : {
				mem_code : $("#people_code").val()
			},
			success : function(data) {
				if (data === "false") {
					alert("추천인 코드를 확인하세요");
				}

			}
		}) // 추천인 코드 존재 확인

	})*/
</script>

</html>