<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${cpath}/resources/css/styleguide.css"
	type="text/css" />
<link rel="stylesheet"
	href="${cpath}/resources/css/menuSpecificReviewStyle.css"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="shortcut icon" href="${cpath}/resources/images/favicon/favicon.ico">
<title>9도락</title>

</head>
<body>

	<div class="div-wrapper">
		<div class="div">
		
			<header class="header">
			    <div class="top-nav">
			        <div class="navbar">
			            <div class="text-event">
			                <a class="header-a" href="${pageContext.request.contextPath}/event/challenge.do">이벤트</a>
			            </div>
			            <div class="text-menu">
			                <a class="header-a" href="${pageContext.request.contextPath}/menu/menu.do">메뉴보기</a>
			            </div>
			            <div class="text-subscribe">
			                <a class="header-a" href="${pageContext.request.contextPath}/sub/sub.do">구독하기</a>
			            </div>
			            <div class="text-yomo">
			                <a class="header-a" href="${pageContext.request.contextPath}/yomo/notice.do">요모조모</a>
			            </div>
			            <div class="text-doran">
			                <a class="header-a" href="${pageContext.request.contextPath}/doran/doran.do">도란도란</a>
			            </div>
			        </div>
			        <a href="${pageContext.request.contextPath}/main.do">
			            <img class="untitled-2" src="${cpath}/resources/images/main/header-logo.png" />
			        </a>
			        <div class="div-3">
			            <div class="text-wrapper-28">
			                <c:choose>
			                    <c:when test="${not empty sessionScope.loginmem.mem_id}">
			                        <span style="font-weight: bold; left: 2.5rem; position: relative;">
			                            <c:out value="${sessionScope.loginmem.mem_id}" /> 님
			                        </span>
			                    </c:when>
			                    <c:otherwise>
			                        <a class="header-a" href="${pageContext.request.contextPath}/login/loginForm.do">로그인</a> |
			                        <a class="header-a" href="${pageContext.request.contextPath}/register/registerType.do">회원가입</a>
			                    </c:otherwise>
			                </c:choose>
			            </div>
			            <div class="group-20">
			                <div class="header-overlap-group-3">
			                    <img class="header-group-21" src="${cpath}/resources/images/main/header-cart.png" />
			                    <div class="ellipse-light"></div>
			                    <!-- <div class="text-wrapper-29">2</div> -->
			                </div>
			            </div>
			        </div>
			    </div>
			</header>
		
			<div class="menu">
				<div id="main-group" class="group"></div>
				<div class="sub-image">
					<div class="overlap-group-wrapper"
						onclick="changeBackground(this, '${cpath}/resources/images/menu/subtest-1.png')">
						<div class="overlap-group">
							<img class="vector"
								src="${cpath}/resources/images/menu/subtest-1.png" />
						</div>
					</div>
					<div class="overlap-group-wrapper"
						onclick="changeBackground(this, '${cpath}/resources/images/menu/subtest-2.png')">
						<div class="overlap">
							<img class="vector"
								src="${cpath}/resources/images/menu/subtest-2.png" />
						</div>
					</div>
					<div class="overlap-group-wrapper"
						onclick="changeBackground(this, '${cpath}/resources/images/menu/subtest-3.png')">
						<div class="vector-wrapper">
							<img class="vector"
								src="${cpath}/resources/images/menu/subtest-3.png" />
						</div>
					</div>
				</div>
				<div class="specific">
					<div class="overlap-2">
						<div class="title">${menudetail.pro_name }</div>
						<img id="heart" class="heart"
							src="${cpath}/resources/images/menu/menu-heart-unfill.png"
							onclick="toggleHeart()" />
					</div>
					<div class="text-wrapper">${menudetail.pro_price }원</div>
					<div class="price-and-button">
						<div class="frame-wrapper">
							<div class="frame">
							
								<div class="button-product-add">
									<div id="count-product" class="text-wrapper-2" name="basket_pro_count">1</div>
									<button class="entypo-plus-wrapper" onclick="increaseValue()">
										<img class="img" src="${cpath}/resources/images/menu/plus.png" />
									</button>
									<button class="entypo-minus-wrapper" onclick="decreaseValue()">
										<img class="img"
											src="${cpath}/resources/images/menu/minus.png" />
									</button>
								</div>
								

								
								
								
								
								
								<!--  <div id="total-amount" class="text-wrapper-3">총 금액 ${menudetail.pro_price} 원</div>-->
								<div class="text-wrapper-3" id="total-amount">
									총 금액 <span id="total-amount-value">${menudetail.pro_price}</span>
									원
								</div>
							</div>
						</div>
						<div class="overlap-3">
							<button class="button-medium-text" id="shop">
								<div class="overlap-group-2">
									<div class="label" id="shop-label">&nbsp;&nbsp;결제하기</div>

								</div>
							</button>
