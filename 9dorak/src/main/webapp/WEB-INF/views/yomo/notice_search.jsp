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
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="anno" items="${ylist}" varStatus="rowStatus">
				<tr>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_no}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_title}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_date}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>