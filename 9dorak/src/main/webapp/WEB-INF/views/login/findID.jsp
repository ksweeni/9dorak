<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/findIDStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script>
	function showLoginError() {
		var errorMessage = "${findUserErrorMessage}";

		if (errorMessage !== "") {
			alert(errorMessage);
		}
	}
	window.onload = showLoginError;
</script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="screen">
		<div class="overlap-wrapper">
			<div class="overlap">
				<c:choose>
					<c:when test="${not empty findIdErrorMessage}">
						<!-- 해당하는 아이디가 존재하지 않을 때 -->
						<div class="text-wrapper">${findIdErrorMessage}</div>
					</c:when>
					<c:when test="${not empty birthdateErrorMessage}">
						<!-- 생년월일을 다시 입력해야 할 때 -->
						<div class="text-wrapper-10">${birthdateErrorMessage}</div>
					</c:when>
				</c:choose>
				<p class="element">
					<span class="span">아이를 위한 9일의 약속<br /></span> <span
						class="text-wrapper-2">구도락</span>
				</p>
				<div class="group">
					<div class="top-bar">
						<div class="frame">
							<div class="div">아이디 찾기</div>
							<img class="line" src="img/line-1.svg" />
						</div>
						<div class="frame">
							<button onclick="location.href='../login/findPwdForm.do'"
							type="submit" class="text-wrapper-3">비밀번호 찾기</button>
						</div>
					</div>
					<p class="p">
						<span class="span">아이디가 없으신가요 ?&nbsp;&nbsp;</span> <span
							class="text-wrapper-4">&nbsp;&nbsp;</span>
						<button onclick="location.href='../register/registerType.do'"
							type="submit" class="text-wrapper-5">회원가입 하기</button>
					</p>
					<div class="text-wrapper-6">계정을 잊으셨나요?</div>
					<form action="${pageContext.request.contextPath }/login/findId.do"
						method="post">
						<div class="frame-2">
							<div class="div-2">
								<div class="text-wrapper-7">이름</div>
								<input type="text" name="mem_name" class="group-2">
							</div>
							<div class="div-2">
								<div class="text-wrapper-8">전화번호</div>
								<div class="overlap-group-wrapper-1">
									<input type="text" name="mem_phone" class="overlap-group"
										placeholder="01012340000">
								</div>
							</div>
						</div>
						<div class="div-3">
							<div class="text-wrapper-11">생년월일</div>
							<div class="overlap-group-wrapper-2">
								<input type="date" name="mem_bd" class="payments-wrapper">
							</div>
						</div>

						<div class="login-button">
							<button class="div-wrapper" type="submit">
								<div class="text-wrapper-9">아이디 찾기</div>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
