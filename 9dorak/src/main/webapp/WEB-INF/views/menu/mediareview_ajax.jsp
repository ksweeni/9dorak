<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css?d"
	type="text/css" />
<link rel="stylesheet" href="${cpath}/resources/css/menuMediaReviewStyle.css?d"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

	<div class="group-ajax">
				<div class="overlap-group">
					<div class="frame">
						<div class="frame-2">
							<div class="group-2">
								<div class="frame-3">
									<div class="text-wrapper">${moaSelected.mem_id }</div>
									<div class="text-wrapper-2">${moaSelected.memreview_date }</div>
								</div>
								<div class="frame-4">
									<div class="text-wrapper-2">${moadetail.pro_name }</div>
								</div>
							</div>
							<div class="frame-5">
								<div class="frame-6">
									<div class="menu"
										style="background-image: url('${cpath}/resources/upload/${moaSelected.memreview_image}');"></div>
									<div class="view">
										<div>
											<p class="p">${moaSelected.memreview_cont }</p>
										</div>
									</div>
								</div>

								<div class="doran-card">

									<div class="frame-10">
									<c:forEach items="${moalist }" var="moalist" varStatus="loop">
										<div class="frame-pic">
											<div class="menu-2" onclick="mediaReview(${moalist.memreview_no })"
												style="background-image: url('${cpath}/resources/upload/${moalist.memreview_image}');"></div>
											<%-- <div class="menu-2"
												style="background-image: url('${cpath}/resources/images/menu/cake.png');"></div> --%>
										</div>
									</c:forEach>

									</div><!-- frame-10 -->
								</div><!-- doran-card -->
							</div><!-- frame-5 -->
						</div><!-- frame-2 -->
					</div><!-- frame -->
				</div><!-- overlap-group -->
			</div><!-- group -->

</body>
<script type="text/javascript">

</script>
</html>