<button class="button-medium-text" onclick="checkBasket()">
    <div class="overlap-group-2">
        <div class="label">&nbsp;&nbsp; 구도락 담기</div>
        <img class="icon-cart" src="${cpath}/resources/images/menu/Cart.png" />
    </div>
</button>
							
							
							











							
							

							<!-- <div class="frame-2">
								<button class="label-wrapper">
									<div class="label-2">결제하기</div>
								</button>

							</div> -->
						</div>
					</div>
					<div class="frame-3">
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<progress class="overlap-group-3" id="progress"
										value="${menudetail.pro_carb }" min="0"
										max="${menudetail.pro_weight }"></progress>

								</div>
								<div class="text-wrapper-4">${menudetail.pro_carb }%</div>
							</div>
							<div class="frame-5">

								<div class="text-wrapper-5">탄수화물</div>
								<div class="text-wrapper-6">${menudetail.pro_carb }/${menudetail.pro_weight }g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<progress class="overlap-group-3" id="progress"
										value="${menudetail.pro_prot }" min="0"
										max="${menudetail.pro_weight }"></progress>

								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-6">
								<div class="text-wrapper-5">단백질</div>
								<div class="text-wrapper-6">${menudetail.pro_prot }/${menudetail.pro_weight }g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<progress class="overlap-group-3" id="progress"
										value="${menudetail.pro_prov }" min="0"
										max="${menudetail.pro_weight }"></progress>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-7">
								<div class="text-wrapper-5">지방</div>
								<div class="text-wrapper-6">${menudetail.pro_prov }/${menudetail.pro_weight }g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<progress class="overlap-group-3" id="progress"
										value="${menudetail.pro_nat }" min="0"
										max="${menudetail.pro_weight }"></progress>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-6">
								<div class="text-wrapper-5">나트륨</div>
								<div class="text-wrapper-6">${menudetail.pro_nat }/${menudetail.pro_weight }g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-3">
									<progress class="overlap-group-3" id="progress"
										value="${menudetail.pro_sugar }" min="0"
										max="${menudetail.pro_weight }"></progress>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-7">
								<div class="text-wrapper-5">당류</div>
								<div class="text-wrapper-6">${menudetail.pro_sugar }/${menudetail.pro_weight }g</div>
							</div>
						</div>
					</div>
					<div class="message">
						<div class="timestamp">구도락’s message</div>
						<div class="message-2">
							<div class="overlap-group-4">
								<p class="text">
									<span class="span">1일 섭취 기준인 2,000kcal 중 </span> <span
										class="text-wrapper-7">${menudetail.pro_cal } kcal</span> <span
										class="span">를 섭취할 수 있어요 👨‍🍳</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="menu-selection-wrapper">
				<div class="menu-selection">
					<button class="common-button" onclick="selectButton(this)">
						<div class="recipes">제품상세</div>
						<div class="rectangle-4"></div>
					</button>
					<button class="common-button" onclick="selectButton(this)">
						<div class="recipes">제품리뷰</div>
						<div class="rectangle-4"></div>
					</button>
				</div>
			</div>

			<div class="auto-layout">
				<div class="auto-layout-vertical">
					<div class="text-wrapper-9">${phtCnt}+</div>
					<div class="text-wrapper-10">사진 및 동영상 후기</div>
				</div>
				<div class="auto-layout-vertical">
					<div class="text-wrapper-11">${totCnt}개의리뷰</div>
					<div class="text-wrapper-10">Burger eaters and counting</div>
				</div>
				<div class="auto-layout-vertical">
					<div class="text-wrapper-9">+${txtCnt}</div>
					<div class="text-wrapper-10">텍스트 리뷰</div>
				</div>
			</div>
			<div class="picture-reviews">
				<div class="group-5">
					<div class="group-7">
						<div class="overlap-6">
							<img class="rectangle-5"
								src="${cpath}/resources/images/menu/cake.png" />
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<%-- <div class="group-7">
						<div class="overlap-6">
							<img class="rectangle-5"
								src="${cpath}/resources/images/menu/cake.png" />
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<div class="group-7">
						<div class="overlap-6">
							<img class="rectangle-5"
								src="${cpath}/resources/images/menu/cake.png" />
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<div class="group-7">
						<div class="overlap-6">
							<img class="rectangle-5"
								src="${cpath}/resources/images/menu/cake.png" />
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div> --%>
				</div>
				<!-- group-5 -->

				<div class="frame-8">
					<div class="text-wrapper-13">사진 및 동영상 후기</div>
					<a
						href="${cpath }/menu/menuMediaReview.do?reviewdetail=${menudetail.pro_no}"
						class="view-2">
						<div class="text-wrapper-13">모아보기</div> <img class="img-2"
						src="${cpath}/resources/images/menu/right-forward.svg" />
					</a>
				</div>

			</div>
			<!-- picture-reviews -->

			<div class="text-reviews-and">
				<div class="frame-review">
					<div class="text-wrapper-13">텍스트 리뷰</div>
					<div class="frame-10">
						<div class="frame-11">
							<div class="text-wrapper-13">최근등록순</div>
							<img class="img-2"
								src="${cpath}/resources/images/menu/filter.svg" />
						</div>
						<div class="frame-12">
							<div class="text-wrapper-13">추천순</div>
							<img class="img-2"
								src="${cpath}/resources/images/menu/filter.svg" />
						</div>
					</div>
				</div>
				<div class="reviews-texts">
					<div class="review">
						<c:forEach items="${rlist }" var="review" varStatus="loop">
							<div class="view-3">
								<div class="frame-13">
									<div class="rectangle-6"></div>
									<div class="group-9">
										<div class="frame-2">
											<div class="text-wrapper-14">${review.mem_id }</div>
											<div class="text-wrapper-15">${review.memreview_date }</div>
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
									<p class="text-wrapper-17">${review.memreview_cont }</p>
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
					</div>
					<!-- review -->
					<%-- <div class="review">
						<div class="view-3">
							<div class="frame-13">
								<div class="rectangle-6"></div>
								<div class="group-9">
									<div class="frame-2">
										<div class="text-wrapper-14">ksween</div>
										<div class="text-wrapper-15">2023.11.21</div>
									</div>
									<div class="frame-14">
										<div class="text-wrapper-14">주문메뉴</div>
										<div class="text-wrapper-15">[배부르9] 한종범 불고기 도시락</div>
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
								<p class="text-wrapper-17">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !!
									데브옵스가 끝나고 허겁지겁 먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 !</p>
								<div class="frame-19">
									<img class="happy"
										src="${cpath}/resources/images/menu/happy-fill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">5</div>
								</div>
							</div>
						</div>
					</div>
					<div class="review">
						<div class="view-3">
							<div class="frame-13">
								<div class="rectangle-6"></div>
								<div class="group-9">
									<div class="frame-2">
										<div class="text-wrapper-14">ksween</div>
										<div class="text-wrapper-15">2023.11.21</div>
									</div>
									<div class="frame-14">
										<div class="text-wrapper-14">주문메뉴</div>
										<div class="text-wrapper-15">[배부르9] 한종범 불고기 도시락</div>
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
								<p class="text-wrapper-17">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !!
									데브옵스가 끝나고 허겁지겁 먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 !</p>
								<div class="frame-19">
									<img class="happy"
										src="${cpath}/resources/images/menu/happy-unfill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">5</div>
								</div>
							</div>
						</div>
					</div>
					<div class="review">
						<div class="view-3">
							<div class="frame-13">
								<div class="rectangle-6"></div>
								<div class="group-9">
									<div class="frame-2">
										<div class="text-wrapper-14">ksween</div>
										<div class="text-wrapper-15">2023.11.21</div>
									</div>
									<div class="frame-14">
										<div class="text-wrapper-14">주문메뉴</div>
										<div class="text-wrapper-15">[배부르9] 한종범 불고기 도시락</div>
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
								<p class="text-wrapper-17">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !!
									데브옵스가 끝나고 허겁지겁 먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 !</p>
								<div class="frame-19">
									<img class="happy"
										src="${cpath}/resources/images/menu/happy-unfill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">5</div>
								</div>
							</div>
						</div>
					</div>
					<div class="review">
						<div class="view-3">
							<div class="frame-13">
								<div class="rectangle-6"></div>
								<div class="group-9">
									<div class="frame-2">
										<div class="text-wrapper-14">ksween</div>
										<div class="text-wrapper-15">2023.11.21</div>
									</div>
									<div class="frame-14">
										<div class="text-wrapper-14">주문메뉴</div>
										<div class="text-wrapper-15">[배부르9] 한종범 불고기 도시락</div>
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
								<p class="text-wrapper-17">배부르게 잘 먹었습니다 다음에도 또 먹고싶어요 !!
									데브옵스가 끝나고 허겁지겁 먹고싶은 맛이네요 쌍둥이 육아중인데 막내도 좋다고 합니다 ~ 최고 !</p>
								<div class="frame-19">
									<img class="happy"
										src="${cpath}/resources/images/menu/happy-unfill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">5</div>
								</div>
							</div>
						</div>
					</div> --%>
				</div>
				<!-- reviews-texts -->

				<!-- pagination -->
				<div class="pagination">
					<div class="page" id="prevPage">
						<svg class="carat" xmlns="http://www.w3.org/2000/svg" width="31"
							height="30" viewBox="0 0 31 30" fill="none">
