<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/foundIDStyle.css?s"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="screen">
		<div class="overlap-wrapper">
			<div class="overlap">
				<p class="element">
					<span class="text-wrapper">아이를 위한 9일의 약속<br /></span> <span
						class="span">구도락</span>
				</p>
				<div class="frame">
					<div class="div">회원님의 아이디는</div>
					<p class="found">
						<span class="span">${foundId}</span> <span
							class="text-wrapper">입니다</span>
					</p>
				</div>
			</div>
			<div class="group">
				<div class="top-bar">
					<div class="frame-2">
						<div class="text-wrapper-2">아이디 찾기</div>
						<img class="line" />
					</div>
					<div class="frame-2">
					<button onclick="location.href='../login/findPwdForm.do'"
							type="submit" class="text-wrapper-3">비밀번호 찾기</button>
					</div>
				</div>
				<div class="text-wrapper-4">계정을 잊으셨나요?</div>
				<a href="../login/loginForm.do" role="button">
					<div class="login-button">
						<div class="overlap-group">
							<div class="text-wrapper-5">로그인 하기</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>