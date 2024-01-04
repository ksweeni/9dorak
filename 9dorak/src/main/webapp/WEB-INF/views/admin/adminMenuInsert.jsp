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
	href="${cpath}/resources/css/adminMenuInsertStyle.css?d"
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
			<form action="${cpath}/admin/adminMenuInsert.do" method="post"
				enctype="multipart/form-data">
				<div class="e2099_3000">
					<button type="submit" class="insert_memu" id="insert">
						<b>메뉴 추가하기</b>
					</button>
				</div>
				<div class="e2099_2487">
					<div class="e2099_2490">
						<div class="e3001"></div>
						<div class="e3000_1">
							<p>
								<b>메뉴 기본 정보</b>
							</p>
						</div>
						<div class="e3000_3">
							<b>메뉴명</b> <br> <input type="text" name="pro_name"
								placeholder="메뉴명 입력"></input>
						</div>
						<div class="e3000_4">
							<b>메뉴설명</b> <br> <input type="text" name="pro_detail"
								placeholder="상세설명 입력"></input>
						</div>
						<div class="e3000_5">
							<b>메뉴가격</b><br> <input type="text" name="pro_price"
								placeholder="가격 입력"></input>
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
							<b>메뉴알레르기</b> <br> <input type="text" name="pro_aller"
								placeholder="알레르기 입력"></input>
						</div>
						<div class="e3000_10">
							<b>메뉴단백질</b> <br> <input type="text" name="pro_prot"
								placeholder="단백질량 입력"></input>
						</div>
						<div class="e3000_11">
							<b>메뉴탄수화물</b> <br> <input type="text" name="pro_carb"
								placeholder="탄수화물량 입력"></input>
						</div>
						<div class="e3000_12">
							<b>메뉴지방</b> <br> <input type="text" name="pro_prov"
								placeholder="지방량 입력"></input>
						</div>
						<div class="e3000_13">
							<b>메뉴나트륨</b> <br> <input type="text" name="pro_nat"
								placeholder="나트륨량 입력"></input>
						</div>
						<div class="e3000_14">
							<b>메뉴당류</b> <br> <input type="text" name="pro_sugar"
								placeholder="당류량 입력"></input>
						</div>
						<div class="e3000_15">
							<b>메뉴칼로리</b> <br> <input type="text" name="pro_cal"
								placeholder="칼로리 입력"></input>
						</div>
						<div class="e3000_16">
							<b>메뉴중량</b> <br> <input type="text" name="pro_weight"
								placeholder="메뉴중량 입력"></input>
						</div>
						<!--  -->
						<div class="e3000_99">
							<b>카테고리</b> <br> <select name=ingre_name>
								<option value="환경친화">환경친화</option>
								<option value="저염">저염</option>
								<option value="저당">저당</option>
								<option value="소">소</option>
								<option value="돼지">돼지</option>
								<option value="닭">닭</option>
								<option value="생선">생선</option>
								<option value="샐러드">샐러드</option>
								<option value="과일">과일</option>
							</select>
						</div>

						<!--  -->
					</div>
					<div class="e2099_2492">
						<div class="e3003"></div>
						<div class="e3000_17">
							<p>
								<b>메뉴 기타 정보</b>
							</p>
						</div>
						<div class="e3000_18">
							<b>메뉴배부르9여부</b> <br> <input type="text" name="pro_sub9"
								placeholder="A 혹은 B 입력"></input>
						</div>
						<div class="e3000_19">
							<b>메뉴배터지9여부</b> <br> <input type="text" name="pro_sub19"
								placeholder="A 혹은 B 입력"></input>
						</div>
						<div class="e3000_20">
							<b>메뉴무료체험</b> <br> <input type="text" name="pro_free"
								placeholder="F 입력"></input>
						</div>

					</div>
				</div>
				<div class="e3000_99">
					<div class="e3004"></div>
					<p>
						<b>메뉴 사진 정보</b>
					</p>
				</div>
				<div class="e3000_26">
					<div class="e3000_21">
						<label for="file">
							<div class="btn-upload">파일 업로드하기</div>
						</label> <input onchange="readURL(this, 'preview1');" multiple="multiple"
							id="file" type="file" name="file" /> <img id="preview1"
							class="preview-image" src="" alt="Preview 1" />
					</div>
<!-- 					<div class="e3000_22">
						<label for="file2">
							<div class="btn-upload">파일 업로드하기</div>
						</label> <input onchange="readURL(this, 'preview2');" multiple="multiple"
							type="file" name="file" id="file2" /> <img id="preview2"
							class="preview-image" src="" alt="Preview 2" />
					</div> -->
					<div class="e3000_23">
						<label for="file3">
							<div class="btn-upload">파일 업로드하기</div>
						</label> <input onchange="readURL(this, 'preview3');" multiple="multiple"
							type="file" name="file" id="file3" /> <img id="preview3"
							class="preview-image" src="" alt="Preview 2" />
					</div>
					<div class="e3000_24">
						<label for="file4">
							<div class="btn-upload">파일 업로드하기</div>
						</label> <input onchange="readURL(this, 'preview4');" multiple="multiple"
							type="file" name="file" id="file4" /> <img id="preview4"
							class="preview-image" src="" alt="Preview 3" />
					</div>
				</div>
			</form>
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

	$(".sales").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSales.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
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