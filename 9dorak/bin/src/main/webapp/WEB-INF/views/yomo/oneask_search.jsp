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
</body>
</html>