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
	href="${cpath}/resources/css/adminMenuInsertStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="shortcut icon"
	href="${cpath}/resources/images/favicon/favicon.ico">
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
			<a href="${pageContext.request.contextPath}/my/logout.do" class="e2101_2490">로그아웃</a>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
		<form action="${cpath}/admin/adminMenuInsert.do" method="post"
							enctype="multipart/form-data">
		<div class="e2099_3000">
		<button type="submit" class="insert_memu" id="insert">메뉴 추가하기</button>
		</div>
		<div class="e2099_2487">
		<div class="e2099_2490"><p><b>1. 메뉴 기본 정보</b></p>
		메뉴명 <br> 
		<input type="text" name="pro_name" placeholder="메뉴명 입력"></input>
		<br><br>
		메뉴설명 <br> 
		<input type="text" name="pro_detail" placeholder="메뉴상세설명 입력"></input>
		<br><br>
		메뉴가격<br> 
		<input type="text" name="pro_price" placeholder="메뉴가격 입력"></input>
		<br><br>
		</div>
		<div class="e2099_2491"><p><b>2. 메뉴 영양소 정보</b></p>
		메뉴알레르기 <br> 
		<input type="text" name="pro_aller" placeholder="메뉴알레르기 입력"></input>
		<br><br>
		메뉴단백질 <br> 
		<input type="text" name="pro_prot" placeholder="메뉴단백질량 입력"></input>
		<br><br>
		메뉴탄수화물 <br> 
		<input type="text" name="pro_carb" placeholder="메뉴탄수화물량 입력"></input>
		<br><br>
		메뉴지방 <br> 
		<input type="text" name="pro_prov" placeholder="메뉴지방량 입력"></input>
		<br><br>
		메뉴나트륨 <br> 
		<input type="text" name="pro_nat" placeholder="메뉴나트륨량 입력"></input>
		<br><br>
		메뉴당류 <br> 
		<input type="text" name="pro_sugar" placeholder="메뉴당류량 입력"></input>
		<br><br>
		메뉴칼로리 <br> 
		<input type="text" name="pro_cal" placeholder="메뉴칼로리 입력"></input>
		<br><br>
		메뉴중량 <br> 
		<input type="text" name="pro_weight" placeholder="메뉴중량 입력"></input>
		</div>
		<div class="e2099_2492"><p><b>3. 메뉴 구독 및 이벤트정보</b></p>
		메뉴배부르9여부 <br> 
		<input type="text" name="pro_sub9" placeholder="A 혹은 B 입력"></input>
		<br><br>
		메뉴배터지9여부 <br> 
		<input type="text" name="pro_sub19" placeholder="A 혹은 B 입력"></input>
		<br><br>
		메뉴무료체험 <br> 
		<input type="text" name="pro_free" placeholder="F 입력"></input>
		</div>
		</div>
		</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	
	$(".insert_memu").on("click", function() {
		$.ajax({
	
			url : "${cpath}/admin/adminMenuInsert.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
	
		})
	})
	
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