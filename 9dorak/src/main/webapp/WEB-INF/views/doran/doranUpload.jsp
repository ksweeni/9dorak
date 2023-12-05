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
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/doranUploadStyle.css" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	alert("${sessionScope.loginmem}");
</script>
<script>
	var doranImage; // 전역 변수로 선언
	function uploadData() {
		const currentDate = new Date();
		const doranDate = currentDate.toISOString().split('T')[0];
	
/* 		const doranTitle = $("#doranTitle").val();
		const doranCont = $("#doranCont").val();
		const currentDate = new Date();
		const doranDate = currentDate.toISOString().split('T')[0];
		const memId = '${sessionScope.loginmem.mem_id}';

		const formData = new FormData();
		formData.append('doran_title', doranTitle);
		formData.append('doran_cont', doranCont);
		formData.append('doran_view', 0);
		formData.append('mem_id', memId);
		formData.append('doran_date', doranDate);
		formData.append('doran_image', doranImage);
		
		console.log("FormData contents:");
		formData.forEach((value, key) => {
		  console.log(key, value);
		});   */
		
 		var param = {
 				"doran_title" : $("#doranTitle").val(),
				"doran_cont" : $("#doranCont").val(),
				"doran_image": doranImage,
				"doran_date" : doranDate
				
 		};
 		
 		
	
		//alert("체크체크체크체크체크체크체크체크")
		$.ajax({
			url : "${cpath}/doran/doranUpload.do",
			type : 'POST',
			data : param,
			success : function(res) {
				console.log('Success:', res);
			},
			error : function(xhr, status, error) {
				console.error('Error:', error);
				console.error('Status:', status);
				console.error('Response:', xhr.responseText);
			}
		});
/* 		$.ajax({
			url : "${cpath}/doran/doranUpload.do",
			type : 'POST',
			data : formData,
			processData : false,
			contentType : false,
			success : function(res) {
				console.log('Success:', res);
			},
			error : function(xhr, status, error) {
				console.error('Error:', error);
				console.error('Status:', status);
				console.error('Response:', xhr.responseText);
			}
		}); */
	}
</script>
</head>

