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
	href="${cpath}/resources/css/adminMemberDetailStyle.css?d"
	type="text/css" />
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
				<button class="update_mem" id="update">수정하기</button>
				<button class="delete_mem" id="delete">삭제하기</button>
			</div>
			<div class="e2099_2487">
				<div class="e2099_2490">
					<div class="title">

						<div class="e3001"></div>
						<div class="b">회원 기본 정보</div>

					</div>


					<div class="div-first">
						<div class="div-1">
							회원 이름 <br> <input class="input-1" type="text"
								value="${detailmem.mem_name}" id="mem_name"></input>
						</div>

						<div class="div-1">
							회원 생년월일 <br> <input class="input-1" type="text"
								value="${detailmem.mem_bd}" id="mem_bd"></input>
						</div>
					</div>

					<div class="div-first">
						<div class="div-1">
							회원이메일<br> <input class="input-1" type="text"
								value="${detailmem.mem_email}" id="mem_email"></input>
						</div>

						<div class="div-1">
							회원전화번호 <br> <input class="input-1" type="text"
								value="${detailmem.mem_phone}" id="mem_phone"></input>
						</div>
					</div>
				</div>


				<div class="e2099_2491">
					<div class="title">

						<div class="e3002"></div>
						<div class="b">회원 구도락 정보</div>

					</div>



					<div class="div-first">
						<div class="div-1">
							회원ID <br> <input class="input-1" type="text"
								value="${detailmem.mem_id}" id="mem_id" readonly></input>
						</div>

						<div class="div-1">
							회원PW <br> <input class="input-1" type="text"
								value="${detailmem.mem_pw}" id="mem_pw"></input>
						</div>
					</div>

					<div class="div-first">
						<div class="div-1">
							회원코드 <br> <input class="input-1" type="text"
								value="${detailmem.mem_code}" id="mem_code"></input>
						</div>
					</div>



					<div class="div-first">
						<div class="div-1">
							회원포인트 <br> <input class="input-1" type="text"
								value="${detailmem.mem_point}" id="mem_point"></input>
						</div>

						<div class="div-1">
							회원등급 <br> <input class="input-1" type="text"
								value="${detailmem.mem_grade}" id="mem_grade"></input>
						</div>
					</div>

					<div class="div-first">
						<div class="div-1">
							회원탈퇴여부 <br> <input class="input-1" type="text"
								value="${detailmem.mem_quit}" id="mem_quit"></input>
						</div>

						<div class="div-1">
							회원이미지 <br> <input class="input-1" type="text"
								value="${detailmem.mem_image}" id="mem_image"></input>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">
	$(".e2099_2468")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminMenu.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".e2099_2473")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminNotice.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberDetailStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	//수정
	$("#update").on("click", function() {
		var mem_id = $("#mem_id").val();
		var mem_pw = $("#mem_pw").val();
		var mem_name = $("#mem_name").val();
		var mem_bd = $("#mem_bd").val();
		var mem_email = $("#mem_email").val();
		var mem_phone = $("#mem_phone").val();
		var mem_code = $("#mem_code").val();
		var mem_point = $("#mem_point").val();
		var mem_grade = $("#mem_grade").val();
		var mem_quit = $("#mem_quit").val();
		var mem_image = $("#mem_image").val();
		var param = {
			"mem_id" : mem_id,
			"mem_pw" : mem_pw,
			"mem_name" : mem_name,
			"mem_bd" : mem_bd,
			"mem_email" : mem_email,
			"mem_phone" : mem_phone,
			"mem_code" : mem_code,
			"mem_point" : mem_point,
			"mem_grade" : mem_grade,
			"mem_quit" : mem_quit,
			"mem_image" : mem_image
		}
		$.ajax({
			url : "${cpath}/admin/adminMemberUpdate.do",
			type : "post",
			data : param,
			success : function(res) {
				location.href = "${cpath}/admin/adminMember.do";
			}
		})
	})

	//삭제
	$("#delete").on("click", function() {

		var mem_id = $("#mem_id").val();
		var param = {
			"mem_id" : mem_id
		}
		$.ajax({
			url : "${cpath}/admin/adminMemberDelete.do",
			type : "post",
			data : param,
			success : function(res) {
				location.href = "${cpath}/admin/adminMember.do";
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
</script>
</html>