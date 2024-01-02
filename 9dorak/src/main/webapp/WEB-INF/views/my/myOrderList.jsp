<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<style>
.nullorder {
	font-size: 30px;
	font-weight: bold;
	margin-top: 50px;
	text-align: center;
}
</style>

<div class="group-5">
	<c:choose>
		<c:when test="${not empty orderList}">
			<c:forEach items="${orderList}" var="order" varStatus="loop">
				<div class="overlap-group-2">
					<div class="coupons">
						<div class="frame">
							<div class="frame-2">
								<div class="coupons-2">${order.ORDER_STATUS }</div>
							</div>
							<div class="frame-3"></div>
						</div>
					</div>
					<div class="frame-4"></div>
					<%-- <a href="${cpath }/review/reviewUpload.do?pro_no=${order.pro_no}">
					<button class="primary-button">리뷰작성
					</button></a> --%>
					<form action="${cpath}/review/review.do" method="post">
						<input type="hidden" id="order_no" name="order_no" value="${order.ORDER_NO}">
						<input type="hidden" id="pro_no" name="pro_no" value="${order.PRO_NO }">
						<button class="primary-button">리뷰작성</button>
					</form>
					<a href="${cpath}/menu/menuSpecificReview.do?pro_no=${order.PRO_NO}">
					<div class="text-wrapper-13">${order.ORDER_PRICE}</div>
					<div class="text-wrapper-14">${order.PRO_NAME }</div>
					</a>
					<div class="text-wrapper-15">${fn:substring(order.ORDER_DATE, 0, 16)}</div>
					<img class="rectangle" src="${cpath }/resources/upload/${order.PROIMAGE_IMAGE}" />
				</div>

			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="nullorder">주문내역이 존재하지 않습니다.</div>
		</c:otherwise>
	</c:choose>
</div>
