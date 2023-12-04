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
	<c:forEach items="${dlist}" var="doran" varStatus="loop">
		<tr>
			<td>${doran.mem_id}</td>
			<td>${doran.doran_title}</td>
			<td>${doran.doran_cont}</td>
			<td>${doran.doran_date}</td>
		</tr>

		<h3>
			좋아요 ${dlike[loop.index]}개 댓글수 ${dcomment[loop.index]}개 조회수
			${doran.doran_view}개
			</td>
		</h3>
	</c:forEach>
</body>
</html>