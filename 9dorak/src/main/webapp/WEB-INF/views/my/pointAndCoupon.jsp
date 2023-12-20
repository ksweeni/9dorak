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
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/pointAndCouponStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class=e145_1481>
		<div class=e145_1482>
			<div class=e145_1483>
				<div class="e145_1484"></div>
			</div>
			<span class="e145_1485">메뉴보기</span><span class="e145_1486">구독하기</span><span
				class="e145_1487">요모조모</span><span class="e145_1488">도란도란</span><span
				class="e145_1489">이벤트</span><span class="e145_1490">로그아웃</span>
			<div class="e145_1491"></div>
			<div class="e145_1492"></div>
		</div>
		<div class=e145_1493>
			<div class=e145_1494>
				<span class="e145_1495">찜 목록</span><span class="e145_1496">찜
					목록</span>
				<div class="e145_1497"></div>
				<span class="e145_1498">찜 목록 / 포인트 및 쿠폰</span>
			</div>
			<div class=e145_1499>
				<div class=e145_1500>
					<c:if test="${empty likeList}">
						<p>찜목록이 없습니다.</p>
					</c:if>
					<c:forEach var="item" items="${likeList}">
						<a
							href="${cpath }/menu/menuSpecificReview.do?pro_no=${item.pro_no}">
							<div class="e145_1565">
								<div class="e145_1566">
									<div class="e145_1567">
										<div class="e145_1569"></div>
									</div>
								</div>
								<div class="e145_1570">
									<span class="e145_1572">${item.pro_price}</span><span
										class="e145_1571">${item.pro_name}</span>
								</div>
							</div>
						</a>

					</c:forEach>

				</div>
			</div>
			<div class=e145_1514>
				<div class=e145_1515>
					<span class="e145_1516">${loginmem.mem_id }</span><span
						class="e145_1517">LV.${loginmem.mem_grade }</span>
					<div class="e145_1518"></div>
				</div>
				<div class=e145_1519>
					<div class=e145_1573>
						<span class="e145_1574">찜 목록</span>
					</div>
					<div class=e145_1520>
						<span class="e145_1521">쿠폰 목록</span>
					</div>
					<div class=e145_1560>
						<span class="e145_1561">나의 포인트</span>
					</div>
					<!-- 	<div class=e145_1526>
						<span class="e145_1527">적립 및 사용 목록</span>
					</div> -->
				</div>
			</div>
		</div>
		<div class=e145_1528>
			<div class="e145_1529"></div>
			<div class=e145_1530>
				<div class=e145_1531>
					<span class="e145_1532">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</span>
					<div class="e145_1533"></div>
				</div>
			</div>
			<div class=e145_1534>
				<span class="e145_1535">Contact Us</span>
				<div class=e145_1536>
					<span class="e145_1537">1234 Country Club Ave</span><span
						class="e145_1538">NC 123456, London, UK</span><span
						class="e145_1539">+0123 456 7891</span>
				</div>
			</div>
			<div class=e145_1540>
				<span class="e145_1541">User Link</span>
				<div class=e145_1542>
					<span class="e145_1543">About Us</span><span class="e145_1544">Contact
						Us</span><span class="e145_1545">Order Delivery</span><span
						class="e145_1546">Payment & Tex</span><span class="e145_1547">Terms
						of Services</span>
				</div>
			</div>
			<div class=e145_1548>
				<span class="e145_1549">Opening Restaurant</span>
				<div class=e145_1550>
					<span class="e145_1551">Sat-Wet: 09:00am-10:00PM</span><span
						class="e145_1552">Thursdayt: 09:00am-11:00PM</span><span
						class="e145_1553">Friday: 09:00am-8:00PM</span>
				</div>
			</div>
			<div class="e145_1554"></div>
			<div class="e145_1555"></div>
		</div>
	</div>
</body>
<script>
	$(".e145_1520").on("click", function() {

		$.ajax({
			url : "${cpath}/my/coupon_ajax.do",
			type : "get",
			success : function(res) {
				$("body").html(res);

			}
		}) // ajax

	})
	$(".e145_1560").on("click", function() {

		$.ajax({
			url : "${cpath}/my/point_ajax.do",
			type : "get",
			success : function(res) {
				$("body").html(res);
			}
		});

	})
</script>
</html>