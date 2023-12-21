<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/findPwdStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script>
    function showAlert(message) {
        if (message.trim() !== "") {
            alert(message);
        }
    }

    function showLoginMessages() {
        var errorMessage = "${findUserErrorMessage}";
        var successMessage = "${successMessage}";

        showAlert(errorMessage);
        showAlert(successMessage);
    }

    window.onload = showLoginMessages;
</script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>
</head>
<body>
	<div class="screen">
		<div class="overlap-wrapper">
			<div class="overlap">
				<p class="element">
					<span class="text-wrapper">아이를 위한 9일의 약속<br /></span> <span
						class="span">구도락</span>
				</p>
				<div class="group">
					<div class="top-bar">
						<div class="frame">
							<button onclick="location.href='../login/findIdForm.do'"
							type="submit" class="div">아이디 찾기</button>
							<img class="line" src="img/line-1.svg" />
						</div>
						<div class="frame">
							<div class="text-wrapper-2">비밀번호 찾기</div>
							<img class="img" src="img/image.svg" />
						</div>
					</div>
					<div class="text-wrapper-3">계정을 잊으셨나요?</div>
					<form action="${pageContext.request.contextPath }/login/findPwd.do"
						method="post">
						<div class="frame-2">
							<div class="div-2">
								<div class="text-wrapper-4">아이디</div>
								<input type="text" name="mem_id" class="group-2">
							</div>
							<div class="div-2">
								<div class="text-wrapper-5">이름</div>
								<input type="text" name="mem_name" class="group-2">
							</div>
							<div class="div-2">
								<div class="text-wrapper-5">전화번호</div>
								<div class="overlap-group-wrapper">
									<input type="text" name="mem_phone" class="overlap-group"
										placeholder="01012340000">
								</div>
							</div>
						</div>
						<div class="login-button">
							<button class="div-wrapper" type="submit">
								<div class="text-wrapper-6">비밀번호 찾기</div>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
