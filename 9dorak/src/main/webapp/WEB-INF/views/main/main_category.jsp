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
		<div class=e1433_2752>
			<div class=e1433_2753>
				<div class="e1433_2754"></div>
				<img class="e1433_2756"
				src="${cpath}/resources/images/menu/proimage/${clist[0].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2757>
				<span class="e1433_2758">${clist[0].pro_price}원</span>
				<span class="e1433_2759">${clist[0].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${clist[0].pro_no}" class=e1433_2760>
					<span class="e1433_2761">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2762>
			<div class=e1433_2763>
				<div class="e1433_2764"></div>
				<img class="e1433_2766"
				src="${cpath}/resources/images/menu/proimage/${clist[1].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2767>
				<span class="e1433_2768">${clist[1].pro_price}원</span>
				<span class="e1433_2769">${clist[1].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${clist[1].pro_no}" class=e1433_2770>
					<span class="e1433_2771">자세히보기</span>
				</a>
			</div>
		</div>
		<div class=e1433_2772>
			<div class=e1433_2773>
				<div class="e1433_2774"></div>
				<img class="e1433_2776"
				src="${cpath}/resources/images/menu/proimage/${clist[2].pro_no}-2.jpg"></img>
			</div>
			<div class=e1433_2777>
				<span class="e1433_2778">${clist[2].pro_price}원</span>
				<span class="e1433_2779">${clist[2].pro_name}</span>
				<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${clist[2].pro_no}" class=e1433_2780>
					<span class="e1433_2781">자세히보기</span>
				</a>
			</div>
		</div>
</body>
</html>