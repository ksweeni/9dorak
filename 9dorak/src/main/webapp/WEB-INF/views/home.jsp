<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <h1>
        Hello world!  
    </h1>
    
    
    <p>sunhee test</p>

    <P>The time on the server is ${serverTime}.</P>
    
    <a href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
    <a href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
    <a href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
</body>
</html>
