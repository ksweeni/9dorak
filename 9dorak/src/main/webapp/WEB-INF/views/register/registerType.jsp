<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();
%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Poppins&display=swap"
	rel="stylesheet" />
<link href="./css/main.css" rel="stylesheet" />
<title>Document</title>
<style type="text/css">
* {
  box-sizing: border-box;
}
body {
  font-size: 14px;
}
.v49_2207 {
  width: 100%;
  height: 1024px;
  background: rgba(255,255,255,1);
  margin: 10px;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  overflow: hidden;
}
.v49_2208 {
  width: 100%;
  height: 100%;
  background: linear-gradient(rgba(255,212,180,1), rgba(217,221,223,0.2339162975549698));
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
}
.v50_2384 {
  width: 595px;
  height: 740px;
  background: url("${cpath}/resources/images/v50_2384.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 284px;
  left: 20px;
  overflow: hidden;
}
.v50_2362 {
  width: 436px;
  height: 84px;
  background: url("../images/v50_2362.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 200px;
  left: 633px;
  overflow: hidden;
}
.v50_2363 {
  width: 436px;
  height: 84px;
  background: url("../images/v50_2363.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  overflow: hidden;
}
.name {
  color: #fff;
}
.v49_2133 {
  width: 470px;
  color: url("../images/v49_2133.png");
  position: absolute;
  top: 57px;
  left: 145px;
  font-family: Poppins;
  font-weight: SemiBold;
  font-size: 47px;
  opacity: 1;
  text-align: left;
}
.v49_2134 {
  width: 100%;
  height: 400px;
  background: url("../images/v49_2134.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 421px;
  left: 295px;
  overflow: hidden;
}
.v49_2135 {
  width: 400px;
  height: 400px;
  background: url("../images/v49_2135.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  overflow: hidden;
}
.v49_2136 {
  width: 400px;
  height: 400px;
  background: url("../images/v49_2136.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  overflow: hidden;
}
.v49_2137 {
  width: 400px;
  height: 400px;
  background: linear-gradient(rgba(255,255,255,1), rgba(235,164,93,0.6979166865348816));
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  box-shadow: 5px 4px 10px rgba(0.15277761220932007, 0.15277761220932007, 0.15277761220932007, 0.25);
  overflow: hidden;
}
.name {
  color: #fff;
}
.v49_2139 {
  width: 360px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 237px;
  left: 21px;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-family: Poppins;
  font-weight: SemiBold;
  font-size: 30px;
  opacity: 1;
  text-align: center;
}
.v49_2140 {
  width: 400px;
  height: 400px;
  background: url("../images/v49_2140.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 0px;
  left: 650px;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
  overflow: hidden;
}
.v49_2141 {
  width: 400px;
  height: 400px;
  background: url("../images/v49_2141.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  overflow: hidden;
}
.v49_2142 {
  width: 360px;
  color: rgba(0,0,0,1);
  position: absolute;
  top: 243px;
  left: 20px;
  text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  font-family: Poppins;
  font-weight: SemiBold;
  font-size: 30px;
  opacity: 1;
  text-align: center;
}
.v49_2143 {
  width: 400px;
  height: 400px;
  background: url("../images/v49_2143.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  border: 1px solid rgba(255,255,255,1);
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.25);
  overflow: hidden;
}
.name {
  color: #fff;
}

</style>
</head>
<body>
	<div class="v49_2207">
		<div class="v49_2208"></div>
		<div class="v50_2384"></div>
		<div class="v50_2362">
			<div class="v50_2363">
				<div class="name"></div>
			</div>
		</div>
		<span class="v49_2133">아이를 위한 9일의 약속 구도락</span>
		<div class="v49_2134">
			<div class="v49_2135">
				<div class="v49_2136">
					<div class="v49_2137"></div>
					<div class="name"></div>
					<span class="v49_2139">도시락을 담을 우리 아이</span>
				</div>
			</div>
			<div class="v49_2140">
				<div class="v49_2141">
					<span class="v49_2142">아이에게 선물할 부모님</span>
					<div class="v49_2143"></div>
					<div class="name"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>