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
	href="${cpath}/resources/css/adminPointStyle.css?d" type="text/css" />
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
		<span class="e2099_2475">쿠폰/포인트관리</span> <span class="sales">매출관리</span>
		<div class="admin_login">
			<div class="e2099_2476">
				<hr>
			</div>
			<div class="e2099_2478"></div>
			<span class="e2099_2477">관리자</span>
			<div class="e2101_2491"></div>
			<a href="${pageContext.request.contextPath}/my/logout.do"
				class="e2101_2490">로그아웃</a>
		</div>
		<div class="e2099_2485"></div>
		<div class="e2099_2486">
			<div class="controll-top">
				<div class="controll-div">
					<div class="title">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none">
<circle cx="12" cy="12" r="12" fill="#FF8901" />
</svg>
						<h3>쿠폰 생성 및 삭제</h3>
					</div>
					<div class="create-div">
						<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15"
							viewBox="0 0 15 15" fill="none">
<circle cx="7.5" cy="7.5" r="6" fill="#FF8901" stroke="white"
								stroke-width="3" />
</svg>
						<div class="create-text">CREATE</div>
						<input placeholder="적용할 회원을 셀렉한 뒤 입력하세요" name="couponName"
							class="coupon-input">
						<button class="create-button" onclick="createCoupon()">Create</button>
					</div>
					<div class="controll-div-3">
						<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15"
							viewBox="0 0 15 15" fill="none">
<path
								d="M13.5 7.5C13.5 10.8137 10.8137 13.5 7.5 13.5C4.18629 13.5 1.5 10.8137 1.5 7.5C1.5 4.18629 4.18629 1.5 7.5 1.5C10.8137 1.5 13.5 4.18629 13.5 7.5Z"
								fill="#FF8901" stroke="white" stroke-width="3" />
</svg>
						<div class="create-text">DELETE</div>
						<button class="delete-button-1" onclick="deleteCoupon()">Delete</button>
					</div>


					<div class="table-2">
						<table id="products" border="1" style="width: 300px;">
							<caption>
								회원 List
							</caption>

							<thead>
								<tr>
									<th style="border-radius: 10px 0px 0px 0px;"> ID</th>
									<th>NAME</th>
									<th style="border-radius: 0px 10px 0px 0px;">Select</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="mem" items="${mlist}" varStatus="rowStatus">
									<tr>
										<td>${mem.mem_id}</td>
										<td>${mem.mem_name}</td>
										<td><input type="checkbox" name="selectedMembers"
											value="${mem.mem_id}" class="checkbox-style"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

				</div>
			</div>

			<div class="controll-top-2">
				<div class="controll-div-2">
					<div class="title">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
							viewBox="0 0 24 24" fill="none">
  <circle cx="12" cy="12" r="12" fill="#FF8901" />
