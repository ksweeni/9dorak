<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/createNewPwdStyle.css" 
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script>
	function showAlert() {
		var succesMessage = "${updatePwdSuccessMessage}";
		console.log(succesMessage);

		if (succesMessage != "") {
			alert(succesMessage);
		}
	}
	window.onload = showAlert;
</script>

</head>
<body>
	<div class="div-wrapper">
		<div class="overlap-wrapper">
			<div class="overlap">
				<p class="element">
					<span class="text-wrapper">아이를 위한 9일의 약속<br /></span> <span
						class="span">구도락</span>
				</p>
				<div class="group">
					<div class="top-bar">
						<div class="frame">
							<div class="text-wrapper-2">비밀번호 변경</div>
							<img class="img"/>
						</div>
					</div>
					<div class="text-wrapper-3">비밀번호를 변경해주세요</div>
					<form action="${pageContext.request.contextPath }/login/updatePwd.do"
						method="post">
					<div class="frame-2">
						<div class="div-2">
							<div class="text-wrapper-4">새 비밀번호</div>
							<input type="password" name="new_pw" class="group-2">
						</div>
						<div class="div-2">
							<div class="text-wrapper-4">비밀번호 확인</div>
							<input type="password" name="confirm_pw" class="group-2">
						</div>
					</div>
					<div class="login-button">
						<button class="overlap-group" type="submit">
							<div class="text-wrapper-5">비밀번호 변경</div>
						</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
