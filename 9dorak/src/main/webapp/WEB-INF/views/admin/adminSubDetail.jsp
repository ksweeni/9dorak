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
	href="${cpath}/resources/css/adminSubDetailStyle.css?d" type="text/css" />
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

		<div class="e2099_2483"></div>
		<span class="e2099_2468">메뉴관리</span> <span class="e2099_2469">회원관리</span>
		<span class="e2099_2470">주문관리</span> <span class="e2099_2472">구독관리</span>
		<span class="e2099_2473">게시판관리</span> <span class="e2099_2474">이벤트관리</span>
		<span class="e2099_2475">쿠폰/포인트관리</span> <span class="sales">매출관리</span>
		<div class="admin_login">


			<div class="e2099_2478"></div>
			<span class="e2099_2477">관리자</span>
			<div class="e2101_2491"></div>
			<a href="${pageContext.request.contextPath}/my/logout.do"
				class="e2101_2490">로그아웃</a>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
			<div class="e2099_3000">
				<button class="update_sub" id="update">수정하기</button>
				<button class="delete_sub" id="delete">삭제하기</button>
			</div>
			<div class="e2099_2487">
				<div class="e2099_2490">
					<div class="e3001"></div>
					<div class="e3000_1">
						<p>
							<b>구독</b>
						</p>
					</div>
					<div class="e3000_2">
						<b>구독번호</b> <br> <input type="number" value="${detailSub.sub_no}"
							id="sub_no" readonly style="margin-top: 5px;"></input>
					</div>
					<div class="e3000_3">
						<b>구독연장여부</b> <br> <input type="text" value="${detailSub.sub_extend}"
							id="sub_extend" style="margin-top: 5px;"></input>
					</div>
					<div class="e3000_4">
						<b>구독시작날짜</b> <br> <input type="date" value="${detailSub.sub_date}"
							id="sub_date" style="margin-top: 5px;"></input>
					</div>
					<div class="e3000_5">
						<b>구독회원ID</b><br> <input type="text" value="${detailSub.mem_id}"
							id="mem_id" readonly style="margin-top: 5px;"></input>
					</div>
<%-- 					<p>
						<b>1. 구독</b>
					</p>
					구독번호 <br> <input type="number" value="${detailSub.sub_no}"
						id="sub_no"></input> <br>
					<br> 구독연장여부 <br> <input type="text"
						value="${detailSub.sub_extend}" id="sub_extend"></input> <br>
					<br> 구독시작날짜<br> <input type="date"
						value="${detailSub.sub_date}" id="sub_date"></input> <br>
					<br> 구독회원ID <br> <input type="text"
						value="${detailSub.mem_id}" id="mem_id"></input> --%>
				</div>
				<div class="e2099_2491">
					<div class="e3002"></div>
					<div class="e3000_8">
						<p>
							<b>구독상세</b>
						</p>
					</div>
					<div class="e3000_9">
					배부르9 <br> <br> <br> 
					배터지9 <br> <br>
					</div>
					<br>
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

	//수정
	$("#update").on("click", function() {
		var sub_no = $("#sub_no").val();
		var sub_extend = $("#sub_extend").val();
		var sub_date = $("#sub_date").val();
		var mem_id = $("#mem_id").val();
		var param = {
			"sub_no" : sub_no,
			"sub_extend" : sub_extend,
			"sub_date" : sub_date,
			"mem_id" : mem_id,
		}
		$.ajax({
			url : "${cpath}/admin/adminSubUpdate.do",
			type : "post",
			data : param,
			success : function(res) {
				location.href = "${cpath}/admin/adminSub.do";
			}
		})
	})

	//삭제
	$("#delete").on("click", function() {

		var sub_no = $("#sub_no").val();
		var param = {
			"sub_no" : sub_no
		}
		$.ajax({
			url : "${cpath}/admin/adminSubDelete.do",
			type : "post",
			data : param,
			success : function(res) {
				location.href = "${cpath}/admin/adminSub.do";
			}
		})
	})
</script>
</html>