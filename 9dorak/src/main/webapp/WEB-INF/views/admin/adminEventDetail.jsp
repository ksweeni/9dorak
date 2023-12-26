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
		
			</div>
			<div id="EvantDetail" class="table-container">
					
				<form action="">
				 <label for="ch_no">챌린지번호 : </label>
                    <input type="text" value="${challenge.challenge_no}" id="ch_no" readonly /><br />
    			 <label for="ch_name">챌린지명/도시락만들9명 : </label>
                    <input type="text" value="${challenge.challenge_name}" id="ch_name" /><br />
    			<label for="ch_cont">챌린지내용/도시락만들9소개 : </label>
                    <textarea id="ch_cont">${challenge.challenge_cont}</textarea><br />
    			<label for="ch_image">챌린지이미지/도시락만들9이미지 : </label>
    				<input type="text" value="${challenge.challenge_image}" id="ch_image"/> <br />
    			<label for="ch_date">챌린지날짜 : </label>
    				<input type="text" value="${challenge.challenge_date}" id="ch_date"/> <br />
   		 		<label for="ch_start">챌린지시작날짜 : </label>
   		 			<input type="text" value="${challenge.challenge_start}" id="ch_start"/> <br />
    			<label for="ch_end">챌린지종료날짜 : </label>
    				<input type="text" value="${challenge.challenge_end}" id="ch_end"/> <br />
    			<label for="ch_category">챌린지구분 : </label>
    				<input type="text" value="${challenge.challenge_category}" id="ch_category"/> <br />
    			<label for="ch_recipe">만들9레시피 : </label>
    				<input type="text" value="${challenge.challenge_recipe}" id="ch_recipe"/> <br />
    			<label for="mem_id">회원ID : </label>
    				<input type="text" value="${chno.mem_id}" id="mem_id"/> <br />
				</form>
			</div>
			<div id="buttonContainer">
			<button id="EvantUpdate">수정</button><button id="EvantDelete">삭제</button>
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
	
	$("#EvantUpdate").on("click",function(){

	 	var param ={
	 		challenge_no : $("#ch_no").val(),
	 		challenge_name : $("#ch_name").val(),
	 		challenge_cont : $("#ch_cont").val(),
	 		challenge_recipe : $("#ch_recipe").val()
		} 
	
		$.ajax({
			url : "${cpath}/admin/adminEventUpdate.do",
			data : param,
			type : "post",
			success: function(res){
				alert(res);
				location.href="${cpath}/admin/adminEvent.do";
			}
		})
		
	})
	
	$("#EvantDelete").on("click",function(){
 
	 	var param ={
	 		challenge_no : $("#ch_no").val()
		} 
	
		$.ajax({
			url : "${cpath}/admin/adminEventDelete.do",
			data : param,
			type : "post",
			success: function(res){
				alert(res);
				location.href="${cpath}/admin/adminEvent.do";
			}
		})
		
	})
</script>
</html>