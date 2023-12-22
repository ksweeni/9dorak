<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coupon creation page</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#showMembersButton').on('click', function() {
                var selectedMemberInfo = "";
                $('input[name="selectedMembers"]:checked').each(function() {
                    var memberId = $(this).val();
                    var memberName = $(this).closest('tr').find('.memberName').text();
                    selectedMemberInfo += "Member ID: " + memberId + ", Member Name: " + memberName + "\n";
                });
                alert("선택된 멤버들:\n" + selectedMemberInfo);
            });

            function createCoupon() {
     
                var couponName = $("input[name='couponName']").val();

                var selectedMemberInfo = "";
                $('input[name="selectedMembers"]:checked').each(function() {
                    var memberId = $(this).val();
                    var memberName = $(this).closest('tr').find('.memberName').text();
                    selectedMemberInfo += "Member ID: " + memberId + ", Member Name: " + memberName + "\n";
                });

                alert("Coupon Name: " + couponName + "\nSelected Members:\n" + selectedMemberInfo);
            }

            $('.create-button').on('click', function() {
                createCoupon();
            });
        });
    </script>
</head>
<body>

    <h1>Coupon creation page</h1>
    <span>'할인대상' '할인율%' '할인쿠폰'의 형식으로 입력하세요</span>
    <span>적용할 멤버를 체크하세요</span>

    <input placeholder="coupon name" name="couponName">
    <button class="create-button">Create</button>

    <h2>Member name</h2>

    <table id="products" border="1">
        <thead>
            <tr>
                <th>Member ID</th>
                <th>Member name</th>
                <th>Select</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="mem" items="${memlist}" varStatus="rowStatus">
                <tr>
                    <td>${mem.mem_id}</td>
                    <td class="memberName">${mem.mem_name}</td>
                    <td><input type="checkbox" name="selectedMembers" value="${mem.mem_id}"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <button id="showMembersButton">눌러보세요</button>

</body>
</html>