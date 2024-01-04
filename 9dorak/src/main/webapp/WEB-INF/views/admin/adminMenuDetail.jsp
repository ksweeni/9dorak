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
	href="${cpath}/resources/css/adminMenuDetailStyle.css?d"
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
				<button class="update_memu" id="update">수정하기</button>
				<button class="delete_memu" id="delete">삭제하기</button>
			</div>
			<div class="e2099_2487">
				<div class="e2099_2490">
					<div class="e3001"></div>
					<div class="e3000_1">
						<p>
							<b>메뉴 기본 정보</b>
						</p>
					</div>
					<div class="e3000_2">
						<b>메뉴번호</b> <br> <input type="text"
							value="${detailmenu.pro_no}" id="pro_no" readonly></input>
					</div>
					<div class="e3000_3">
						<b>메뉴명</b> <br> <input type="text"
							value="${detailmenu.pro_name}" id="pro_name"></input>
					</div>
					<div class="e3000_4">
						<b>메뉴설명</b> <br> <input type="text"
							value="${detailmenu.pro_detail}" id="pro_detail"></input>
					</div>
					<div class="e3000_5">
						<b>메뉴가격</b><br> <input type="text"
							value="${detailmenu.pro_price}" id="pro_price"></input>
					</div>
					<div class="e3000_6">
						<b>메뉴좋아요수</b> <br> <input type="text"
							value="${detailmenu.pro_like}" id="pro_like"></input>
					</div>
					<div class="e3000_7">
						<b>메뉴등록날짜</b> <br> <input type="date"
							value="${detailmenu.pro_rd}" id="pro_rd"></input>
					</div>
				</div>
				<div class="e2099_2491">
					<div class="e3002"></div>
					<div class="e3000_8">
						<p>
							<b>메뉴 영양소 정보</b>
						</p>
					</div>
					<div class="e3000_9">
						<b>메뉴알레르기</b> <br> <input type="text"
							value="${detailmenu.pro_aller}" id="pro_aller"></input>
					</div>
					<div class="e3000_10">
						<b>메뉴단백질</b> <br> <input type="text"
							value="${detailmenu.pro_prot}" id="pro_prot"></input>
					</div>
					<div class="e3000_11">
						<b>메뉴탄수화물</b> <br> <input type="text"
							value="${detailmenu.pro_carb}" id="pro_carb"></input>
					</div>
					<div class="e3000_12">
						<b>메뉴지방</b> <br> <input type="text"
							value="${detailmenu.pro_prov}" id="pro_prov"></input>
					</div>
					<div class="e3000_13">
						<b>메뉴나트륨</b> <br> <input type="text"
							value="${detailmenu.pro_nat}" id="pro_nat"></input>
					</div>
					<div class="e3000_14">
						<b>메뉴당류</b> <br> <input type="text"
							value="${detailmenu.pro_sugar}" id="pro_sugar"></input>
					</div>
					<div class="e3000_15">
						<b>메뉴칼로리</b> <br> <input type="text"
							value="${detailmenu.pro_cal}" id="pro_cal"></input>
					</div>
					<div class="e3000_16">
						<b>메뉴중량</b> <br> <input type="text"
							value="${detailmenu.pro_weight}" id="pro_weight"></input>
					</div>
				</div>
				<div class="e2099_2492">
					<div class="e3003"></div>
					<div class="e3000_17">
						<p>
							<b>메뉴 기타 정보</b>
						</p>
					</div>
					<div class="e3000_18">
						<b>메뉴배부르9여부</b> <br> <input type="text"
							value="${detailmenu.pro_sub9}" id="pro_sub9"></input>
					</div>
					<div class="e3000_19">
						<b>메뉴배터지9여부</b> <br> <input type="text"
							value="${detailmenu.pro_sub19}" id="pro_sub19"></input>
					</div>
					<div class="e3000_20">
						<b>메뉴무료체험</b> <br> <input type="text"
							value="${detailmenu.pro_free}" id="pro_free"></input>
					</div>
					<div class="e3000_21">
						<b>메뉴재고</b> <br> <input type="text"
							value="${detailmenu.pro_sc}" id="pro_sc"></input>
					</div>
				</div>
				<div class="e3004"></div>
				<div class="e3000_99">
					<p>
						<b>메뉴 사진 정보</b>
					</p>
				</div>
				<div class="e3000_100">
					<!--  -->
					<div class="e3000_26">
						<div class="e3000_30">
							<label for="file">
						<!-- 		<div class="btn-upload"></div> -->
							</label> <input onchange="readURL(this, 'preview1');" multiple="multiple"
								id="file" type="file" name="file" /> <img id="preview1"
								id="preview-image" class="e3000_101"
								src="${cpath}/resources/upload/${detailmenuimage[0].proimage_image}"
								alt="Preview 1" />
						</div>
						<div class="e3000_22">
							<label for="file2">
							<!-- 	<div class="btn-upload"></div> -->
							</label> <input onchange="readURL(this, 'preview2');" multiple="multiple"
								type="file" name="file" id="file2" /> <img id="preview2"
								id="preview-image" class="e3000_101"
								src="${cpath}/resources/upload/${detailmenuimage[1].proimage_image}"
								alt="Preview 2" />
						</div>
						<div class="e3000_23">
							<label for="file3">
								<!-- <div class="btn-upload"></div> -->
							</label> <input onchange="readURL(this, 'preview3');" multiple="multiple"
								type="file" name="file" id="file3" /> <img id="preview3"
								id="preview-image" class="e3000_101"
								src="${cpath}/resources/upload/${detailmenuimage[2].proimage_image}"
								alt="Preview 3" />
						</div>
