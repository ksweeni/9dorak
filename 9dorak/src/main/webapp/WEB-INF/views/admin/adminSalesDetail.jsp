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
	href="${cpath}/resources/css/adminSalesDetailStyle.css?d" type="text/css" />
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
		<span class="e2099_2475">쿠폰/포인트관리</span> <span class="sales">매출관리</span>
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
		<div class="e2099_3000">
		<button class="update_sub" id="update">수정하기</button>
		<button class="delete_sub" id="delete">삭제하기</button>
		</div>
		<div class="e2099_2487">
		<div class="e2099_2490"><p><b>1. 결제 상세</b></p>
		주문고유번호<br> 
		<input type="number" value="${payDetail.order_no}" id="order_no"></input>
		<br><br>
		결제상태<br> 
		<input type="text" value="${payDetail.pay_status}" id="pay_status"></input>
		<br><br>
		결제날짜<br> 
		<input type="date" value="${payDetail.pay_date}" id="pay_date"></input>
		<br><br>
		결제방법<br> 
		<input type="text" value="${payDetail.pay_method}" id="pay_method"></input>
		<br><br>
		결제금액<br> 
		<input type="text" value="${payDetail.pay_price}" id="pay_price"></input>
		<br><br>
		입금자명<br> 
		<input type="text" value="${payDetail.pay_depo}" id="pay_depo"></input>
		<br><br>
		입금액<br> 
		<input type="text" value="${payDetail.pay_depoprice}" id="pay_depoprice"></input>
		<br><br>
		입금은행<br> 
		<input type="text" value="${payDetail.pay_depobank}" id="pay_depobank"></input>
		<br><br>
		영수증<br> 
		<input type="text" value="${payDetail.imp_uid}" id="imp_uid"></input>
		
		
		</div>
		<div class="e2099_2491"><p><b>2. 뭐하지</b></p>
		어떤걸 <br>
		<br><br>
		넣을까? <br> 
		<br><br>
		</div>
		</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(".e2099_2468").on("click", function() {
	$.ajax({

		url : "${cpath}/admin/adminMenu.do",
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
	
	$(".sales").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSales.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})
	
	$("#update").on("click", function() {
		var order_no = $("#order_no").val();
		var pay_status = $("#pay_status").val();
		var pay_date = $("#pay_date").val();
		var pay_method = $("#pay_method").val();
		var pay_price = $("#pay_price").val();
		var pay_depo = $("#pay_depo").val();
		var pay_depoprice = $("#pay_depoprice").val();
		var pay_depobank = $("#pay_depobank").val();
		var imp_uid = $("#imp_uid").val();
		
		
	})
	
	
	
	
	//수정
	$("#update").on("click", function() {
		var order_no = $("#order_no").val();
		var pay_status = $("#pay_status").val();
		var pay_date = $("#pay_date").val();
		var pay_method = $("#pay_method").val();
		var pay_price = $("#pay_price").val();
		var pay_depo = $("#pay_depo").val();
		var pay_depoprice = $("#pay_depoprice").val();
		var pay_depobank = $("#pay_depobank").val();
		var imp_uid = $("#imp_uid").val();
		
		var param = {
			"order_no" : order_no,
			"pay_status" : pay_status,
			"pay_date" : pay_date,
			"pay_method" : pay_method,
			"pay_price" : pay_price,
			"pay_depo" : pay_depo,
			"pay_depoprice" : pay_depoprice,
			"pay_depobank" : pay_depobank,
			"imp_uid" : imp_uid,
		}
		$.ajax({
			url : "${cpath}/admin/adminSalesUpdate.do",
			type : "post",
			data : param,
			success : function(res) {
				location.href = "${cpath}/admin/adminSales.do";
			}
		})
	})
	
	//삭제
 	$("#delete").on("click", function() {
		var order_no = $("#order_no").val();
		
		$.ajax({
			url : "${cpath}/admin/adminSalesDelete.do",
			type : "post",
			data : {
				"order_no" : order_no
			},
			success : function(res) {
				location.href = "${cpath}/admin/adminSales.do";
			}
		})
	})
</script>
</html>