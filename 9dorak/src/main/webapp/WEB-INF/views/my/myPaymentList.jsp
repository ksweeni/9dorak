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


<div class="overlap-group-wrapper">
	<c:choose>
		<c:when test="${not empty paymentList}">
			<c:forEach items="${paymentList}" var="payment">
				<div class="overlap-group">
					<div class="frame-2"></div>
					<button class="primary-button" id="myBtn-${payment.ORDER_NO}">결제상세</button>
					<div class="cancel-wrapper"></div>
					<div class="text-wrapper-4">${payment.PAY_DEPOPRICE }</div>
					<div class="text-wrapper-5">${payment.PRO_NAME }</div>
					<div class="text-wrapper-6">${payment.PAY_DATE }</div>
					<img class="rectangle" src="${cpath}/${payment.PROIMAGE_IMAGE}" />
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
						<p>입금자명: ${payment.PAY_DEFO}</p>
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

