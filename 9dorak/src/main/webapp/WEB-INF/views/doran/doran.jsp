<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/doranStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<script>
	var message = "${dlist}";
	var dlike = "${dlike}";
	var dcomment = "${dcomment}";

	console.log(message);
	console.log("dlike ", dlike);
	console.log("dcomment", dcomment);
</script>
<body>
	<div class="screen">
		<div class="div">
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
			<div class="overlap-3">
				<div class="group-6">
					<div class="group-wrapper">
						<div class="doran-context">
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

			<div class="viewsort"></div>

			<div class="group-4">

				<form id="orderByForm">
					<input type="button" onclick="submitForm('latest')" value="최신순">
					<input type="button" onclick="submitForm('views')" value="조회순">
					<input type="button" onclick="submitForm('likes')" value="가장 많은">

				</form>

				<script>
					var cpath = "${cpath}";
					console.log(cpath); // Ensure that cpath is correctly printed in the console

					function submitForm(orderBy) {

						alert("Button Clicked! Order By: " + orderBy);
						var form = document.getElementById('orderByForm');
						//form.action = cpath + "/doran/doran.do?orderBy="
						//		+ orderBy;
						//form.submit();
						$.ajax({
									url : cpath + "/doran/doran2.do",
									data : {"orderBy":orderBy},
									success : function(responseData) {
										alert(responseData);
										$("#here").html(responseData);
									}
								});
					}
				</script>
				<div id="here">
					<!--<c:forEach items="${dlist}" var="doran" varStatus="loop">
						<tr>
							<td>${doran.mem_id}</td>
							<td>${doran.doran_title}</td>
							<td>${doran.doran_cont}</td>
							<td>${doran.doran_date}</td>
						</tr>

						<h3>
							좋아요 ${dlike[loop.index]}개 댓글수 ${dcomment[loop.index]}개 조회수
							${doran.doran_view}개
							</td>
						</h3>
					</c:forEach> -->
				</div>

				<div class="doran-card">

					<c:forEach items="${dlist}" var="doran" varStatus="loop">
						<div class="doran-feed">
							<div class="doran-uploadInfo">
								<div>
									<img class="doran-uploadInfo-profile"
										src="${cpath }/resources/images/test.png" />
								</div>
								<div class="doran-uploadInfo-memid">${doran.mem_id }</div>
								<div class="doran-uploadInfo-time">8분전</div>
								<div class="doran-uploadInfo-memgrade">낑깡</div>
							</div>
							<div class="doran-uploadContent">
								<div class="doran-uploadContent-image">이미지or비디오</div>
								<div class="doran-uploadContent-content">${doran.doran_cont}</div>
							</div>
							<div class="doran-review">
								<div class="doran-review-like">${dlike[loop.index]}</div>
								<div class="doran-review-dcomment">${dcomment[loop.index]}</div>
								<div class="doran-review-reviewCnt">${doran.doran_view}</div>
							</div>
						</div>
					</c:forEach>

				</div>

			</div>

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
								<img class="icon" src="img/icon.svg" />
								<div class="text-wrapper-18">도란도란</div>
							</div>
							<div class="tab-2">
								<img class="icon-2" src="img/icon-2.svg" />
								<div class="text-wrapper-19">내가 쓴 글</div>
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
		</div>
	</div>
</body>
</html>
