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
	href="${cpath}/resources/css/adminEventStyle.css?d" type="text/css" />
<meta charset="UTF-8">
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
			<span class="e2101_2490">로그아웃</span>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
			<div class="e2099_2487"></div>
			<div id="EvantDetail" class="table-container">


				<form action="">
					<div class="top">
						<div class="top-title">
							<p class="top-title-p">챌린지 수정 및 삭제</p>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none">
<path d="M12 20H21" stroke="#F49B33" stroke-width="3"
									stroke-linecap="round" stroke-linejoin="round" />
<path
									d="M16.5 3.50023C16.8978 3.1024 17.4374 2.87891 18 2.87891C18.2786 2.87891 18.5544 2.93378 18.8118 3.04038C19.0692 3.14699 19.303 3.30324 19.5 3.50023C19.697 3.69721 19.8532 3.93106 19.9598 4.18843C20.0665 4.4458 20.1213 4.72165 20.1213 5.00023C20.1213 5.2788 20.0665 5.55465 19.9598 5.81202C19.8532 6.06939 19.697 6.30324 19.5 6.50023L7 19.0002L3 20.0002L4 16.0002L16.5 3.50023Z"
									stroke="#F49B33" stroke-width="3" stroke-linecap="round"
									stroke-linejoin="round" />
</svg>
						</div>
						<hr class="hr-line" />
					</div>

					<div class="content-wrapper">

						<div class="div-1">
							<div class="div-1-wrapper">
								<label for="ch_no">챌린지번호 </label> <input class="input-1"
									type="text" value="${challenge.challenge_no}" id="ch_no"
									readonly />
							</div>
							<div class="div-1-wrapper">
								<label for="mem_id">회원ID </label> <input class="input-1"
									type="text" value="${challenge.mem_id}" id="mem_id" />
							</div>
							<div class="div-1-wrapper">
								<label for="ch_category">챌린지구분</label> <input class="input-1"
									type="text" value="${challenge.challenge_category}"
									id="ch_category" />
							</div>
						</div>


						<div class="div-1">
							<div class="div-1-wrapper">
								<label for="ch_date">챌린지날짜 </label> <input class="input-1"
									type="text" value="${challenge.challenge_date}" id="ch_date" />
							</div>
							<div class="div-1-wrapper">
								<label for="ch_start">챌린지 시작날짜 </label> <input class="input-1"
									type="date" id="ch_start" value="${challenge.challenge_start}" />
							</div>
							<div class="div-1-wrapper">
								<label for="ch_end">챌린지 종료날짜 </label> <input class="input-1"
									type="date" value="${challenge.challenge_end}" id="ch_end" />
							</div>
						</div>

						<div class="div-2">
							<label for="ch_name">챌린지명/도시락만들9 명 </label> <input type="text"
								value="${challenge.challenge_name}" id="ch_name" />
						</div>
						<div class="div-2">
							<label for="ch_cont">챌린지내용/도시락만들9 소개 </label>
							<textarea id="ch_cont" style="height: 100px; padding-top:10px;">${challenge.challenge_cont}</textarea>
						</div>

						<label for="ch_image">챌린지이미지/도시락만들9이미지 </label> <input type="text"
							value="${challenge.challenge_image}" id="ch_image" /> <br />
					</div>
				</form>
			</div>
			<div id="buttonContainer">
				<button id="EvantUpdate">수정하기</button>
				<button id="EvantDelete">삭제하기</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

window.onload = function () {
  
    const initialStartDate = "${challenge.challenge_start}";
    const initialDate = "${challenge.challenge_date}";
    const initialEndDate = "${challenge.challenge_end}";

    if (initialStartDate && initialDate && initialEndDate) {
        document.getElementById("ch_start").value = initialStartDate;
        document.getElementById("ch_date").value = initialDate;
        document.getElementById("ch_end").value = initialEndDate;
    }
};
	

	$(".e2099_2468")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminMenu.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2469")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminMember.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2470")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminOrder.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2472")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminSub.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2474")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminEvent.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2475")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminPoint.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminEventStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
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

	$("#EvantUpdate").on("click", function() {

		var param = {
			challenge_no : $("#ch_no").val(),
			challenge_name : $("#ch_name").val(),
			challenge_cont : $("#ch_cont").val(),
			challenge_recipe : $("#ch_recipe").val()
		}

		$.ajax({
			url : "${cpath}/admin/adminEventUpdate.do",
			data : param,
			type : "post",
			success : function(res) {
				alert(res);
				location.href = "${cpath}/admin/adminEvent.do";
			}
		})

	})

	$("#EvantDelete").on("click", function() {

		var param = {
			challenge_no : $("#ch_no").val()
		}

		$.ajax({
			url : "${cpath}/admin/adminEventDelete.do",
			data : param,
			type : "post",
			success : function(res) {
				alert(res);
				location.href = "${cpath}/admin/adminEvent.do";
			}
		})

	})
</script>
</html>