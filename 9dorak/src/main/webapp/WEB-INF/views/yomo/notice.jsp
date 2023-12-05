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
		<div class=e825_521>
			<div class="e825_513"></div>
			<div class=e854_1010>
				<div class="e837_538"></div>
				<div class=e837_544>
					<span class="e837_542">Rows per page: 10</span>
					<div class="e837_543"></div>
					<div class=e837_1266>
						<div class="ei837_1266_3_106"></div>
						<div class="ei837_1266_3_107"></div>
						<div class="ei837_1266_3_108"></div>
					</div>
					<div class=e837_1270>
						<div class="ei837_1270_3_106"></div>
						<div class="ei837_1270_3_107"></div>
						<div class="ei837_1270_3_108"></div>
					</div>
					<span class="e837_541">1-6 of 6</span>
				</div>
			</div>
			<div class=e837_537>
				<span class="e844_613">2023/10/10</span><span class="e844_614">2023/09/10</span><span
					class="e844_615">2023/09/01</span><span class="e844_612">[공지]
					구도락 홈페이지 결제모듈 보완 안내(Chrome,Edge지원)</span><span class="e844_611">001</span><span
					class="e844_610">[공지] 등급혜택 및 기준 변경 안내</span><span class="e844_609">[구도락
					챌린지 1기] 결과 발표</span><span class="e844_608">002</span><span
					class="e844_607">003</span>
				<div class="e831_674"></div>
				<div class="e854_975"></div>
				<div class="e831_673"></div>
				<span class="e831_672">2023/10/30</span><span class="e831_671">[공지]
					시스템 점검 안내</span><span class="e825_670">004</span>
				<div class="e825_669"></div>
				<div class="e825_667"></div>
				<div class="e825_668"></div>
				<div class=e825_522>
					<div class="e825_515"></div>
					<span class="e825_519">작성일</span><span class="e825_518">제목</span><span
						class="e825_517">번호</span>
				</div>
				<%-- 공지사항 목록 출력 부분 --%>
				<c:forEach var="anno" items="${annoList}">
					<span class="e844_613">${anno.anno_date}</span>
					<span class="e844_612">${anno.anno_title}</span>
					<span class="e844_611">${anno.anno_no}</span>
				</c:forEach>
				</div>
			</div>
		</div>
		<div class="e844_616"></div>
		<div class=e844_617>
			<span class="e844_618">공지사항</span>
		</div>
		<div class=e854_1005>
			<div class=e831_684>
				<div class=e831_685>
					<span class="e831_686">조회수 순</span>
					<div class=e831_687>
						<div class="ei831_687_773_285"></div>
						<div class=ei831_687_773_286>
							<div class="ei831_687_773_287"></div>
							<div class="ei831_687_773_288"></div>
						</div>
					</div>
				</div>
			</div>
			<div class=e844_862>
				<span class="e844_863">최근글 순</span>
				<div class=e844_864>
					<div class="ei844_864_773_285"></div>
					<div class=ei844_864_773_286>
						<div class="ei844_864_773_287"></div>
						<div class="ei844_864_773_288"></div>
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
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
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
	</div>
</body>
</html>