</svg>
						<h3>전체 쿠폰 항목</h3>
					</div>

					<div class="button-wrappers">
						<c:forEach var="existCoupon" items="${coupon}">
							<button class="delete-button"
								data-coupon-id="${existCoupon.coupon_name}">
								${existCoupon.coupon_name}</button>
						</c:forEach>
					</div>
				</div>

				<div class="table-1">


					<table id="products2" border="1">
						<caption>
							쿠폰 List

						<form action="" id="setRows">
								<!--  <p>-->
									<input type="text" name="rowPerPage" value="5" style="display:none">
									<!--  </p>-->
							</form>  
						</caption>

						<thead>
							<tr>
								<th style="border-radius: 10px 0px 0px 0px;">쿠폰코드</th>
								<th>쿠폰사용여부</th>
								<th>쿠폰명</th>
								<th>쿠폰등록여부</th>
								<th>사용자ID</th>
								<th style="border-radius: 0px 10px 0px 0px;">Select</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="coupon" items="${clist}" varStatus="rowStatus">
								<tr>
									<td>${coupon.coupon_code}</td>
									<td>${coupon.coupon_check}</td>
									<td>${coupon.coupon_name}</td>
									<td>${coupon.coupon_reg}</td>
									<td>${coupon.mem_id}</td>
									<td><input type="checkbox" name="selectedMembers"
										value="${coupon.mem_id}" class="checkbox-style"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="pagination"></div>
				</div>


			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function () {
    var rowsPerPage = 5;
    var $products2 = $("#products2");
    var $table1 = $(".table-1");
    var $pagination = $(".pagination");

    // Fixed amount to increase the height (adjust this value as needed)
    var heightIncrease = 98;

    // Function to update the pagination links and adjust table-1 height
    function updatePaginationAndAdjustHeight() {
        var totalRows = $products2.find("tbody tr").length;
        var totalPages = Math.ceil(totalRows / rowsPerPage);

        var paginationHTML = "";
        for (var i = 1; i <= totalPages; i++) {
            paginationHTML += '<a href="#" data-page="' + i + '">' + i + '</a>';
        }

        $pagination.html(paginationHTML);

        // Initial styling for the first page
        $pagination.find("a:first").addClass("active");

        // Hide additional rows beyond the first 'rowsPerPage'
        $products2.find("tbody tr:gt(" + (rowsPerPage - 1) + ")").hide();

        // Update table-1 height
        adjustTable1Height();
    }

    // Function to adjust the height of table-1 based on the table's visible rows
    function adjustTable1Height() {
        var tableHeight = $products2.find("tbody tr:visible").length * $products2.find("tbody tr:first").height();
        var paginationHeight = $pagination.height();
        var table1Height = tableHeight + paginationHeight + heightIncrease;

        $table1.height(table1Height);
    }

    // Initial pagination update and height adjustment
    updatePaginationAndAdjustHeight();

    // Event handler for pagination clicks
    $pagination.on("click", "a", function (e) {
        e.preventDefault();

        $pagination.find("a.active").removeClass("active");

        var currentPage = $(this).data("page");
        var startIndex = (currentPage - 1) * rowsPerPage;
        var endIndex = startIndex + rowsPerPage;

        // Show/hide table rows based on the current page
        $products2.find("tbody tr").hide();
        $products2.find("tbody tr").slice(startIndex, endIndex).show();

        $(this).addClass("active");

        // Adjust table-1 height after pagination click
        adjustTable1Height();
    });

    // Window resize event for height adjustment
    $(window).on("resize", adjustTable1Height);
});

	$(".e2099_2468").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMenu.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res);
			}

		})
	})

	$(".e2099_2469").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminMember.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
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
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
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
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
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
				$("body").html(res);
			}

		})
	})

	$(".e2099_2474").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminEvent.do",
			type : "get",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
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

	//페이징 처리 함수
	var $setRows = $('#setRows');

	$setRows
			.submit(function(e) {
				e.preventDefault();
				var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

		

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

	function getSelectedMembers() {
		var selectedMembers = [];
		$('input[name="selectedMembers"]:checked').each(function() {
			selectedMembers.push($(this).val());
		});
		return selectedMembers;
	}

	function createCoupon() {
		var couponName = $("input[name='couponName']").val();
		var selectedMembers = getSelectedMembers();
		alert("Coupon Name: " + couponName + "\nSelected Members:\n"
				+ selectedMembers.join(", "));

		$.ajax({
			url : "${cpath}/admin/adminCouponInsert.do",
			type : "POST",
			data : {
				couponName : couponName,
				selectedMembers : selectedMembers
			},
			traditional : true,
			success : function(res) {
				alert(res);
				updateCouponList();
			}
		});

	}

	function deleteCoupon() {
		var selectedCouponCodes = [];

		$('input[name="selectedMembers"]:checked').each(function() {
			var couponCode = $(this).closest('tr').find('td:first').text();
			selectedCouponCodes.push(couponCode);
		});

		if (selectedCouponCodes.length === 0) {
			alert("No coupons selected for deletion.");
			return;
		}

		var jsonData = JSON.stringify(selectedCouponCodes);
		alert(jsonData);

		$.ajax({
			url : "${cpath}/admin/adminCouponDelete.do",
			type : "POST",
			contentType : "application/json",
			data : jsonData,
			success : function(res) {
				alert(res);
				updateCouponList();
			}
		});
	}

	$(document).ready(function() {
		$(".delete-button").on("click", function() {
			var couponId = $(this).data("coupon-id");
			var confirmDelete = confirm("정말 " + couponId + "을 삭제하시겠습니까?");

			if (confirmDelete) {

				var couponIds = [ couponId ];

				$.ajax({
					url : "${cpath}/admin/adminCouponDelete.do",
					type : "POST",
					contentType : "application/json",
					data : JSON.stringify(couponIds),
					success : function(res) {
						alert(res);
						updateCouponList();

					}
				});
			}
		});
	});

	function updateCouponList() {
		$.ajax({
			url : "${cpath}/admin/adminPoint.do", // 실제 목록을 불러오는 URL로 변경해야 합니다.
			type : "GET",
			success : function(res) {
				var oldCssFilePath = "${cpath}/resources/css/adminPointStyle.css?d";
				$('link[href="' + oldCssFilePath + '"]').remove();
				$("body").html(res); // 새로운 목록으로 테이블 업데이트
			}
		});
	}
</script>
</html>