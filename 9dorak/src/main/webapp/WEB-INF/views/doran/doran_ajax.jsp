<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<c:forEach items="${dlist}" var="doran" varStatus="loop">
		<tr>
			<td>${doran.mem_id}</td>
			<td>${doran.doran_title}</td>
			<td>${doran.doran_cont}</td>
			<td>${doran.doran_date}</td>
			<td>좋아요 ${doran.dlike}개</td>
			<td>댓글수 ${doran.dcomment}개</td>
		</tr>
	</c:forEach>