<body>
	<div class="div-wrapper">
		<div class="div">
		
			<header class="header">
					<div class="top-nav">
						<div class="navbar">
							<div class="text-wrapper-11">메뉴보기</div>
							<div class="text-wrapper-12">구독하기</div>
							<div class="text-wrapper-13">요모조모</div>
							<div class="text-wrapper-14">도란도란</div>
						</div>
						<img class="untitled-2" src="img/untitled-1-1.png" />
						<div class="group-6">
							<div class="text-wrapper-15">로그인 | 회원가입</div>
							<div class="group-7">
								<div class="overlap-group-3">
									<img class="group-8" src="img/group-1.svg" />
									<div class="ellipse"></div>
									<div class="text-wrapper-16">2</div>
								</div>
							</div>
						</div>
					</div>
				</header>
				
			<div class="frame">
				<div class="group">
					<div class="overlap">
						<div class="overlap-group-wrapper">
							<div class="overlap-group">
								<!-- 게시 내용 입력 -->
								<div class="doranTitleBox">
									<textarea id="doranTitle" placeholder="자유롭게 제목을 입력해보세요"></textarea>
								</div>
								<div class="doranContBox">
									<textarea id="doranCont" placeholder="자유롭게 입력해보세요"></textarea>
								</div>
								<div class="upload-field">
									<div class="type-n">
										<img class="feather-upload-cloud"
											src="img/feather-upload-cloud.svg" />
										<div class="bottom-content">
											<div class="description">
												<p class="text-wrapper">Select a file or drag and drop
													here</p>
												<p class="p">JPG, PNG or PDF, file size no more than
													10MB</p>
											</div>

											<!-- 버튼 클릭 시 파일첨부 테스트 -->
											<input type="file" id="fileInput" style="display: none;">
											<button class="button" onclick="selectFile()">
												<div class="select-file">SELECT FILE</div>
											</button>
											<!-- 첨부된 파일 정보 -->
											<div id="selectedFileName"></div>

											<script>
												function selectFile() {
													document.getElementById(
															'fileInput')
															.click();
												}

												document
														.getElementById(
																'fileInput')
														.addEventListener(
																'change',
																handleFileSelect);

												function handleFileSelect(event) {
													const selectedFile = event.target.files[0];

													if (selectedFile) {
														console
																.log(
																		'Selected File:',
																		selectedFile.name);
														console
																.log(
																		'File Size:',
																		selectedFile.size,
																		'bytes');
														console
																.log(
																		'File Type:',
																		selectedFile.type);

														document
																.getElementById('selectedFileName').innerText = 'Selected File: '
																+ selectedFile.name;

														doranImage = '${cpath}/resources/images/doran/'+ selectedFile.name;
														console.log(
																'Upload Path:',
																doranImage);

													}
												}
											</script>

										</div>
									</div>
								</div>

								<!-- 업로드 testing -->
								<div class="button-group-wrapper">
									<div class="button-group">
										<button class="cancel-wrapper">
											<div class="cancel">취소하기</div>
										</button>
										<button class="upload-wrapper" onclick="uploadData()">
											<div class="upload">업로드</div>
										</button>
									</div>
								</div>

							</div>
						</div>
						<div class="frame-wrapper">
							<div class="frame-2">
								<div class="frame-3">
									<div class="text-wrapper-2">글 작성하기</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="group-9">
				<div class="group-10">
					<div class="overlap-group-4">
						<div class="card">
							<div class="frame-4">
								<div class="ellipsis-wrapper">
									<div class="ellipsis">􀍠</div>
								</div>
							</div>
							<div class="tab">
								<button class="text-wrapper-17">도란도란</button>
							</div>
							<div class="tab-2">
								<button class="text-wrapper-18">내가 쓴 글</button>
							</div>
						</div>
						<div class="text-wrapper-19">도란도란</div>
					</div>
				</div>
			</div>
			<div class="doran-profile">
				<div class="doran-profile-photo">
					<img src="${cpath }/resources/images/test.png" />
				</div>
				<button class="doran-button-frofile-setting">
					<span>프로필 설정하기</span>
				</button>
			</div>
			<!-- <div class="group-wrapper">
				<div class="group-11">
					<div class="group-12">
						<div class="profile-wrapper">
							<img class="profile" src="img/profile.png" />
						</div>
					</div>
				</div>
			</div> -->
			
			<footer class="footer">
				<div class="company-loco">
					<div class="company">
						<p class="text-wrapper-3">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Commodo libero viverra dapibus odio
							sit malesuada in quis. Arcu tristique elementum viverra integer
							id.</p>
						<img class="untitled" src="img/untitled-1-2.png" />
					</div>
					<div class="social-icon">
						<div class="facebook">
							<img class="mask-group" src="img/mask-group-3.png" />
						</div>
						<div class="instagram">
							<img class="img" src="img/mask-group-2.png" />
						</div>
						<div class="twitter">
							<img class="mask-group-2" src="img/mask-group.png" />
						</div>
						<div class="linkind">
							<img class="mask-group-2" src="img/image.png" />
						</div>
					</div>
				</div>
				<div class="contact-us">
					<div class="text-wrapper-4">Contact Us</div>
					<div class="group-2">
						<div class="text-wrapper-5">1234 Country Club Ave</div>
						<div class="text-wrapper-6">NC 123456, London, UK</div>
						<div class="text-wrapper-7">+0123 456 7891</div>
					</div>
					<div class="group-3">
						<div class="overlap-group-2">
							<div class="vector-wrapper">
								<img class="vector" src="img/vector-2.svg" />
							</div>
							<div class="text-wrapper-8">Enter your email....</div>
						</div>
					</div>
				</div>
				<div class="user-link">
					<div class="text-wrapper-9">User Link</div>
					<div class="group-4">
						<div class="text-wrapper-5">About Us</div>
						<div class="text-wrapper-6">Contact Us</div>
						<div class="text-wrapper-7">Order Delivery</div>
						<div class="payment-tex">Payment &amp; Tex</div>
						<div class="text-wrapper-10">Terms of Services</div>
					</div>
				</div>
				<div class="opening-restaurant">
					<div class="text-wrapper-9">Opening Restaurant</div>
					<div class="group-5">
						<div class="text-wrapper-5">Sat-Wet: 09:00am-10:00PM</div>
						<div class="text-wrapper-6">Thursdayt: 09:00am-11:00PM</div>
						<div class="text-wrapper-7">Friday: 09:00am-8:00PM</div>
					</div>
				</div>
			</footer>
			
		</div><!-- div -->
	</div><!-- div-wrapper -->
</body>

</html>
