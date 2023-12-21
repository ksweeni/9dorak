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
	href="${cpath}/resources/css/adminMenuDetailStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락 관리자페이지</title>
</head>
<body>
	<div class=e2099_2373>
		<div class="e2099_2463"></div>
		<div class="e2099_2467"></div>
		<div class="e2099_2471">
			<hr>
		</div>
		<div class="e2099_2483"></div>
		<span class="e2099_2468">메뉴관리</span> <span class="e2099_2469">회원관리</span>
		<span class="e2099_2470">주문관리</span> <span class="e2099_2472">구독관리</span>
		<span class="e2099_2473">게시판관리</span> <span class="e2099_2474">이벤트관리</span>
		<span class="e2099_2475">쿠폰/포인트관리</span>
		<div class="admin_login">
		<div class="e2099_2476">
			<hr>
		</div>
		<div class="e2099_2478"></div>
		<span class="e2099_2477">관리자</span>
		<div class="e2101_2491"></div>
		<span class="e2101_2490">로그아웃</span>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
		<div class="e2099_2487">
		<br>
		메뉴번호 <br> 
		<input type="text" value="${detailmenu.pro_no}" id="pro_no"></input>
		<br><br>
		메뉴명 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_name"></input>
		<br><br>
		메뉴가격<br> 
		<input type="text" value="${detailmenu.pro_price}" id="pro_price"></input>
		<br><br>
		메뉴좋아요수 <br> 
		<input type="text" value="${detailmenu.pro_like}" id="pro_like"></input>
		<br><br>
		메뉴영양소 <br> 
		<input type="text" value="${detailmenu.pro_nut}" id="pro_nut"></input>
		<br><br>
		메뉴구독수 <br> 
		<input type="text" value="${detailmenu.pro_sub}" id="pro_sub"></input>
		<br><br>
		메뉴유통기한 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴재고수 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴조회수 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴등록날짜 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴삭제여부 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴단백질 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<br><br>
		메뉴알레르기 <br> 
		<input type="text" value="${detailmenu.pro_name}" id="pro_no"></input>
		<p>${detailmenu.pro_no}</p>
		<p>${detailmenu.pro_name}</p>
		<p>${detailmenu.pro_price}</p>
		<p>${detailmenu.pro_like}</p>
		<p>${detailmenu.pro_nut}</p>
		<p>${detailmenu.pro_sub}</p>
		<p>${detailmenu.pro_ed}</p>
		<p>${detailmenu.pro_sc}</p>
		<p>${detailmenu.pro_view}</p>
		<p>${detailmenu.pro_delete}</p>
		<p>${detailmenu.pro_nut}</p>
		</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(".e2099_2469").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMember.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	$(".e2099_2470").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminOrder.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	$(".e2099_2472").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSub.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	$(".e2099_2473").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminNotice.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	$(".e2099_2474").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminEvent.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	$(".e2099_2475").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminPoint.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})
</script>
</html>