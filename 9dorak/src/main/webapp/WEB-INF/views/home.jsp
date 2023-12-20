<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<!--아이콘-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- 부트스트랩 icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 부트스트랩 js -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!-- 폰트어썸 js -->
<script src="https://kit.fontawesome.com/1169190f22.js"
	crossorigin="anonymous"></script>

<!--css-->
<link rel="stylesheet" href="css/market/common.css">
<link rel="stylesheet" href="css/market/index.css">
<link rel="stylesheet" href="css/market/join.css">

<!-- js -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="js/market/menu_hover.js"></script>
<script src="js/market/login_modal.js"></script>
<style>
/* dropdown */

.dropdown-container {
   position: relative;
}

.dropdown-content {
   position: absolute;
   top: 100%; /* Position the dropdown below the header */
   display: none;
   /* z-index: 999; */
}

.dropdown-content {
   display: none;
   position: absolute;
   background-color: #f9f9f9;
   width: 90px;
   box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
   z-index: 1;
   top: 100%;
   right: 0;
   display: none;
}

.dropdown-content a {
   color: black;
   padding: 12px 16px;
   text-decoration: none;
   display: block;
}

.dropdown:hover .dropdown-content {
   display: block;
   top: 100%; /* 상위 요소에서 100% 위치에 표시 */
   z-index: 900;
   left: 0;
   top: 100%; /* 상위 요소에서 100% 위치에 표시 */
}

.drop {
   height: 40px;
}

.drop:hover {
   color: red;
}
}
</style>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<h1>Hello world!</h1>


	<p>sunhee test</p>

	<P>The time on the server is ${serverTime}.</P>

	<a href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
	 
	
	<a href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
	<a href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
	<a href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
	
	<a href="${pageContext.request.contextPath}/menu/menuSpecificReview.do">특정 제품 리뷰
		test page</a>
	<a href="${pageContext.request.contextPath}/main.do">메인 테스트</a>
	<a href="${pageContext.request.contextPath}/sub/sub.do">구독하기</a>
	<a href="${pageContext.request.contextPath}/menu/menuMediaReview.do">사진 및 동영상 모아보기 test</a>
	<a href="${pageContext.request.contextPath}/wallet/pay.do">결제</a>
	<a href="${pageContext.request.contextPath}/yomo/notice.do">요모조모</a>
	<a href="${pageContext.request.contextPath}/my/myDeliveryList.do">마이페이지-배송조회</a>
	<a href="${pageContext.request.contextPath}/my/myLevel.do">마이페이지-회원등급</a>
	<a href="${pageContext.request.contextPath}/my/PayTest.do">결제 api 테스트 중</a>
    <a href="${pageContext.request.contextPath}/menu/menuReviewUpload.do">제품 리뷰 업로드 페이지</a>
    <a href="${pageContext.request.contextPath}/admin/adminMenu.do">관리자 페이지</a>

<!-- 로그인 하면 로그아웃 버튼 로그인 안하면 로그아웃 버튼도 이거 수정해서 하면 될거에요  -->
<!-- 동지현누님 로그인하면 로그인 버튼 안보이는 게 맞으니까 놀라지말 것 !!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!-- 지현이누나가 저장해놓은 세션 공간 이름이 loginmem 이니까 비어있는지 없는지 확인해서 출력해주는 것  -->
	<c:choose>
		<c:when test="${empty sessionScope.loginmem}">
			<a href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="${pageContext.request.contextPath}/my/myPage.do">마이페이지</a>
		</c:otherwise>
	</c:choose>


<!-- main_content 영역 -->
		<div id="main_content">
			<!--메인 슬라이드-->
			<div id="carouselExampleControls" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="${cpath }/resources/images/test.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="${cpath }/resources/images/test2.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="${cpath }/resources/images/test3.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="${cpath }/resources/images/test2.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="${cpath }/resources/images/test3.png"
							class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="${cpath }/resources/images/test.png"
							class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
	
</body>
</html>
