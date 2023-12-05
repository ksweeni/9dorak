<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/doranStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<script>
	var message = "${dlist}";
	var dlike = "${dlike}";
	var dcomment = "${dcomment}";

	const memId = '${sessionScope.loginmem.mem_id}';
	console.log("회원아이디 : ", memId);

	//console.log(message);
	//console.log("dlike ", dlike);
	//console.log("dcomment", dcomment);
</script>
<body>
	<div class="screen">
		<div class="div">

			<header class="header">
				<div class="top-nav">
					<div class="navbar">
						<div class="text-wrapper-23">이벤트</div>
						<div class="text-wrapper-24">메뉴보기</div>
						<div class="text-wrapper-25">구독하기</div>
						<div class="text-wrapper-26">요모조모</div>
						<div class="text-wrapper-27">도란도란</div>
					</div>
					<img class="untitled-2" src="img/untitled-1-1.png" />
					<div class="div-3">
						<div class="text-wrapper-28">로그인 | 회원가입</div>
						<div class="group-20">
							<div class="overlap-group-3">
								<img class="group-21" src="img/group-1.svg" />
								<div class="ellipse"></div>
								<div class="text-wrapper-29">2</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<div class="overlap-3">
				<div class="group-6">
					<div class="group-wrapper">
						<div class="doran-context">
							<input class="doran-context-title" type="text" placeholder="제목">
							<textarea placeholder="내용을 자유롭게 입력하세요!"></textarea>
						</div>
						<div class="upload-button-wrap">
							<div class="doran-upload-media">
								<button class="doran-button-upload-photo">사진</button>
								<button class="doran-button-upload-video">비디오</button>
							</div>
							<button type="submit" class="doran-button-upload">업로드</button>
						</div>
					</div>
					<!-- group-wrapper -->
				</div>
				<!-- //group-6 -->
			</div>

			<div class="group-4">
				<div class="orderbyBtn">
					<form id="orderByForm">
						<input class="orderby_latest" type="button"
							onclick="submitForm('latest')" value="최신순"> <input
							class="orderby_views" type="button" onclick="submitForm('views')"
							value="조회순"> <input class="orderby_likes" type="button"
							onclick="submitForm('likes')" value="가장 많은">
					</form>
				</div>

				<div id="here">
					<!--data forEach -->
				</div>

				<div class="doran-card">

					<c:forEach items="${dlist}" var="doran" varStatus="loop">
						<div class="doran-feed">
							<div class="doran-uploadInfo">
								<div>
									<img class="doran-uploadInfo-profile"
										src="${cpath }/resources/images/test.png" />
								</div>
								<div class="doran-topInfo">
									<div class="doran-uploadInfo-memid">${doran.mem_id }</div>
									<div class="doran-uploadInfo-memgrade">낑깡</div>
								</div>
							</div>
							<div class="doran-uploadContent">
								<img class="doran-uploadContent-image"
									src="${cpath }/resources/images/menu/cake.png" />
								<div class="doran-uploadContent-content">${doran.doran_cont}</div>
							</div>
							<div class="doran-review">
								<div class="doran-uploadInfo-time">8분전</div>
								<div class="doran-review-like">${dlike[loop.index]}</div>
								<div class="doran-review-dcomment">${dcomment[loop.index]}</div>
								<div class="doran-review-reviewCnt">${doran.doran_view}</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<!-- doran-card -->
			</div>
			<!-- group-4 -->

			<div class="group-12">
				<div class="group-13">
					<div class="div-2">
						<div class="card">
							<div class="frame-wrapper">
								<div class="ellipsis-wrapper">
									<div class="ellipsis">􀍠</div>
								</div>
							</div>
							<div class="tab">
								<button id="doran" class="text-wrapper-18"
									onclick="getData('doran')">도란도란</button>
							</div>
							<div class="tab-2">
								<button id="myDoran" class="text-wrapper-19"
									onclick="getData('myDoran')">내가 쓴 글</button>
							</div>

						</div>
						<div class="text-wrapper-20">도란도란</div>
					</div>
				</div>
				<div class="group-14">
					<div class="overlap-4">
						<img class="vector-2" src="img/vector-2.svg" />
						<div class="text-wrapper-21">검색어를 입력하세요</div>
					</div>
				</div>
			</div>
			<!-- group-12 -->

			<div class="group-15">
				<div class="group-16">
					<div class="group-17">
						<div class="div-2">
							<div class="doran-profile">
								<div class="doran-profile-photo">
									<img src="${cpath }/resources/images/test.png" />
								</div>
								<button class="doran-button-frofile-setting">
									<span>프로필 설정하기</span>
								</button>
							</div>
						</div>
					</div>
				</div>

				<form
					action="${pageContext.request.contextPath}/doran/doranUpload.do"
					method="get">
					<button type="submit" class="group-18">
						<div class="group-19">
							<img class="create" src="img/create.svg" />
							<div class="text-wrapper-22">글 작성하기</div>
						</div>
					</button>
				</form>
			</div>

			<div class="overlap">
				<footer class="footer">
					<div class="company-loco">
						<div class="company">
							<p class="text-wrapper">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Commodo libero viverra dapibus odio
								sit malesuada in quis. Arcu tristique elementum viverra integer
								id.</p>
							<img class="untitled" src="img/untitled-1-2.png" />
						</div>
						<div class="social-icon">
							<div class="facebook">
								<img class="mask-group" src="img/mask-group.png" />
							</div>
							<div class="instagram">
								<img class="img" src="img/mask-group-2.png" />
							</div>
							<div class="twitter">
								<img class="mask-group-2" src="img/image.png" />
							</div>
							<div class="linkind">
								<img class="mask-group-2" src="img/mask-group-3.png" />
							</div>
						</div>
					</div>
					<div class="contact-us">
						<div class="text-wrapper-2">Contact Us</div>
						<div class="group">
							<div class="text-wrapper-3">1234 Country Club Ave</div>
							<div class="text-wrapper-4">NC 123456, London, UK</div>
							<div class="text-wrapper-5">+0123 456 7891</div>
						</div>
						<div class="overlap-group-wrapper">
							<div class="overlap-group">
								<div class="vector-wrapper">
									<img class="vector" src="img/vector.svg" />
								</div>
								<div class="text-wrapper-6">Enter your email....</div>
							</div>
						</div>
					</div>
					<div class="user-link">
						<div class="text-wrapper-7">User Link</div>
						<div class="group-2">
							<div class="text-wrapper-3">About Us</div>
							<div class="text-wrapper-4">Contact Us</div>
							<div class="text-wrapper-5">Order Delivery</div>
							<div class="payment-tex">Payment &amp; Tex</div>
							<div class="text-wrapper-8">Terms of Services</div>
						</div>
					</div>
					<div class="opening-restaurant">
						<div class="text-wrapper-7">Opening Restaurant</div>
						<div class="group-3">
							<div class="text-wrapper-3">Sat-Wet: 09:00am-10:00PM</div>
							<div class="text-wrapper-4">Thursdayt: 09:00am-11:00PM</div>
							<div class="text-wrapper-5">Friday: 09:00am-8:00PM</div>
						</div>
					</div>
				</footer>
			</div>

		</div>


		<script>
			var cpath = "${cpath}";
			var dataForRadioButton; // Declare it outside the functions

			function getData(dataFor) {
				alert("Button Clicked! dataFor: " + dataFor);

				var activeButton = $(".tab button.active, .tab-2 button.active");

				if (activeButton.length > 0) {
					var activeButtonId = activeButton.attr("id");
					console.log("Active Button ID:", activeButtonId);
					dataForRadioButton=activeButtonId;
				} else {
					console.log("No active button found.");
				}

				// Add the 'active' class to the clicked button only if it's not already active
				if (!activeButton.is("#" + dataFor)) {
					$(".tab button").removeClass("active");
					$("#" + dataFor).addClass("active");
				}

				$.ajax({
					url : cpath + "/doran/doranFor.do",
					data : {
						"dataFor" : dataFor
					},
					success : function(responseData) {
						alert(responseData);
						$("#here").html(responseData);
					}
				});
			}

			function submitForm(orderBy) {
				alert("Button Clicked! Order By: " + orderBy);

				// Add the 'active' class to the clicked sorting button
				$(".group-4 input[type='button']").removeClass("active");
				$("input[value='" + orderBy + "']").addClass("active");

				// Check if "내가 쓴 글" is selected
				console.log("dataForRadioButton:", dataForRadioButton);

				// Check if "내가 쓴 글" is selected
				if (dataForRadioButton) {
					var activeWrapperId = $(dataForRadioButton).closest(
							'.text-wrapper-18, .text-wrapper-19').attr('id');
					console.log("Active Wrapper ID:", activeWrapperId);

					var dataFor = dataForRadioButton.value;
					var url;

					console.log("dataFor:", dataFor);

					if (dataFor === 'myDoran') {
						url = cpath + "/doran/doranFilterForMe.do";
					} else {
						url = cpath + "/doran/doranFilter.do";
					}

					$.ajax({
						url : url,
						data : {
							"orderBy" : orderBy
						},
						success : function(responseData) {
							alert(responseData);
							$("#here").html(responseData);
						}
					});
				} else {
					console
							.error("No radio button with name 'dataFor' is checked.");
				}

				// Prevent the form from submitting
				return false;
			}
		</script>

		<!-- div -->
	</div>


	<!-- screen -->
</body>
</html>
