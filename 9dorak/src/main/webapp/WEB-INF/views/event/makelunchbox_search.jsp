<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();
%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
						<c:forEach items="${mlist}" var="chall" varStatus="loop">
							<div class="property-default">
								<a onclick="redirectToChallenge(${chall.challenge_no})" class="overlap-group-6">
									<div class="blur">
										<div class="quiz-row-wrapper">
											<div class="quiz-row"></div>
										</div>
									</div>
									<div class="group-15">
										<div class="frame-2">
											<div class="text-wrapper-8">요리사 : ${chall.mem_id}</div>
											<div class="text-wrapper-9">${chall.challenge_name}</div>
										</div>
										<div class="group-16">
											<c:if
												test="${clistlike[loop.index].challenge_no == chall.challenge_no}">
												<!-- clistlike에 해당 chall_no가 있으면 별 이미지 출력 -->
												<!-- <img class="vector" src="../resources/images/event/star.png" /> -->
											</c:if>
											<c:if
												test="${clistlike[loop.index].challenge_no!= chall.challenge_no}">
												<!-- clistlike에 해당 chall_no가 없으면 다른 이미지 출력 -->
												<!-- <img class="vector" src="../resources/images/event/9make09.png" /> -->
											</c:if>
											<!-- 가져온 인덱스에 해당하는 challlike 항목 사용 -->
											<div class="text-wrapper-10">좋아요 : ${clistlike[loop.index].challengelike_cnt}</div>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
</body>
</html>