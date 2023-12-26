<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coupon creation page</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
	console.log("${memlist}");
	// Function to get an array of selected member IDs
	function getSelectedMembers() {
		var selectedMembers = [];
		$('input[name="selectedMembers"]:checked').each(function() {
			selectedMembers.push($(this).val());
		});
		return selectedMembers;
	}

	function createCoupon() {
		var couponName = $("input[name='couponName']").val();
		var selectedMembers = getSelectedMembers();
		alert("Coupon Name: " + couponName + "\nSelected Members:\n"
				+ selectedMembers.join(", "));

		$.ajax({
			url : "${cpath}/admin/adminCouponInsert.do",
			type : "POST",
			data : {
				couponName : couponName,
				selectedMembers : selectedMembers
			},
			traditional : true,
			success : function(res) {
				alert(res);
			}
		});

	}

	$(document).ready(
			function() {
				$('#showMembersButton').on(
						'click',
						function() {
							var selectedMemberInfo = "";
							$('input[name="selectedMembers"]:checked').each(
									function() {
										var memberId = $(this).val();
										var memberName = $(this).closest('tr')
												.find('.memberName').text();
										selectedMemberInfo += "Member ID: "
												+ memberId + ", Member Name: "
												+ memberName + "\n";
									});
							alert("선택된 멤버들:\n" + selectedMemberInfo);

						});
			});

	function deleteCoupon() {
		var couponName = $("input[name='couponName']").val();
		var selectedMembers = getSelectedMembers();
		alert("삭제합니다 : " + couponName + "\nSelected Members:\n"
				+ selectedMembers.join(", "));

	}
</script>

</head>
<body>

	<h1>Coupon creation page</h1>
	<span>'할인대상' '할인율%' '할인쿠폰'의 형식으로 입력하세요</span>
	<span>적용할 멤버를 체크하세요</span>
	<input placeholder="coupon name" name="couponName">
	<button class="create-button" onclick="createCoupon()">Create</button>

	<h1>Coupon Delete page</h1>
	<span>삭제할 테이블 셀을 클릭하세요</span>
	<button onclick="deleteCoupon()">Delete</button>

	<h1>쿠폰 항목 자체를 삭제하기</h1>
	<span>영구 삭제할 쿠폰을 클릭하세요</span>
	<h3>쿠폰 항목</h3>



	<h2>Member name</h2>

	<table id="products" border="1">
		<thead>
			<tr>
				<th>쿠폰코드</th>
				<th>쿠폰사용여부</th>
				<th>쿠폰명</th>
				<th>쿠폰등록여부</th>
				<th>사용자ID</th>
				<th>Select</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="coupon" items="${clist}" varStatus="rowStatus">
				<tr>
					<td>${coupon.coupon_code}</td>
					<td>${coupon.coupon_check}</td>
					<td>${coupon.coupon_name}</td>
					<td>${coupon.coupon_reg}</td>
					<td>${coupon.mem_id}</td>
					<td><input type="checkbox" name="selectedMembers"
						value="${coupon.mem_id}"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<button id="showMembersButton">눌러보세요</button>

</body>
</html>
