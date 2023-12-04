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
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${cpath}/resources/css/registerStyle.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>registerForm</title>
</head>
<body>
	<div class="v38_189">
		<div class="v36_462"></div>
		<a href="${cpath }" class="v32_437">아이를 위한 9일의 약속 <span
			style="color: orange;">구도락</span></a><span class="v39_12">회원가입</span><span
			class="v39_13">구도락에 가입하고 다양한 도시락을 체험해보세요!</span>
		<div class="v39_14">
			<!-- 동그라미 부분 -->
			<div class=e39_14>
				<div class=e39_15>
					<div class=e39_16>
						<div class=ei39_16_642_212>
							<div class="ei39_16_642_213"></div>
							<div class="ei39_16_642_214"></div>
							<div class="ei39_16_642_215"></div>
							<div class="ei39_16_642_216"></div>
							<div class="ei39_16_642_218"></div>
							<!-- 							<span class="ei39_16_642_220">3</span> -->
						</div>
					</div>
					<div class="e39_17"></div>
				</div>
			</div>
		</div>
		<form
			action="${pageContext.request.contextPath }/register/register.do"
			method="post">
			<div class="v39_68">
				<div class="v39_177">
					<div class="v39_178"></div>
					<span class="v39_179">아이디</span> <input class="v39_178" type="text"
						id="mem_id" name="mem_id" placeholder="hcghcg17" />
				</div>
				<!--중복확인 -->
				<div class="v39_203">
					<div class=e39_203>

						<button class="e39_204" id="idCheck">
							<div class="e39_205">중복확인</div>
						</button>
					</div>
				</div>
				<div class="v39_180">
					<input class="v39_181" type="password" id="mem_pw" name="mem_pw"
						placeholder="1234"> <span class="v39_182">비밀번호</span>
				</div>
				<div class="v39_183">

					<input class="v39_184" type="text" id="mem_name" name="mem_name"
						placeholder="홍찬기"> <span class="v39_185">이름</span>
				</div>
				<div class="v39_186">
					<input class="v39_187" type="email" name="mem_email" id="mem_email"
						placeholder="hcghcg17@naver.com"> <span class="v39_188">이메일</span>
				</div>
				<div class="v39_105">
					<button class="v39_106" id="emailCheck">
						<div class="v39_107">이메일인증</div>
					</button>
				</div>
				<div class="v39_189">
					<input class="v39_190" type="date" name="mem_bd" id="mem_bd"
						style="font-size: 15px"> <span class="v39_191">생년월일</span>
				</div>


				<div class="v39_87">
					<!-- 				<div class="v39_90"></div> -->
					<input class="v39_90" type="text" id="mem_phone" name="mem_phone"
						placeholder="01096681635"> <span class="v39_91">휴대폰</span>
				</div>
				<div class="v39_192">
					<input class="v39_193" type="text" placeholder="추천인 코드 입력"
						name="mem_code" id="mem_code"> <span class="v39_194">추천인
						입력 <span style="color: orange;">(선택)</span> <br />고객님과 추천인 모두에게
						구도락 포인트를 드려요!
					</span>
				</div>
				<div class="v39_197">
					<button class="v39_198" id="register">
						<div class="v39_199">회원가입</div>
					</button>
				</div>
			</div>
			<input type="hidden" value="idUncheck" id="idCheckValue" />
		</form>
		<span class="v39_195">이미 계정이 있나요? </span> <a class="v39_196"
			href="${cpath }/login/loginForm.do">로그인하기</a>
	</div>

</body>
<script type="text/javascript">
	$("#idCheck").on("click", function(e) {
		e.preventDefault();
		if ($("#mem_id").val().length == 0) {
			alert("아이디를 입력해주세요");
			return;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/register/idCheck.do",
			data : {
				mem_id : $("#mem_id").val()
			},
			success : function(data) {
				if (data === "false") {
					$("#idCheckValue").val("idUncheck");
					alert("사용 불가능한 아이디 입니다.")
				} else if (data === "true") {
					$("#idCheckValue").val("idcheck");
					alert("사용 가능한 아이디 입니다.")
				}
			}

		}); // ajax

	}); // idcheck

	$("#register")
			.on(
					"click",
					function(e) {
						// e.preventDefault(); 
						if ($("#idCheckValue").val() == "idUncheck") {
							alert("아이디 중복 체크하세요 ");
							e.preventDefault();
							return;
						}

						e.preventDefault();

						if ($("#mem_id").val().length == 0) {
							alert("아이디를 입력해주세요");
							$("#mem_id").focus();
							return;
						} else if ($("#mem_name").val().length == 0) {
							alert("이름을 입력해주세요");
							$("#mem_name").focus();
							return;
						} else if ($("#mem_pw").val().length == 0) {
							alert("비밀번호를 입력해주세요");
							$("#mem_pw").focus();
							return;
						} else if ($("#mem_email").val().length == 0) {
							alert("이메일을 입력해주세요");
							$("#mem_email").focus();
							return;
						} else if ($("#mem_bd").val().length == 0) {
							alert("생년월일을 입력해주세요");
							$("#mem_bd").focus();
							return;
						} else if ($("#mem_phone").val().length == 0) {
							alert("휴대폰 번호를 입력해주세요");
							$("#mem_phone").focus();
							return;
						}

						if ($("#mem_code").val().length != 0) {

							$
									.ajax({
										url : "${pageContext.request.contextPath}/register/codeCheck.do",
										data : {
											mem_code : $("#mem_code").val()
										},
										success : function(data) {
											if (data === "false") {
												alert("추천인 코드를 확인하세요");
											} else if (data == "true") {
												$("form").submit();
											}

										}
									});
						} else {
							$("form").submit();
						} // 추천인 코드 체크 + 회원가입
					});

	$("#emailCheck").on("click", function(event) {
		event.preventDefault();
	});// 이메일 인증 나중에 하자
</script>
</html>