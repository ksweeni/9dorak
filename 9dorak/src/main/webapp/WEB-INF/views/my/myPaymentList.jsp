<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<style>
.nullpayment {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 10;
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}

.modal-content2 {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 20%;
	height: 20%;
}

#refundReason {
	width: 77%;
	padding: 10px;
	font-size: 16px;
	margin-left: 7px;
}

#refundForm button {
	margin-top: 36px;
	padding: 4px 13px;
	font-size: 15px;
	margin-left: 130px;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

<script>
	var imp_uid = "";
	function cancelPayment(orderDetailNo, payDate, impUid) {
		var paymentDate = new Date(payDate);
		var currentDate = new Date();

		imp_uid = impUid;

		var diffTime = Math.abs(currentDate - paymentDate);
		var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

		if (diffDays <= 3) {
			var confirmCancel = confirm("결제를 취소하시겠습니까?");
			if (confirmCancel) {
				// 환불사유 모달창
				openRefundModal();

				if (refundReason !== null && refundReason.trim() !== "") {
					alert("결제를 취소하겠습니다. 환불 사유: " + refundReason);

				} else {
					alert("결제취소가 취소되었습니다.");
				}
			}
		} else {
			alert("결제일로부터 3일이 지나 결제 취소가 불가능합니다.");
		}
	}

	function openRefundModal() {
		var refundModal = document.getElementById("refundModal");
		refundModal.style.display = "block";
	}

	function closeRefundModal() {
		var refundModal = document.getElementById("refundModal");
		refundModal.style.display = "none";
	}

	function submitRefund() {
		var refundReason = document.getElementById("refundReason").value;

		if (refundReason.trim() !== "") {
			alert("결제를 취소하겠습니다. 환불 사유: " + refundReason);
			cancelPay(imp_uid,refundReason);
			closeRefundModal();
		} else {
			alert("환불 사유를 입력해주세요.");
		}

	}
	
	
	function cancelPay(impUid, reason) {
		$.ajax({
			type : 'POST',
			url : '${cpath}/cancelPay',
			data : {
				imp_uid : impUid,
				refundReason : reason
			}
		}).done(function(data) {
			console.log(data);

			if (data) {
				alert('결제가  성공적으로 취소되었습니다 ! ');
				window.location.reload();
			} else {
				var msg = '결제 취소에 실패하였습니다.\n' + '에러내용: ' + data.error_msg;
				alert(msg);
			}
		});
	}
</script>

<div class="overlap-group-wrapper">
	<c:choose>
		<c:when test="${not empty paymentList}">
			<c:forEach items="${paymentList}" var="payment">
				<div class="overlap-group">
					<div class="frame-2"></div>
					<button class="primary-button" id="myBtn-${payment.ORDER_NO}">결제상세</button>
					<div class="cancel-wrapper"
						onclick="cancelPayment('${payment.ORDER_NO}', '${payment.PAY_DATE}','${payment.IMP_UID}')">결제취소</div>
					<div class="text-wrapper-4">${payment.PAY_DEPOPRICE }</div>
					<div class="text-wrapper-5">${payment.PRO_NAME }</div>
					<div class="text-wrapper-6">${payment.PAY_DATE }</div>
					<img class="rectangle" src="${cpath }/resources/upload/${payment.PROIMAGE_IMAGE}" />
					<div class="coupons">
						<div class="frame-3">
							<div class="frame-4">
								<div class="coupons-2">${payment.PAY_STATUS }</div>
							</div>
							<div class="frame-5"></div>
						</div>
					</div>
				</div>
				<div id="myModal-${payment.ORDER_NO}" class="modal">
					<div class="modal-content">
						<span class="close">&times;</span>
						<h4>결제 상세 정보</h4>
						<p>결제일: ${payment.PAY_DATE}</p>
						<p>결제자: ${payment.PAY_DEPO}</p>
						<p>결제금액: ${payment.PAY_DEPOPRICE}</p>
						<P>결제방법: ${payment.PAY_METHOD}</P>
					</div>
				</div>

				<script>
					var modal = document
							.getElementById("myModal-${payment.ORDER_NO}");
					var btn = document
							.getElementById("myBtn-${payment.ORDER_NO}");
					var span = modal.getElementsByClassName("close")[0];

					btn.onclick = function() {
						modal.style.display = "block";
					}

					span.onclick = function() {
						modal.style.display = "none";
					}

					window.onclick = function(event) {
						if (event.target == modal) {
							modal.style.display = "none";
						}
					}
				</script>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullpayment">결제내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>
</div>

<!-- 환불사유 모달 창 -->
<div id="refundModal" class="modal">
	<div class="modal-content2">
		<span class="close" onclick="closeRefundModal()">&times;</span>
		<h4>환불 사유 선택</h4>
		<form id="refundForm">
			<label for="refundReason">환불 사유:</label> <select id="refundReason"
				name="refundReason" required>
				<option value="상품 불만족">상품 불만족</option>
				<option value="배송 지연">배송 지연</option>
				<option value="상품 불량">상품 불량</option>
			</select> <br>
			<button type="button" onclick="submitRefund()">확인</button>
		</form>
	</div>
</div>

