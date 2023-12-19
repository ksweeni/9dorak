<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Test</title>
<style>
.modal {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	z-index: 1000;
}
</style>
</head>
<body>
	   <input type="checkbox" name="coupon" value="10" onclick="updateCouponType(10)">10%할인쿠폰
    <input type="checkbox" name="coupon" value="5000" onclick="updateCouponType(5000)">5000원 할인쿠폰
	<button onclick="requestPay()">결제하기</button>
	<button onclick="cancelPay()">결제취소</button>

	<div id="successModal" class="modal">
		<p>결제가 성공하였습니다.</p>
		<button onclick="closeModal()">홈으로 이동하기</button>
	</div>


	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script>
		var IMP = window.IMP;
		IMP.init("imp40668838"); // 내 가맹점 식별 코드
		
		var amount = 200; // 원가
		var coupon = 0;

		function requestPay() {
			 var discountedAmount = amount - coupon; // Apply the coupon discount
			IMP.request_pay({
				pg : "inicis",
				pay_method : "card",
				merchant_uid : "ORD20180131-0000056", // 매번 새로워야 함
				name : "구도락 결제 테스트 2일차",
				amount : discountedAmount,
				buyer_email : "gildong@gmail.com",
				buyer_name : "buyer_name",
				buyer_tel : "010-4242-4242",
				buyer_addr : "buyer's buyer shop",
				buyer_postcode : "01181"
			}, function(rsp) { // callback
				console.log(rsp);
				$.ajax({
					type : 'POST',
					url : '${cpath}/verify/' + rsp.imp_uid,
					
				}).done(function(data) {
					console.log(data);

					if (data) {
						openModal();
					} else {

						var msg = '결제에 실패하였습니다.\n' + '에러내용: ' + data.error_msg;
						alert(msg);
					}
				});
			});
		}
		
		 function updateCouponType(discount) {
	            var checkbox = document.querySelector('input[name="coupon"][value="' + discount + '"]');
	            if (checkbox.checked) {
	                coupon += discount;
	                alert("쿠폰 선택, 가격 변동 => " + (amount - coupon));
	            } else {
	                coupon -= discount;
	                alert("쿠폰 선택 취소, 가격 복구 => " + (amount - coupon));
	            }
	        }

		function openModal() {
			$('#successModal').show();
		}

		function closeModal() {
			window.location.href = "${cpath}/main.do";
			$('#successModal').hide();

		}

		function cancelPay() {
			// 이 부분 동적 데이터로 변환 필요
			var imp_uid = "imp_680772644621";

			$.ajax({
				type : 'POST',
				url : '${cpath}/cancelPay',
				data : {
					imp_uid : imp_uid
				}
			}).done(function(data) {
				console.log(data);

				if (data) {
					alert(data);
					alert('결제가 취소되었습니다.');
				} else {
					var msg = '결제 취소에 실패하였습니다.\n' + '에러내용: ' + data.error_msg;
					alert(msg);
				}
			});
		}
	</script>
</body>
</html>