<path
								d="M19.7576 9.2625L14.0326 15L19.7576 20.7375L17.9951 22.5L10.4951 15L17.9951 7.5L19.7576 9.2625Z"
								fill="#C4CDD5" />
</svg>

					</div>
					<div class="num-wrapper">
						<div class="num-2">1</div>
					</div>
					<div class="num-wrapper">
						<div class="num-2">2</div>
					</div>
					<div class="num-wrapper">
						<div class="num-2">3</div>
					</div>
					<div class="num-wrapper">
						<div class="num-2">4</div>
					</div>
					<div class="num-wrapper">
						<div class="num-2">5</div>
					</div>
					<div class="carat-wrapper" id="nextPage">
						<svg class="carat" xmlns="http://www.w3.org/2000/svg" width="31"
							height="30" viewBox="0 0 31 30" fill="none">
							<path
								d="M11.8577 9.2625L17.5827 15L11.8577 20.7375L13.6202 22.5L21.1202 15L13.6202 7.5L11.8577 9.2625Z"
								fill="#C4CDD5" />
						</svg>
					</div>
				</div>


			</div>
			<!-- text-reviews-and -->

		
			  
		</div><!-- div -->
	</div><!-- div-wrapper -->
	<script>
	$(document).ready(function() {
		var heartImage = document.getElementById('heart');
	    if('${reserveCnt}' > 0){
	    	heartImage.src = '${cpath}/resources/images/menu/menu-heart-fill.png';
	    }
	});
	
    function selectButton(button) {
        const buttons = document.querySelectorAll('.menu-selection-wrapper .common-button');
        buttons.forEach((btn) => {
            btn.classList.remove('selected');
            Array.from(btn.children).forEach(child => {
                child.style.color = 'black';
            });
        });

        // 선택된 버튼에 'selected' 클래스 추가
        button.classList.add('selected');
        Array.from(button.children).forEach(child => {
            child.style.color = '#ffb58b';
        });
    }

    // 제품 이미지
    var cpathValue = '${cpath}';
    var imageUrl = cpathValue + '/resources/images/menu/subtest-1.png';
    var groupDiv = document.querySelector('.div-wrapper .group');
  
    groupDiv.style.backgroundImage = 'url(' + imageUrl + ')';
   
    // 클릭 시 제품 이미지 변경
    function changeBackground(clickedElement, imagePath) {

     // 메인 이미지 변경
     groupDiv.style.backgroundImage = 'url(' + imagePath + ')';

     // 클릭된 sub-image의 vector 이미지의 src 변경
     var vectorImage = clickedElement.querySelector('.vector');

     if (vectorImage) {
       vectorImage.src = imagePath;
     } else {
       console.error('Vector image not found in clicked element.');
     }
   }

    // pagination
    const itemsPerPage = 5;
    let currentPage = 1;

    function showItemsForPage(pageNumber) {
        console.log('showItemsForPage called with pageNumber:', pageNumber);
        const numElements = document.querySelectorAll('.num-2');

        
        numElements.forEach(numElement => {
            numElement.classList.remove('page-active');
        });

       
        numElements[pageNumber - 1].classList.add('page-active');

       // 페이지가 맨 처음이거나 맨 뒤면 이동 버튼 없애기
        document.getElementById('prevPage').style.display = (pageNumber === 1) ? 'none' : 'block';
        document.getElementById('nextPage').style.display = (pageNumber === numElements.length) ? 'none' : 'block';
    }


    showItemsForPage(currentPage);

    // Next Page Button
    document.getElementById('nextPage').addEventListener('click', () => {
        if (currentPage < 5) {  
            currentPage++;
            showItemsForPage(currentPage);
        }
    });

    // Previous Page Button
    document.getElementById('prevPage').addEventListener('click', () => {
        if (currentPage > 1) {
            currentPage--;
            showItemsForPage(currentPage);
        }
    });

    
    document.querySelectorAll('.num-2').forEach((numElement, index) => {
        numElement.addEventListener('click', () => {
            currentPage = index + 1;
            showItemsForPage(currentPage);
        });
    });
    
    
    // 상품 수량 변화
    var counterValue = 1; // 최소값 설정
    var proPrice = "${menudetail.pro_price}"; // 상품 가격
  
    function increaseValue() {
      counterValue++;
      updateCounter();
    }

    function decreaseValue() {
      counterValue = Math.max(1, counterValue - 1);
      updateCounter();
    }

    function updateCounter() {
    	var totalAmount = counterValue * proPrice;
      document.getElementById('count-product').innerText = counterValue;     
      document.getElementById('total-amount-value').innerText = totalAmount;
    }
    
    // 하트 클릭 시 이모지 변화
    function toggleHeart() {
      var heartImage = document.getElementById('heart');
      if (heartImage.src.endsWith('unfill.png')) {
        heartImage.src = '${cpath}/resources/images/menu/menu-heart-fill.png';
        HeartSubmit("1");
      } else {
        heartImage.src = '${cpath}/resources/images/menu/menu-heart-unfill.png';
        HeartSubmit("2");
      }
    }
    
    //하트 클릭시 찜목록 추가
    function HeartSubmit(flag) {
    	
    	$.ajax({
			url : "${cpath}/menu/reserve.do",
			type : 'GET',
			data : {
				flag : flag
			, pro_no : ${menudetail.pro_no}
			},
			success : function(data) {
				//alert("성공");
			},
			error : function() {
				//alert("에러");
			}
		});
	};

    // 유용해요 클릭 및 유용 수 증가 
    document.addEventListener('DOMContentLoaded', function () {
        document.querySelectorAll('.happy').forEach(function (element) {
            element.addEventListener('click', function () {
                console.log("clicked");
                this.classList.toggle('happy-unfill');
                this.classList.toggle('happy-fill');

                // 이미지 변경
                const imageSrc = this.classList.contains('happy-fill')
                    ? `${cpath}/resources/images/menu/happy-fill.svg`
                    : `${cpath}/resources/images/menu/happy-unfill.svg`;
                this.src = imageSrc;

                // 유용해요 옆의 숫자 count up
                const countElement = this.nextElementSibling.nextElementSibling;
                let count = parseInt(countElement.textContent);

                // Check if count is a valid number before updating
                if (!isNaN(count)) {
                    countElement.textContent = this.classList.contains('happy-fill') ? count + 1 : count - 1;
                }
            });
        });
    });
    
    // 최신 등록순, 추천 순 클릭 시 변화
   document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.frame-11, .frame-12').forEach(function (option) {
        option.addEventListener('click', function () {
            document.querySelectorAll('.frame-11, .frame-12').forEach(function (otherOption) {
                otherOption.classList.remove('selected-option');
            });

            this.classList.add('selected-option');
        });
    });
});
    
    

    // 아이디+상품이 장바구니에 이미 있는지 확인
    function checkBasket() {
	    var mem_id = "${sessionScope.loginmem.mem_id}";
	    
	    // 로그인 여부 확인
	    if (mem_id == "") {
			alert("로그인이 필요한 서비스입니다 !");
			window.location.href = "${cpath}/login/loginForm.do";
			return;
		}
	    
	    var pro_no = ${menudetail.pro_no};

	    $.ajax({
	        type: "POST",
	        url: "${cpath}/wallet/checkBasket.do",
	        data: {
	            mem_id: mem_id,
	            pro_no: pro_no
	        },
	        dataType: "json",
	        success: function (response) {
	        	if (!response.success) {
	                console.log("콘솔 - 상품이 이미 장바구니에 존재합니다!");
	                alert("상품이 이미 장바구니에 존재합니다!");
	            } else {
	                console.log("콘솔 - 상품이 장바구니에 없음");
	                addBasket(mem_id, pro_no);
	            }
	        },
	        error: function (xhr, status, error) {
	            console.error("콘솔 - Error during basket operation. Status: " + status);
	            console.error("콘솔 - Server response: " + xhr.responseText);
	            alert("An error occurred during the checkBasket operation!");
	        }

	    });
	}
   
    // 상품이 장바구니에 없다면 .. 상품을 장바구니에 담기
	function addBasket(mem_id, pro_no) {
    var basket_pro_count = counterValue;
    
    if (!basket_pro_count) {
        console.error("콘솔 - Element with ID 'count-product' not found!");
        return;
    }
    
    var currentDate = new Date();
    var formattedDate = currentDate.toISOString().slice(0, 19).replace("T", " ");
    var timestampString = formattedDate + ".000";
    
    $.ajax({
        type: "POST",
        url: "${cpath}/wallet/addBasket.do",
        data: {
            mem_id: mem_id,
            pro_no: pro_no,
            basket_pro_count: basket_pro_count,
            basket_date: timestampString
        },
        success: function (response) {
            console.log(response);
            if (response.success) {
                console.log("콘솔 - Item added to the basket successfully");
                alert("장바구니에 담았습니다!");
            } else {
                console.error("콘솔 - Failed to add item to the basket:", response.message);
                alert("장바구니에 담기지 않았습니다");
            }
        },

        error: function (error) {
            console.error("콘솔 - Error adding item to the basket:", error);
            alert("An error occurred during the addBasket operation!");
        }
    });
}

</script>
</body>
</html>