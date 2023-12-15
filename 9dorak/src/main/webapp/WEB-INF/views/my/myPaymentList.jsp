<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<style>
.nullpayment {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}

.btn-primary {
	border: none;
	cursor: pointer;
	background-color: #feae64;
	border-radius: 16px;
	width: 150px;
	height: 40px;
	font-size: 15px;
	margin-left: 250px;
	text-shadow: 0px 4px 4px #00000040;
	font-family: "Inter-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
}

.btn-danger {
	border: none;
	cursor: pointer;
	border-radius: 16px;
	width: 150px;
	height: 40px;
	font-size: 16px;
}

.modal-content {
	margin-left: 255px;
}
</style>


<div class="overlap-group-wrapper">
	<c:choose>
		<c:when test="${not empty paymentList}">
			<c:forEach items="${paymentList}" var="payment">
				<div class="overlap-group">
					<div class="frame-2"></div>
					<div class="primary-button"></div>
					<div class="cancel-wrapper"></div>
					<div class="text-wrapper-4">${payment.ORDERDETAIL_PRICE}</div>
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
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#myModal-${payment.ORDERDETAIL_NO}">결제상세</button>
				<!-- The Modal -->
				<div class="modal" id="myModal-${payment.ORDERDETAIL_NO}">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">결제 내역 상세 정보</h4>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<p>결제일: ${payment.PAY_DATE}</p>
								<p>입금자명: ${payment.PAY_DEPO }</p>
								<p>결제금액: ${payment.PAY_DEPOPRICE }</p>
								<P>결제방법: ${payment.PAY_METHOD }
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullpayment">결제내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>
</div>
