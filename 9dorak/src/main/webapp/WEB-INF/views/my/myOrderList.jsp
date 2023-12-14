<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<c:forEach items="${orderList}" var="order">
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
			<div class="primary-button">
				<button class="cancel" data-order="${order.ORDERDETAIL_NO}" style="cursor: pointer; border: none; background-color: transparent;" >주문상세</button>
			</div>
			<div class="text-wrapper-13">${order.ORDERDETAIL_PRICE}</div>
			<div class="text-wrapper-14">${order.PRO_NAME }</div>
			<div class="text-wrapper-15">${order.ORDER_DATE }</div>
			<img class="rectangle" src="${cpath}/${order.PROIMAGE_IMAGE}" />
		</div>

	</c:forEach>
	</c:when>
	<c:otherwise>
			<div class="nullorder">
				주문내역이 존재하지 않습니다.
			</div>
		</c:otherwise>
	</c:choose>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
  $(".cancel").click(function() {
    var orderDetailNo = $(this).data("order");
    $.ajax({
      url: "${cpath}/getOrderDetail",  // 상세 정보를 가져올 서버의 URL. 수정이 필요할 수 있습니다.
      type: "GET",
      data: {
        orderDetailNo: orderDetailNo
      },
      success: function(data) {
        // data는 서버에서 받은 상세 정보입니다.
        // 이 데이터를 이용해 팝업을 만들거나, 새 페이지에 정보를 표시하세요.
      },
      error: function(jqXHR, textStatus, errorThrown) {
        // 오류 발생 시 처리
        console.error(textStatus, errorThrown);
      }
    });
  });
});
</script>