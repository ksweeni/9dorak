<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css" type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/oneaskStyle.css?d" type="text/css" />
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class=e815_534>
			<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-event"
					OnClick="location.href ='${pageContext.request.contextPath}/event/challenge.do'" style="cursor: pointer;">
					이벤트</div>
					<div class="text-menu"
					OnClick="location.href ='${pageContext.request.contextPath}/menu/menu.do'" style="cursor: pointer;">
					메뉴보기</div>
					<div class="text-subscribe"
					OnClick="location.href ='${pageContext.request.contextPath}/sub/sub.do'" style="cursor: pointer;">
					구독하기</div>
					<div class="text-yomo"
					OnClick="location.href ='${pageContext.request.contextPath}/yomo/notice.do'" style="cursor: pointer;">
					요모조모</div>
					<div class="text-doran"
					OnClick="location.href ='${pageContext.request.contextPath}/doran/doran.do'" style="cursor: pointer;">
					도란도란</div>
				</div>
				<img class="untitled-2"
					src="${cpath}/resources/images/main/header-logo.png" />
				<div class="div-3">
					<div class="text-wrapper-28"><a OnClick="location.href ='${pageContext.request.contextPath}/login/loginForm.do'" style="cursor: pointer;">로그인</a>
					 | 
					 <a OnClick="location.href ='${pageContext.request.contextPath}/register/registerType.do'" style="cursor: pointer;">회원가입</a></div>
					<div class="group-20" OnClick="location.href ='${pageContext.request.contextPath}/wallet/basket.do'" style="cursor: pointer;">
						<div class="header-overlap-group-3">
							<img class="header-group-21"
								src="${cpath}/resources/images/main/header-cart.png" />
							<div class="ellipse-light"></div>
							<!-- <div class="text-wrapper-29">2</div> -->
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="e844_606"></div>
		<div class=e815_1065>
			<div class=e815_1066>
				<div class="ei815_1066_6_1"></div>
			</div>
			<input type="text" class="e815_1067" placeholder="검색어를 입력하세요">
		</div>
	</div>
	<div class="e844_9999">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>문의 상태</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="oneask" items="${olist}" varStatus="rowStatus">
				<tr>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/oneaskDetail.do?oneask_no=' + ${oneask.oneask_no}">${oneask.oneask_no}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/oneaskDetail.do?oneask_no=' + ${oneask.oneask_no}">${oneask.oneask_title}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/oneaskDetail.do?oneask_no=' + ${oneask.oneask_no}">${oneask.mem_id}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/oneaskDetail.do?oneask_no=' + ${oneask.oneask_no}">${oneask.oneask_status}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/oneaskDetail.do?oneask_no=' + ${oneask.oneask_no}">${oneask.oneask_date}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div class="e844_616">
		<div id="button" style="text-align: right;">
		<button type="button" class="right-aligned-button">1:1문의 글쓰기</button>
	</div>
	</div>
	<div class=e854_1005>
		<div class=e831_684>
		</div>
		<div class=e844_862>
			<button class="e844_863">최근글 순</button>
			<div class=e844_864>
				<div class="ei844_864_773_285"></div>
				<div class=ei844_864_773_286>
					<div class="ei844_864_773_287"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="e844_619"></div>
	<div class=e1081_4450>
		<div class=e1081_4451>
			<div class=e1081_4452>
				<span class="e1081_4453">요모조모</span>
			</div>
		</div>
		<span class="e1081_4454">1:1 문의</span>
	</div>
	<div class=e1081_4455>
		<div class=e1081_4456>
		<div class="profile_photo"></div>
			<span class="e1081_4458">김수인</span><span class="e1081_4459">LV.낑깡</span>
		</div>
		<div class=e1081_4460>
			<a href="${pageContext.request.contextPath}/yomo/notice.do" class=e1081_4461>
				<span class="e1081_4462">공지사항</span>
			</a>
			<a href="${pageContext.request.contextPath}/yomo/faq.do" class=e1081_4463>
				<span class="e1081_4464">자주 묻는 질문</span>
			</a>
			<div class=e1081_4465>
				<span class="e1081_4466">1:1 문의</span>
			</div>
			<a href="${pageContext.request.contextPath}/yomo/aboutus.do" class=e1081_4467>
				<span class="e1081_4468">About Us</span>
			</a>
		</div>
	</div>
				<footer class="footer">
				<div class="footer-company-loco">
					<div class="footer-company">
						<p class="footer-text-wrapper">9도락 엄청 맛있는 레시피로 사랑을 담아서 만들었어요
							우리는 홍대에 위치해 있아요 룰루랄라 라라라라 맛있게 드세요 구독 좋아요 알림 설정까지~</p>
						<img class="footer-logo"
							src="${cpath}/resources/images/main/footer-logo.png" />
					</div>
					<div class="footer-social-icon">
						<div class="footer-facebook">
							<img class="footer-mask-group"
								src="${cpath}/resources/images/main/footer-facebook.png" />
						</div>
						<div class="footer-instagram">
							<img class="footer-img"
								src="${cpath}/resources/images/main/footer-insta.png" />
						</div>
						<div class="footer-twitter">
							<img class="footer-mask-group-2"
								src="${cpath}/resources/images/main/footer-twitter.png" />
						</div>
						<div class="footer-linkind">
							<img class="footer-mask-group-2"
								src="${cpath}/resources/images/main/footer-linkedin.png" />
						</div>
					</div>
				</div>
				<div class="footer-contact-us">
					<div class="footer-text-wrapper-2">Contact Us</div>
					<div class="footer-group">
						<div class="footer-text-wrapper-3">1234 Country Club Ave</div>
						<div class="footer-text-wrapper-3">NC 123456, London, UK</div>
						<div class="footer-text-wrapper-3">+0123 456 7891</div>
					</div>
					<div class="footer-overlap-group-wrapper">
						<div class="footer-overlap-group">
							<div class="footer-vector-wrapper">
								<img class="footer-vector"
									src="${cpath}/resources/images/main/footer-email-button.png" />
							</div>
							<input class="footer-enter-email"
								placeholder="Enter your email....">
						</div>
					</div>
				</div>
				<div class="footer-user-link">
					<div class="footer-text-wrapper-7">User Link</div>
					<div class="footer-group-2">
						<div class="footer-text-wrapper-3">About Us</div>
						<div class="footer-text-wrapper-3">Contact Us</div>
						<div class="footer-text-wrapper-3">Order Delivery</div>
						<div class="footer-text-wrapper-3">Payment &amp; Tex</div>
						<div class="footer-text-wrapper-3">Terms of Services</div>
					</div>
				</div>
				<div class="footer-opening-restaurant">
					<div class="footer-text-wrapper-7">Opening Restaurant</div>
					<div class="footer-group-3">
						<div class="footer-text-wrapper-3">Sat-Wet: 09:00am-10:00PM</div>
						<div class="footer-text-wrapper-3">Thursdayt:
							09:00am-11:00PM</div>
						<div class="footer-text-wrapper-3">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
	<div class="e1558_2333"></div>
	<script type="text/javascript">
	$(".ei815_1066_6_1").on("click", function(){
		$.ajax({
			url : "${cpath}/yomo/searchOneask.do",
			type : 'GET',
			data : {
				oneask_title : $(".e815_1067").val()
			},
			success : function(data) {
				$('.e844_9999').html(data);
			}
		});
	})
	
	$(".e854_1005 button").on("click", function() {
		
		$.ajax({
			url : "${cpath}/yomo/oneaskOrderby.do",
			type : 'GET',
			data : {
				order_type : $(this).text()
			},
			success : function(data) {
				$('.e844_9999').html(data);
			}
		});
	})
	
	$(".right-aligned-button").on("click",function(){
		location.href = "${cpath}/yomo/insertOneask.do";
	}) 
	</script>
</body>
</html>