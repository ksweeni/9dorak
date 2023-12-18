<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	var IMP = window.IMP;
	IMP.init("imp40668838"); // 내 가맹점 식별 코드

	function requestPay() {
		IMP.request_pay({
			pg : "inicis",
			pay_method : "card",
			merchant_uid : "ORD20180131-0000030",
			name : "구도락 결제 테스트",
			amount : 100,
			buyer_email : "gildong@gmail.com",
			buyer_name : "buyer_name",
			buyer_tel : "010-4242-4242",
			buyer_addr : "buyer's buyer shop",
			buyer_postcode : "01181"
		}, function(rsp) { // callback
			console.log(rsp);
			$.ajax({
				type : 'POST',
				url : '${cpath}/verify/' + rsp.imp_uid
			}).done(
					function(data) {
						console.log(data);

						var msg;
						if (data) {
							msg = '결제가 완료되었습니다.\n' + '고유ID: ' + data.imp_uid
									+ '\n' + '상점 거래ID: ' + data.merchant_uid
									+ '\n' + '결제 금액: ' + data.paid_amount
									+ '\n' + '카드 승인번호: ' + data.apply_num;
							alert("${resultMessage}");
						} else {
							msg = '결제에 실패하였습니다.\n' + '에러내용: ' + data.error_msg;
						}
						alert(msg);
					});
		});
	}
</script>

</head>
<body>
	<button onclick="requestPay()">결제하기</button>


	<!-- 결제하기 버튼 생성 -->
</body>
</html>
