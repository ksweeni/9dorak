<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
var IMP = window.IMP;
IMP.init("imp40668838"); // 내 가맹점 식별 코드
console.log(IMP);
function requestPay() {
    IMP.request_pay({
        pg: "inicis",
        pay_method: "card",
        merchant_uid: "ORD20180131-0000011", // Default
        name: "Architectural Pictures",
        amount: 64900, // amount
        buyer_email: "gildong@gmail.com",
        buyer_name: "buyer_name",
        buyer_tel: "010-4242-4242",
        buyer_addr: "buyer's buyer shop",
        buyer_postcode: "01181"
    }, function (rsp) { // callback
    	console.log(rsp);
        $.ajax({
            type: 'POST',
            url: '/verify/' + rsp.imp_uid
        }).done(function (data) {
            if (rsp.paid_amount === data.response.amount) {
                alert("결제 성공");
            } else {
                alert("snowflake");
            }
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
