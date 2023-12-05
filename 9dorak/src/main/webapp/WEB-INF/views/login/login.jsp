<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/loginStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src = "https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script>
	function showLoginError() {
		var errorMessage = "${loginErrorMessage}";

		if (errorMessage !== "") {
			alert(errorMessage);
		}
	}
	window.onload = showLoginError;
</script>

</head>
<body>
	<div class="login">
		<div class="overlap-wrapper">
			<div class="overlap">
				<p class="element">
					<span class="span">아이를 위한 9일의 약속<br /></span> <span
						class="text-wrapper-8">구도락</span>
				</p>
				<div class="group">
					<div class="div">
						<div class="group-wrapper">
							<div class="group-2">
								<img class="line" />
								<div class="text-wrapper">구도락에 또 오셨군요 !</div>
								<div class="text-wrapper-2">로그인</div>
							</div>
						</div>
						<form action="${pageContext.request.contextPath }/login/login.do"
							method="post">
							<div class="view">
								<div class="group-3">
									<div class="id">
										<div class="text-wrapper-3">아이디</div>
										<div class="overlap-group-wrapper">
											<input type="text" name="mem_id" class="overlap-group"
												placeholder="9dorak">
										</div>
									</div>
								</div>
								<div class="password">
									<div class="text-wrapper-4">비밀번호</div>
									<div class="overlap-group-wrapper">
										<input type="password" name="mem_pw" class="overlap-group"
											placeholder="**********">
									</div>
								</div>
							</div>
							<div class="login-button">
								<button class="div-wrapper" type="submit">
									<div class="text-wrapper-5">로그인 하기</div>
								</button>
							</div>
						</form>
					</div>
					<div class="frame">
						<p class="p">
							<span class="span">아이디가 없으신가요 ?&nbsp;&nbsp;</span> <span
								class="text-wrapper-6">&nbsp;&nbsp;</span>
							<button onclick="location.href='../register/registerType.do'"
								type="submit" class="text-wrapper-7">회원가입 하기</button>
						</p>
						<p class="div-2">
							<span class="span">기억이 나지 않나요 ?&nbsp;&nbsp;</span>
							<button
								onclick="location.href='${pageContext.request.contextPath}/login/findIdForm.do'"
								type="submit" class="text-wrapper-9">아이디 / 비밀번호 찾기</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <div class="kakao-login-wrapper">
		<a href="<c:url value="/kakao_login" />"> <img
			src="${cpath}/resources/images/kakao_login_medium_narrow.png">
		</a>
		</div> --%>
		<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.5.0/kakao.min.js"
  integrity="sha384-kYPsUbBPlktXsY6/oNHSUDZoTX6+YI51f63jCPEIPFP09ttByAdxd2mEjKuhdqn4" crossorigin="anonymous"></script>
<script>
  Kakao.init('5441b1f53765881e55f0aca5e80b8b62'); // 사용하려는 앱의 JavaScript 키 입력
</script>

<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
    alt="카카오 로그인 버튼" />
</a>
<p id="token-result"></p>

<script>
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'https://127.0.0.1:9090/myapp',
    });
  }

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    var token = getCookie('authorize-access-token');

    if(token) {
      Kakao.Auth.setAccessToken(token);
      Kakao.Auth.getStatusInfo()
        .then(function(res) {
          if (res.status === 'connected') {
            document.getElementById('token-result').innerText
              = 'login success, token: ' + Kakao.Auth.getAccessToken();
          }
        })
        .catch(function(err) {
          Kakao.Auth.setAccessToken(null);
        });
    }
  }

  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
</script>
</body>
</html>

