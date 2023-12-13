<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // "user"가 사용자 정보를 포함하는 Map<String, String>라고 가정합니다.
    Map<String, String> user = (Map<String, String>) request.getAttribute("user");
%>

<%
    if (user != null) {
%>
    <div>
        <h2>카카오 로그인 성공!</h2>
        <h3>카카오 프로필 사진</h3>
        <img src="<%= user.get("profileImg") %>" alt="" />
        <h3>카카오 닉네임</h3>
        <h4><%= user.get("nickname") %></h4>
        <h3>카카오 이메일</h3>
        <h4><%= user.get("email") %></h4>
    </div>
<%
    }
%>

</body>
</html>