<%-- 						<div class="e3000_24">
							<label for="file4">
							<!-- 	<div class="btn-upload"></div> -->
							</label> <input onchange="readURL(this, 'preview4');" multiple="multiple"
								type="file" name="file" id="file4" /> <img id="preview4"
								id="preview-image" class="e3000_101"
								src="${cpath}/resources/upload/${detailmenuimage[3].proimage_image}"
								alt="Preview 4" />
						</div> --%>
					</div>
					<%-- 		<img class="e3000_101"
						src="${cpath}/resources/upload/${detailmenuimage[0].proimage_image}"></img>
					<img class="e3000_101"
						src="${cpath}/resources/upload/${detailmenuimage[1].proimage_image}"></img>
					<img class="e3000_101"
						src="${cpath}/resources/upload/${detailmenuimage[2].proimage_image}"></img>
					<img class="e3000_101"
						src="${cpath}/resources/upload/${detailmenuimage[3].proimage_image}"></img> --%>
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

	$(".sales").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSales.do",
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

	/* 	//수정
	 $("#update").on("click", function() {
	 var pro_no = $("#pro_no").val();
	 var pro_name = $("#pro_name").val();
	 var pro_detail = $("#pro_detail").val();
	 var pro_price = $("#pro_price").val();
	 var pro_rd = $("#pro_rd").val();
	 var pro_like = $("#pro_like").val();
	 var pro_aller = $("#pro_aller").val();
	 var pro_prot = $("#pro_prot").val();
	 var pro_carb = $("#pro_carb").val();
	 var pro_prov = $("#pro_prov").val();
	 var pro_nat = $("#pro_nat").val();
	 var pro_sugar = $("#pro_sugar").val();
	 var pro_cal = $("#pro_cal").val();
	 var pro_weight = $("#pro_weight").val();
	 var pro_sub9 = $("#pro_sub9").val();
	 var pro_sub19 = $("#pro_sub19").val();
	 var pro_free = $("#pro_free").val();
	 var pro_sc = $("#pro_sc").val();
	 var param = {
	 "pro_no" : pro_no,
	 "pro_name" : pro_name,
	 "pro_detail" : pro_detail,
	 "pro_price" : pro_price,
	 "pro_rd" : pro_rd,
	 "pro_like" : pro_like,
	 "pro_aller" : pro_aller,
	 "pro_prot" : pro_prot,
	 "pro_carb" : pro_carb,
	 "pro_prov" : pro_prov,
	 "pro_nat" : pro_nat,
	 "pro_sugar" : pro_sugar,
	 "pro_cal" : pro_cal,
	 "pro_weight" : pro_weight,
	 "pro_sub9" : pro_sub9,
	 "pro_sub19" : pro_sub19,
	 "pro_free" : pro_free,
	 "pro_sc" : pro_sc
	 }
	 $.ajax({
	 url : "${cpath}/admin/adminMenuUpdate.do",
	 type : "post",
	 data : param,
	 success : function(res) {
	 alert(res); 
	 location.href = "${cpath}/admin/adminMenu.do";
	 }
	 })
	 })
	 */
	//수정
	$("#update").on("click", function() {
		var pro_no = $("#pro_no").val();
		var pro_name = $("#pro_name").val();
		var pro_detail = $("#pro_detail").val();
		var pro_price = $("#pro_price").val();
		var pro_rd = $("#pro_rd").val();
		var pro_like = $("#pro_like").val();
		var pro_aller = $("#pro_aller").val();
		var pro_prot = $("#pro_prot").val();
		var pro_carb = $("#pro_carb").val();
		var pro_prov = $("#pro_prov").val();
		var pro_nat = $("#pro_nat").val();
		var pro_sugar = $("#pro_sugar").val();
		var pro_cal = $("#pro_cal").val();
		var pro_weight = $("#pro_weight").val();
		var pro_sub9 = $("#pro_sub9").val();
		var pro_sub19 = $("#pro_sub19").val();
		var pro_free = $("#pro_free").val();
		var pro_sc = $("#pro_sc").val();
		var formData = new FormData();



		formData.append("pro_no", pro_no);
		formData.append("pro_name", pro_name);
		formData.append("pro_detail", pro_detail);
		formData.append("pro_price", pro_price);
		formData.append("pro_rd", pro_rd);
		formData.append("pro_like", pro_like);
		formData.append("pro_aller", pro_aller);
		formData.append("pro_prot", pro_prot);
		formData.append("pro_carb", pro_carb);
		formData.append("pro_prov", pro_prov);
		formData.append("pro_nat", pro_nat);
		formData.append("pro_sugar", pro_sugar);
		formData.append("pro_cal", pro_cal);
		formData.append("pro_weight", pro_weight);
		formData.append("pro_sub9", pro_sub9);
		formData.append("pro_sub19", pro_sub19);
		formData.append("pro_free", pro_free);
		formData.append("pro_sc", pro_sc);
		/* var param = {
			"pro_no" : pro_no,
			"pro_name" : pro_name,
			"pro_detail" : pro_detail,
			"pro_price" : pro_price,
			"pro_rd" : pro_rd,
			"pro_like" : pro_like,
			"pro_aller" : pro_aller,
			"pro_prot" : pro_prot,
			"pro_carb" : pro_carb,
			"pro_prov" : pro_prov,
			"pro_nat" : pro_nat,
			"pro_sugar" : pro_sugar,
			"pro_cal" : pro_cal,
			"pro_weight" : pro_weight,
			"pro_sub9" : pro_sub9,
			"pro_sub19" : pro_sub19,
			"pro_free" : pro_free,
			"pro_sc" : pro_sc
		} */
		$.ajax({
			url : "${cpath}/admin/adminMenuUpdate.do",
			type : "post",
			data : formData,
			processData : false, // 필수: FormData를 사용할 때 false로 설정
			contentType : false, // 필수: FormData를 사용할 때 false로 설정
			success : function(res) {
				// 성공 시 동작
				alert(res);
				location.href = "${cpath}/admin/adminMenu.do";
			}
		});
	})

	//삭제
	$("#delete").on("click", function() {

		var pro_no = $("#pro_no").val();
		var param = {
			"pro_no" : pro_no
		}
		$.ajax({
			url : "${cpath}/admin/adminMenuDelete.do",
			type : "post",
			data : param,
			success : function(res) {
				/* alert(res) */
				location.href = "${cpath}/admin/adminMenu.do";
			}
		})
	})

	function readURL(input, previewId) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById(previewId).src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById(previewId).src = "";
		}
	}
</script>
</html>