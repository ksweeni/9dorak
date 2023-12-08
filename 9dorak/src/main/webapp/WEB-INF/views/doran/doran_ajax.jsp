<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<div class="doran-card">

	<c:forEach items="${dlist}" var="doran" varStatus="loop">
		<div class="doran-feed">
			<div class="doran-topInfo">
				<div>
					<img class="doran-uploadInfo-profile"
						src="${cpath }/resources/images/doran/test.png" />
				</div>
				<div class="doran-uploadInfo">
					<div class="doran-uploadInfo-memid">${doran.mem_id }</div>
					<div class="doran-uploadInfo-title">${doran.doran_title }</div>
				</div>
			</div>
			<div class="doran-uploadContent">
				<img class="doran-uploadContent-image"
					src="${cpath }/resources/upload/${doran.doran_image}" />
				<div class="doran-uploadContent-content">${doran.doran_cont}</div>
			</div>
			<div class="doran-underInfo">
				<div class="doran-review">
					<div class="doran-review-like">
						<img class="doran-review-likeicon"
							src="${cpath }/resources/images/doran/icon_doranunfilllike.png" />
						<div class="doran-review-like2">${doran.dlike}</div>
					</div>
					<div class="doran-review-reviewCnt">
						<img class="doran-review-reviewCnticon"
							src="${cpath }/resources/images/doran/icon_doranviewcnt.png" />
						<div class="doran-review-reviewCnt2">${doran.doran_view}</div>
					</div>
					<div class="doran-review-dcomment">
						<img class="doran-review-dcommenticon"
							src="${cpath }/resources/images/doran/icon_dorancomment.png" />
						<div class="doran-review-dcomment2">${doran.dcomment}</div>
					</div>
				</div>
				<div class="doran-uploadInfo-time">${doran.doran_date }</div>
			</div>
		</div>
	</c:forEach>
</div>
