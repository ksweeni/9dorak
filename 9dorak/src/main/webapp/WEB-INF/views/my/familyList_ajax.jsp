<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<h2>지인 목록</h2>

				<c:if test="${empty familyList}">
					<p class="empty-message">조회 가능한 목록이 비어있습니다.</p>
				</c:if>

				<c:if test="${not empty familyList}">
					<table id="familyTable">
						<thead>
							<tr>
								<th>지인 이름</th>
								<th>지인 아이디</th>
								<th>가족/지인</th>
								<th>등록날짜</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="member" items="${familyList}">
								<tr>
									<td>${member.MEM_NAME}</td>
									<td>${member.MEM_ID2}</td>
									<td>${member.PEOPLE_CATEGORY}</td>
									<td>${member.PEOPLE_DATE}</td>
									<td><input type="checkbox" name="selectedIds" 
									class="rowCheckbox" 
									value="${member.MEM_ID2}"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<button class="deleteButton" onclick="deleteSelect()">지인
						삭제</button>
				</c:if>
				