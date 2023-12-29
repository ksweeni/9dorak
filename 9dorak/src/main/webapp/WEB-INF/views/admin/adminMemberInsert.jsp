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
	href="${cpath}/resources/css/adminMemberInsertStyle.css?d"
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
			<form action="${cpath}/admin/adminMemberInsert.do" method="post"
				enctype="multipart/form-data">
				<div class="e2099_3000">
					<button type="submit" class="insert_member" id="insert">회원
						추가하기</button>
					<button type="submit" class="member_check" id="idCheck">ID
						중복확인</button>
				</div>
				<div class="e2099_2487">
					<div class="e2099_2490">
					<div class="title">
							<div class="e3002"></div>
							<div class="b">회원 기본 정보</div>
						</div>
						
					
						<div class="div-first">
							<div class="div-1">
								회원이름 <br> <input class="input-1" type="text"
									value="${detailmem.mem_name}" id="mem_name" name="mem_name"
									placeholder="회원명 입력"></input>
							</div>

							<div class="div-1">
								회원생년월일 <br> <input class="input-1" type="date"
									value="${detailmem.mem_bd}" id="mem_bd" name="mem_bd"
									placeholder="회원생년월일 입력"></input>
							</div>
						</div>

						<div class="div-first">
							<div class="div-1">
								회원이메일<br> <input class="input-1" type="text"
									value="${detailmem.mem_email}" id="mem_email" name="mem_email"
									placeholder="회원이메일 입력"></input>
							</div>

							<div class="div-1">
								회원전화번호 <br> <input class="input-1" type="text"
									value="${detailmem.mem_phone}" id="mem_phone" name="mem_phone"
									placeholder="띄어쓰기없이 11자리"></input>
							</div>
						</div>

					</div>
					<div class="e2099_2491">
						<div class="title">
							<div class="e3001"></div>
							<div class="b">구도락 회원 정보</div>
						</div>

						<div class="div-first">
							<div class="div-1">
								회원ID <br> <input class="input-1" type="text"
									value="${detailmem.mem_id}" id="mem_id" name="mem_id"
									placeholder="회원 ID 입력"></input>
							</div>
							<div class="div-1">
								회원PW <br> <input class="input-1" type="text"
									value="${detailmem.mem_pw}" id="mem_pw" name="mem_pw"
									placeholder="회원 password 입력"></input>
							</div>
						</div>
						<div class="div-first">
							<div class="div-1">
								회원코드 <br> <input class="input-1" type="text"
									value="${detailmem.mem_code}" id="mem_code" name="mem_code"
									placeholder="회원코드 입력"></input>
							</div>
							<div class="div-1">
								회원포인트 <br> <input class="input-1" type="text"
									value="${detailmem.mem_point}" id="mem_point" name="mem_point"
									placeholder="회원포인트 입력"></input>
							</div>
						</div>
						<div class="div-first">
							<div class="div-1">
								회원등급 <br> <input class="input-1" type="text"
									value="${detailmem.mem_grade}" id="mem_grade" name="mem_grade"
									placeholder="낑깡, 귤, 오렌지, 한라봉 중 입력"></input>
							</div>
							<div class="div-1">
								회원탈퇴여부 <br> <input class="input-1" type="text"
									value="${detailmem.mem_quit}" id="mem_quit" name="mem_quit"
									placeholder="0 혹은 1 입력"></input>
							</div>
						</div>
						<div class="div-first">
							<div class="div-1">
								회원이미지 <br> <input class="input-1" type="text" style="width: 430px;"
									value="${detailmem.mem_image}" id="mem_image" name="mem_image"
									placeholder="회원이미지 경로 입력"></input>
							</div>
						</div>
					</div>
				</div>
			</form>
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
										$('link[href="' + oldCssFilePath + '"]')
												.remove();
										$("body").html(res);
									}

								})
					})

	$(".insert_member")
			.on(
					"click",
					function() {
						$
								.ajax({

									url : "${cpath}/admin/adminMemberInsert.do",
									type : "get",
									success : function(res) {
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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
										var oldCssFilePath = "${cpath}/resources/css/adminMemberInsertStyle.css?d";
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

	$(".member_check").on("click", function(e) {
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
</script>
</html>