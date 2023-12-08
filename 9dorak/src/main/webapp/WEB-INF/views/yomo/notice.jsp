<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/noticeStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
	<div class=e815_534>
		<div class=e1140_2927>
			<div class=e1140_2928>
				<div class=e1140_2929>
					<span class="e1140_2930">이벤트</span><span class="e1140_2931">메뉴보기</span><span
						class="e1140_2932">구독하기</span><span class="e1140_2933">요모조모</span><span
						class="e1140_2934">도란도란</span>
				</div>
				<div class="e1140_2935"></div>
				<div class=e1140_2936>
					<span class="e1140_2937">로그인 | 회원가입</span>
					<div class=e1140_2938>
						<div class=e1140_2939>
							<div class="ei1140_2939_1_112"></div>
							<div class="ei1140_2939_1_113"></div>
							<div class="ei1140_2939_1_114"></div>
						</div>
						<div class="e1140_2940"></div>
						<span class="e1140_2941">2</span>
					</div>
				</div>
			</div>
		</div>
		<div class="e844_606"></div>
		<div class=e815_1065>
			<div class=e815_1066>
				<div class="ei815_1066_6_1"></div>
			</div>
			<input type="text" class="e815_1067" placeholder="검색어를 입력하세요">
		</div>
	</div>
	<div class="e844_9999">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="anno" items="${annolist}" varStatus="rowStatus">
				<tr>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_no}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_title}</td>
					<td onclick="location.href ='${pageContext.request.contextPath}/yomo/noticeDetail.do?anno_no=' + ${anno.anno_no}">${anno.anno_date}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<div class="e844_616"></div>
	<div class=e844_617>
		<span class="e844_618">공지사항</span>
	</div>
	<div class=e854_1005>
		<div class=e831_684>
			<div class=e831_685>
				<button class="e831_686">조회수 순</button>
				<div class=e831_687>
					<div class="ei831_687_773_285"></div>
					<div class=ei831_687_773_286>
						<div class="ei831_687_773_287"></div>
					</div>
				</div>
			</div>
		</div>
		<div class=e844_862>
			<button class="e844_863">최근글 순</button>
			<div class=e844_864>
				<div class="ei844_864_773_285"></div>
				<div class=ei844_864_773_286>
					<div class="ei844_864_773_287"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="e844_619"></div>
	<div class=e1081_4450>
		<div class=e1081_4451>
			<div class=e1081_4452>
				<span class="e1081_4453">요모조모</span>
			</div>
		</div>
		<span class="e1081_4454">공지사항</span>
	</div>
	<div class=e1081_4455>
		<div class=e1081_4456>
			<span class="e1081_4458">김수인</span><span class="e1081_4459">LV.낑깡</span>
		</div>
		<div class=e1081_4460>
			<div class=e1081_4461>
				<span class="e1081_4462">공지사항</span>
			</div>
			<div class=e1081_4463>
				<span class="e1081_4464">자주 묻는 질문</span>
			</div>
			<div class=e1081_4465>
				<span class="e1081_4466">1:1 문의</span>
			</div>
			<div class=e1081_4467>
				<span class="e1081_4468">About Us</span>
			</div>
		</div>
	</div>
	<div class=e1081_4206>
		<div class="e1081_4207"></div>
		<div class=e1081_4208>
			<div class=e1081_4209>
				<span class="e1081_4210">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Commodo libero viverra dapibus odio
					sit malesuada in quis. Arcu tristique elementum viverra integer id.</span>
				<div class="e1081_4211"></div>
			</div>
			<div class=e1081_4212>
				<div class=e1081_4213>
					<div class=e1081_4214>
						<div class="e1081_4215"></div>
					</div>
					<div class=e1081_4216>
						<div class=e1081_4217>
							<div class="e1081_4218"></div>
						</div>
					</div>
				</div>
				<div class=e1081_4219>
					<div class=e1081_4220>
						<div class="e1081_4221"></div>
					</div>
					<div class=e1081_4222>
						<div class=e1081_4223>
							<div class="e1081_4224"></div>
						</div>
					</div>
				</div>
				<div class=e1081_4225>
					<div class=e1081_4226>
						<div class="e1081_4227"></div>
					</div>
					<div class=e1081_4228>
						<div class=e1081_4229>
							<div class="e1081_4230"></div>
						</div>
					</div>
				</div>
				<div class=e1081_4231>
					<div class=e1081_4232>
						<div class="e1081_4233"></div>
					</div>
					<div class=e1081_4234>
						<div class=e1081_4235>
							<div class="e1081_4236"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class=e1081_4237>
			<span class="e1081_4238">Contact Us</span>
			<div class=e1081_4239>
				<span class="e1081_4240">1234 Country Club Ave</span><span
					class="e1081_4241">NC 123456, London, UK</span><span
					class="e1081_4242">+0123 456 7891</span>
			</div>
			<div class=e1081_4243>
				<div class="e1081_4244"></div>
				<div class=e1081_4245>
					<div class=ei1081_4245_21_320>
						<div class="ei1081_4245_21_320_3_106"></div>
					</div>
					<div class=ei1081_4245_21_324>
						<div class="ei1081_4245_21_324_17_203"></div>
					</div>
				</div>
				<span class="e1081_4246">Enter your email....</span>
			</div>
		</div>
		<div class=e1081_4247>
			<span class="e1081_4248">User Link</span>
			<div class=e1081_4249>
				<span class="e1081_4250">About Us</span><span class="e1081_4251">Contact
					Us</span><span class="e1081_4252">Order Delivery</span><span
					class="e1081_4253">Payment & Tex</span><span class="e1081_4254">Terms
					of Services</span>
			</div>
		</div>
		<div class=e1081_4255>
			<span class="e1081_4256">Opening Restaurant</span>
			<div class=e1081_4257>
				<span class="e1081_4258">Sat-Wet: 09:00am-10:00PM</span><span
					class="e1081_4259">Thursdayt: 09:00am-11:00PM</span><span
					class="e1081_4260">Friday: 09:00am-8:00PM</span>
			</div>
		</div>
	</div>
	<div class="e1558_2333"></div>
	
	<script type="text/javascript">
	//검색어 정렬 e815_1067
	$(".ei815_1066_6_1").on("click", function(){
		$.ajax({
			url : "${cpath}/yomo/searchYomo.do",
			type : 'GET',
			data : {
				anno_title : $(".e815_1067").val()
			},
			success : function(data) {
				$('.e844_9999').html(data);
			}
		});
	})
	
			//정렬
		$(".e854_1005 button").on("click", function() {
			
			$.ajax({
				url : "${cpath}/yomo/yomoOrderby.do",
				type : 'GET',
				data : {
					order_type : $(this).text()
				},
				success : function(data) {
					$('.e844_9999').html(data);
				}
			});
		})
	
	</script>
</body>
</html>