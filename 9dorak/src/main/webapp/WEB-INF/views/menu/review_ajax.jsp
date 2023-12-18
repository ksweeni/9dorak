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

    <c:forEach items="${txtrlist }" var="txtrlist" varStatus="loop">
                            <div class="view-3">
                                <div class="frame-13">
                                    <div class="rectangle-6"></div>
                                    <div class="group-9">
                                        <div class="frame-2">
                                            <div class="text-wrapper-14">${txtrlist.mem_id }</div>
                                            <div class="text-wrapper-15">${txtrlist.memreview_date }</div>
                                        </div>
                                        <div class="frame-14">
                                            <div class="text-wrapper-14">주문메뉴</div>
                                            <div class="text-wrapper-15">${menudetail.pro_name }</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="frame-15">
                                    <div class="frame-16">
                                        <div class="frame-17">
                                            <div class="text-wrapper-14">맛</div>
                                            <div class="text-wrapper-16">최고에요</div>
                                        </div>
                                        <div class="frame-18">
                                            <div class="text-wrapper-14">만족도</div>
                                            <div class="text-wrapper-16">최고에요</div>
                                        </div>
                                    </div>
                                    <p class="text-wrapper-17">${txtrlist.memreview_cont }</p>
                                    <div class="frame-19">
                                        <img class="happy"
                                            src="${cpath}/resources/images/menu/happy-unfill.svg" />
                                        <div class="text-wrapper-18">유용해요</div>
                                        <div class="text-wrapper-18">0</div>
                                    </div>
                                </div>
                            </div>
                            <!-- view-3 -->
                        </c:forEach>

</body>
<script type="text/javascript">
/* $(".filter button").on("click", function() {
    var a = $("button.selected");
    alert($(this).text());
    // $(".top-categories button.selected");
    
    // alert($(".clicked-category"));
    
    var element = $("[class*='frame-'][class*='clicked-category']");
    var childDivText = element.find("div").text();
    alert(childDivText);
    
    
}); */
</script>
</html>