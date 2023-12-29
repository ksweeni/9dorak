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
	href="${cpath}/resources/css/adminMemberStyle.css?e" type="text/css" />
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
			<a href="${pageContext.request.contextPath}/my/logout.do"
				class="e2101_2490">로그아웃</a>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
			<button class="insert_member"><svg  class="svg-insert" xmlns="http://www.w3.org/2000/svg" width="31" height="30" viewBox="0 0 31 30" fill="none">
<path d="M27.0533 3.12162C26.967 3.02709 26.8624 2.95098 26.7457 2.8979C26.629 2.84481 26.5028 2.81586 26.3745 2.81277C26.2463 2.80969 26.1188 2.83255 25.9997 2.87997C25.8806 2.92738 25.7724 2.99837 25.6816 3.08865L24.9508 3.81341C24.8623 3.90173 24.8125 4.02149 24.8125 4.14636C24.8125 4.27122 24.8623 4.39098 24.9508 4.4793L25.6207 5.14578C25.6647 5.18975 25.7169 5.22464 25.7743 5.24845C25.8318 5.27225 25.8935 5.28451 25.9557 5.28451C26.018 5.28451 26.0796 5.27225 26.1371 5.24845C26.1946 5.22464 26.2468 5.18975 26.2907 5.14578L27.0031 4.43927C27.3635 4.08071 27.3972 3.49666 27.0533 3.12162Z" fill="#F48E28"/>
<path d="M23.4777 5.27358L12.8629 15.8337C12.7985 15.8976 12.7517 15.9769 12.727 16.064L12.236 17.5214C12.2243 17.561 12.2234 17.6029 12.2336 17.6429C12.2438 17.6829 12.2646 17.7194 12.2939 17.7486C12.3232 17.7777 12.3598 17.7985 12.3999 17.8086C12.44 17.8188 12.4821 17.818 12.5218 17.8062L13.983 17.3169C14.0704 17.2923 14.15 17.2457 14.2141 17.1815L24.8101 6.60151C24.9082 6.50276 24.9632 6.36946 24.9632 6.23055C24.9632 6.09165 24.9082 5.95835 24.8101 5.8596L24.2251 5.27358C24.1259 5.17499 23.9915 5.11963 23.8514 5.11963C23.7113 5.11963 23.5769 5.17499 23.4777 5.27358V5.27358Z" fill="#F48E28"/>
<path d="M22.7143 11.3473L15.548 18.5033C15.2711 18.78 14.9306 18.9854 14.5562 19.1016L13.0334 19.6096C12.6721 19.7113 12.29 19.7151 11.9266 19.6207C11.5633 19.5263 11.2317 19.337 10.9662 19.0723C10.7007 18.8077 10.5108 18.4773 10.416 18.1152C10.3212 17.753 10.3251 17.3723 10.4271 17.0121L10.9369 15.4945C11.0531 15.1215 11.2588 14.7822 11.536 14.5061L18.7164 7.36289C18.7822 7.29737 18.827 7.21387 18.8452 7.12294C18.8634 7.03202 18.8542 6.93776 18.8186 6.85209C18.7831 6.76641 18.7228 6.69317 18.6455 6.64163C18.5682 6.59008 18.4772 6.56254 18.3842 6.5625H6.11468C5.24148 6.5625 4.40404 6.9082 3.78659 7.52356C3.16914 8.13891 2.82227 8.97351 2.82227 9.84375V23.9063C2.82227 24.7765 3.16914 25.6111 3.78659 26.2265C4.40404 26.8418 5.24148 27.1875 6.11468 27.1875H20.225C21.0982 27.1875 21.9357 26.8418 22.5531 26.2265C23.1705 25.6111 23.5174 24.7765 23.5174 23.9063V11.6783C23.5174 11.5856 23.4898 11.495 23.438 11.4179C23.3863 11.3409 23.3128 11.2808 23.2269 11.2454C23.1409 11.2099 23.0463 11.2007 22.9551 11.2188C22.8638 11.237 22.7801 11.2817 22.7143 11.3473Z" fill="#F48E28"/>
</svg>추가하기</button>
			<div class="member-wrapper">
				<table id="products" border="1" frame=void>
					<caption>
						회원 list
						<form action="" id="setRows">
					
								<input type="text" name="rowPerPage" value="5" style="display:none;">
						
						</form>

					</caption>

					<thead>
						<tr>
							<th style="border-radius: 10px 0px 0px 0px;">회원ID</th>
							<th>회원이름</th>
							<th>회원생일</th>
							<th>회원이메일</th>
							<th>회원핸드폰번호</th>
							<th>회원패스워드</th>
							<th>회원코드</th>
							<th>회원포인트</th>
							<th>회원등급</th>
							<th>회원탈퇴여부</th>
							<th style="border-radius: 0px 10px 0px 0px;">회원이미지</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="mem" items="${memlist}" varStatus="rowStatus">
							<tr>
								<td>${mem.mem_id}</td>
								<td>${mem.mem_name}</td>
								<td>${mem.mem_bd}</td>
								<td>${mem.mem_email}</td>
								<td>${mem.mem_phone}</td>
								<td>${mem.mem_pw}</td>
								<td>${mem.mem_code}</td>
								<td>${mem.mem_point}</td>
								<td>${mem.mem_grade}</td>
								<td>${mem.mem_quit}</td>
								<td>${mem.mem_image}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2470").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminOrder.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2472").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminSub.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2473").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminNotice.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2474").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminEvent.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2475").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminPoint.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
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

	$(".insert_member").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMemberInsert.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminMemberStyle.css?e";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(document).ready(function() {
		// 테이블의 각 행을 클릭했을 때 이벤트 핸들러
		$('#products tbody').on('click', 'tr', function() {
			// 클릭한 행의 메뉴 번호 가져오기
			var mem_id = $(this).find('td:first').text();

			// Ajax 호출
			$.ajax({
				type : 'POST',
				url : '${cpath}/admin/adminMember.do',
				data : {
					mem_id : mem_id
				},
				success : function(response) {
					// 서버에서의 응답 처리
					$("body").html(response);
					console.log(mem_id);

					// 추가적인 동작 수행 가능
				},
				error : function(error) {
					console.error('Error:', error);
				}
			});
		});
	});

	//페이징 처리 함수
	var $setRows = $('#setRows');

	$setRows
			.submit(function(e) {
				e.preventDefault();
				var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

				//	    console.log(typeof rowPerPage);

				var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
				if (!rowPerPage) {
					alert(zeroWarning);
					return;
				}
				$('#nav').remove();
				var $products = $('#products');

				$products.after('<div id="nav">');

				var $tr = $($products).find('tbody tr');
				var rowTotals = $tr.length;
				//  console.log(rowTotals);

				var pageTotal = Math.ceil(rowTotals / rowPerPage);
				var i = 0;

				for (; i < pageTotal; i++) {
					$('<a href="#"></a>').attr('rel', i).html(i + 1).appendTo(
							'#nav');
				}

				$tr.addClass('off-screen').slice(0, rowPerPage).removeClass(
						'off-screen');

				var $pagingLink = $('#nav a');
				$pagingLink.on('click', function(evt) {
					evt.preventDefault();
					var $this = $(this);
					if ($this.hasClass('active')) {
						return;
					}
					$pagingLink.removeClass('active');
					$this.addClass('active');

					// 0 => 0(0*4), 4(0*4+4)
					// 1 => 4(1*4), 8(1*4+4)
					// 2 => 8(2*4), 12(2*4+4)
					// 시작 행 = 페이지 번호 * 페이지당 행수
					// 끝 행 = 시작 행 + 페이지당 행수

					var currPage = $this.attr('rel');
					var startItem = currPage * rowPerPage;
					var endItem = startItem + rowPerPage;

					$tr.css('opacity', '0.0').addClass('off-screen').slice(
							startItem, endItem).removeClass('off-screen')
							.animate({
								opacity : 1
							}, 300);

				});

				$pagingLink.filter(':first').addClass('active');

			});

	$setRows.submit();
</script>
</html>