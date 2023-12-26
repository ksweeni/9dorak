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
	href="${cpath}/resources/css/adminNoticeStyle.css?d" type="text/css" />
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
		<span class="e2099_2473"
			onclick="location.href='${cpath}/admin/adminNotice.do'">게시판관리</span>
		<span class="e2099_2474">이벤트관리</span> <span class="e2099_2475">쿠폰/포인트관리</span>
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
			<div class="e2099_2487">
				<button class="notice-btn" onclick="toggleTable('notice')">공지사항</button>
				<button class="faq-btn" onclick="toggleTable('faq')">자주 묻는
					질문</button>
			</div>
			<div id="noticeTable" class="table-container">
				<table id="notice" border="1">
					<!-- 공지사항 테이블 내용 -->
					<caption>
						공지사항 list
						<form action="" id="setRows">
							<p>
								<input type="text" id="annoKeyword" placeholder="검색어 입력">
								<button id="searchBtn">검색</button>
							</p>
						</form>

					</caption>

					<thead>
						<tr>
							<th>공지사항번호</th>
							<th>공지사항제목</th>
							<th>공지사항조회수</th>
							<th>공지사항작성날짜</th>
							<th>공지사항작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="anno" items="${ylist}" varStatus="rowStatus">

							<tr>
								<td><a
									href="${cpath }/admin/adminNoticeDetail.do?anno_no=${anno.anno_no}">${anno.anno_no}</a></td>
								<td><a
									href="${cpath }/admin/adminNoticeDetail.do?anno_no=${anno.anno_no}">${anno.anno_title}</a></td>
								<td><a
									href="${cpath }/admin/adminNoticeDetail.do?anno_no=${anno.anno_no}">${anno.anno_view}</a></td>
								<td><a
									href="${cpath }/admin/adminNoticeDetail.do?anno_no=${anno.anno_no}">${anno.anno_date}</a></td>
								<td><a
									href="${cpath }/admin/adminNoticeDetail.do?anno_no=${anno.anno_no}">${anno.anno_writer}</a></td>
							</tr>

						</c:forEach>



					</tbody>

				</table>
				<!-- 게시판 테스트 -->

				<div class="numButton">
					<c:forEach var="pageNum" begin="${pagingVO.beginPage }"
						end="${pagingVO.endPage }">
						<c:choose>
							<c:when
								test="${pageNum eq pagingVO.currentPage && search eq null}">
								<span><a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a></span>
							</c:when>
							<c:when
								test="${pageNum eq pagingVO.currentPage && search ne null}">
								<span><a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a></span>
							</c:when>
							<c:otherwise>
								<a href="#" onclick="fn_paging('${pageNum}')">${pageNum }</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<div class="insertAnno">
					<button id="AnnoInsert">글쓰기</button>
				</div>
			</div>

		</div>


		<div id="faqTable" class="table-container">
			<table id="faq" border="1">
				<!-- FAQ 테이블 내용 -->
				<caption>
					자주 묻는 질문 list
					<form action="" id="setRows">
						
					</form>

				</caption>

				<thead>
					<tr>
						<th>FAQ번호</th>
						<th>FAQ제목</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="faq" items="${flist}" varStatus="rowStatus">
						<tr>
							<td><a
								href="${cpath }/admin/adminNoticeFaqDetail.do?faq_no=${faq.faq_no}">${faq.faq_no}</a></td>
							<td><a
								href="${cpath }/admin/adminNoticeFaqDetail.do?faq_no=${faq.faq_no}">${faq.faq_title}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 게시판 테스트 2 -->
			<div class="numButton2">
				<c:forEach var="pageNum" begin="${pagingVO2.beginPage }"
					end="${pagingVO2.endPage }">
					<c:choose>
						<c:when
							test="${pageNum eq pagingVO2.currentPage && search eq null}">
							<span><a href="#" onclick="fn_paging2('${pageNum}')">${pageNum }</a></span>
						</c:when>
						<c:when
							test="${pageNum eq pagingVO2.currentPage && search ne null}">
							<span><a href="#" onclick="fn_paging2('${pageNum}')">${pageNum }</a></span>
						</c:when>
						<c:otherwise>
							<a href="#" onclick="fn_paging2('${pageNum}')">${pageNum }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<!--  -->
			<div class="insertFaq">
				<button id="FaqInsert">글쓰기</button>
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

	function toggleTable(tableType) {
		var noticeTable = document.getElementById("noticeTable");
		var faqTable = document.getElementById("faqTable");
		if (tableType === 'notice') {
			fn_paging(1);
			noticeTable.style.display = "block";
			faqTable.style.display = "none";
		} else if (tableType === 'faq') {
			fn_paging2(1);
			noticeTable.style.display = "none";
			faqTable.style.display = "block";

		}
	}

	$("#AnnoInsert").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminNoticeInsert.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})
	$("#FaqInsert").on("click", function() {
		$.ajax({

			url : "${cpath}/admin/adminNoticeFaqInsert.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}

		})
	})

	function fn_paging(currentPage) {
		$.ajax({
			url : "${cpath}/admin/adminNotice.do?currentPage=" + currentPage,
			type : "get",
			success : function(res) {
				/* alert("갔따오기 성공"); */
				$("body").html(res);
			}

		})
		/* location.href = "${cpath}/admin/adminNotice.do?currentPage="
				+ currentPage; */
	}
	function fn_paging2(currentPage2) {
		$.ajax({
			url : "${cpath}/admin/adminNotice.do?currentPage=" + currentPage2,
			type : "get",
			success : function(res) {
				/* alert("갔따오기 성공"); */
				$("body").html(res);
				var noticeTable = document.getElementById("noticeTable");
				var faqTable = document.getElementById("faqTable");
				noticeTable.style.display = "none";
				faqTable.style.display = "block";
			}

		})
	}

	$("#searchBtn").on("click", function() {
		//alert($("#annoKeyword").val());
		var param = {
			keyword : $("#annoKeyword").val()
		}
		$.ajax({
			url : "${cpath}/admin/adminSearchAnno.do",
			type : "get",
			data : param,
			success : function(res) {
				//	 alert("갔따오기 성공"); 
				$("body").html(res);
				$(".numButton").hide();
			}
		})
	})
	
</script>
</html>