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
	href="${cpath}/resources/css/adminMenuStyle.css?d" type="text/css" />
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
		<button class="insert_memu">추가하기</button>
			<table id="products" border="1">
				<caption>
					메뉴 list
					<form action="" id="setRows">
						<p>
							한 페이지당 데이터 수 : <input type="text" name="rowPerPage" value="5">
						</p>
					</form>

				</caption>

				<thead>
					<tr>
						<th>메뉴번호</th>
						<th>메뉴이름</th>
						<th>메뉴가격</th>
						<th>메뉴좋아요수</th>
						<th>메뉴구독수</th>
						<th>메뉴재고수</th>
						<th>메뉴조회수</th>
						<th>메뉴등록날짜</th>
						<th>메뉴삭제여부</th>
						<th>메뉴알레르기</th>
						<th>메뉴단백질</th>
						<th>메뉴탄수화물</th>
						<th>메뉴지방</th>
						<th>메뉴나트륨</th>
						<th>메뉴당류</th>
						<th>메뉴칼로리</th>
						<th>메뉴중량</th>
						<th>메뉴배부르9여부</th>
						<th>메뉴배터지9여부</th>
						<th>메뉴무료체험여부</th>

					</tr>
				</thead>
				<tbody>

					<c:forEach var="menu" items="${mlist}" varStatus="rowStatus">
						<tr>
							<td>${menu.pro_no}</td>
							<td>${menu.pro_name}</td>
							<td>${menu.pro_price}</td>
							<td>${menu.pro_like}</td>
							<td>${menu.pro_sub}</td>
							<td>${menu.pro_sc}</td>
							<td>${menu.pro_view}</td>
							<td>${menu.pro_rd}</td>
							<td>${menu.pro_delete}</td>
							<td>${menu.pro_aller}</td>
							<td>${menu.pro_prot}</td>
							<td>${menu.pro_carb}</td>
							<td>${menu.pro_prov}</td>
							<td>${menu.pro_nat}</td>
							<td>${menu.pro_sugar}</td>
							<td>${menu.pro_cal}</td>
							<td>${menu.pro_weight}</td>
							<td>${menu.pro_sub9}</td>
							<td>${menu.pro_sub19}</td>
							<td>${menu.pro_free}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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
	
    $(document).ready(function () {
        // 테이블의 각 행을 클릭했을 때 이벤트 핸들러
        $('#products tbody').on('click', 'tr', function () {
            // 클릭한 행의 메뉴 번호 가져오기
            var pro_no = $(this).find('td:first').text();

            // Ajax 호출
            $.ajax({
                type: 'POST',
                url: '${cpath}/admin/adminMenu.do',
                data: { pro_no: pro_no },
                success: function (response) {
                    // 서버에서의 응답 처리
                    $("body").html(response);
                    console.log(pro_no);

                    // 추가적인 동작 수행 가능
                },
                error: function (error) {
                    console.error('Error:', error);
                }
            });
        });
    });
	
	//페이징 처리 함수
	var $setRows = $('#setRows');

	$setRows.submit(function (e) {
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

	  var pageTotal = Math.ceil(rowTotals/ rowPerPage);
	  var i = 0;

	  for (; i < pageTotal; i++) {
	    $('<a href="#"></a>')
	        .attr('rel', i)
	        .html(i + 1)
	        .appendTo('#nav');
	  }

	  $tr.addClass('off-screen')
	      .slice(0, rowPerPage)
	      .removeClass('off-screen');

	  var $pagingLink = $('#nav a');
	  $pagingLink.on('click', function (evt) {
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

	    $tr.css('opacity', '0.0')
	        .addClass('off-screen')
	        .slice(startItem, endItem)
	        .removeClass('off-screen')
	        .animate({opacity: 1}, 300);

	  });

	  $pagingLink.filter(':first').addClass('active');

	});


	$setRows.submit();
</script>
</html>