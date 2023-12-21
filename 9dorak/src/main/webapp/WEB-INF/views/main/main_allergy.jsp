<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class=e1433_2783>
			<div class=e1433_2784>
				<div class="e1433_2785"></div>
				<img class="e1433_2787"
				src="${cpath}/resources/images/menu/proimage/${slist[0].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2788>
				<span class="e1433_2789">${slist[0].pro_price}원</span> <span
					class="e1433_2790">${slist[0].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${slist[0].pro_no}" class=e1433_2791>
					<span class="e1433_2792">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2793>
			<div class=e1433_2794>
				<div class="e1433_2795"></div>
				<img class="e1433_2797"
				src="${cpath}/resources/images/menu/proimage/${slist[1].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2798>
				<span class="e1433_2799">${slist[1].pro_price}원</span> <span
					class="e1433_2800">${slist[1].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${slist[1].pro_no}" class=e1433_2801>
					<span class="e1433_2802">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2803>
			<div class=e1433_2804>
				<div class="e1433_2805"></div>
				<img class="e1433_2807"
				src="${cpath}/resources/images/menu/proimage/${slist[2].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2808>
				<span class="e1433_2809">${slist[2].pro_price}원</span> <span
					class="e1433_2810">${slist[2].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${slist[2].pro_no}" class=e1433_2811>
					<span class="e1433_2812">자세히보기</span>
				</a>
			</div>
		</div>
</body>
</html>