<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<h1>Hello world!</h1>


	<p>sunhee test</p>

	<P>The time on the server is ${serverTime}.</P>

	<a href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
	<a href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
	<a href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
	<a href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
	<a href="${pageContext.request.contextPath}/doran/doranFeedDetail.do">도란게시물
		상세 test page</a>
	<a href="${pageContext.request.contextPath}/menu/menuSpecificReview.do">특정 제품 리뷰
		test page</a>
	<a href="${pageContext.request.contextPath}/main.do">메인 테스트</a>


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

</body>
</html>
