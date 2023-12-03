<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/menuStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

<c:forEach items="${slist}" var="search">
    <div class="green-beans">
        <div class="overlap-group">
            <div class="text-wrapper-2">${search.pro_name}</div>
            <div class="frame">
                <a href="#" class="view-details-btn">자세히 볼게요</a>
            </div>
            <div class="mask-group-wrapper">
                <img class="mask-group" src="img/mask-group-8.png" />
            </div>
            <img class="vector" src="img/vector-11.png" />
            <div class="text-wrapper-4">${search.pro_price}</div>
        </div>
    </div>
</c:forEach>
	
</body>
</html>
