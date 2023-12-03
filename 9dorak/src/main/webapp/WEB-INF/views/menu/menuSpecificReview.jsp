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
	href="${cpath}/resources/css/menuSpecificReviewStyle.css?e"
	type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<script>
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
</script>
</head>
<body>
	<div class="div-wrapper">
		<div class="div">
			<div class="menu">
				<div class="group"></div>
				<div class="sub-image">
					<div class="overlap-group-wrapper">
						<div class="overlap-group">
							<img class="vector" src="img/vector-4.svg" />
						</div>
					</div>
					<div class="overlap-group-wrapper">
						<div class="overlap">
							<img class="vector" src="img/vector-3.svg" />
						</div>
					</div>
					<div class="overlap-group-wrapper">
						<div class="vector-wrapper">
							<img class="vector" src="img/vector-5.svg" />
						</div>
					</div>
				</div>
				<div class="specific">
					<div class="overlap-2">
						<div class="title">[배부르9] 한종범 불고기 도시락</div>
						<img class="heart" src="${cpath}/resources/images/menu/heart.svg" />
					</div>
					<div class="text-wrapper">8,000원</div>
					<div class="price-and-button">
						<div class="frame-wrapper">
							<div class="frame">
								<div class="button-product-add">
									<div class="text-wrapper-2">1</div>
									<button class="entypo-plus-wrapper">
										<img class="img" src="${cpath}/resources/images/menu/plus.png" />
									</button>
									<button class="entypo-minus-wrapper">
										<img class="img" src="${cpath}/resources/images/menu/minus.png" />
									</button>
								</div>
								<div class="text-wrapper-3">총 금액 8,000원</div>
							</div>
						</div>
						<div class="overlap-3">
							<button class="button-medium-text">
								<div class="overlap-group-2">
									<div class="label">&nbsp;&nbsp; 구도락 담기</div>
									<img class="icon-cart" src="${cpath}/resources/images/menu/Cart.png" />
								</div>
							</button>
							<div class="frame-2">
								<button class="label-wrapper">
									<div class="label-2">결제하기</div>
								</button>
								
							</div>
						</div>
					</div>
					<div class="frame-3">
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<div class="overlap-group-3">
										<div class="rectangle"></div>
										<div class="rectangle-2"></div>
									</div>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-5">
								<div class="text-wrapper-5">탄수화물</div>
								<div class="text-wrapper-6">60/324g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<div class="overlap-group-3">
										<div class="rectangle"></div>
										<div class="rectangle-2"></div>
									</div>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-6">
								<div class="text-wrapper-5">단백질</div>
								<div class="text-wrapper-6">60/324g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<div class="overlap-group-3">
										<div class="rectangle"></div>
										<div class="rectangle-2"></div>
									</div>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-7">
								<div class="text-wrapper-5">지방</div>
								<div class="text-wrapper-6">60/324g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-2">
									<div class="overlap-group-3">
										<div class="rectangle"></div>
										<div class="rectangle-2"></div>
									</div>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-6">
								<div class="text-wrapper-5">나트륨</div>
								<div class="text-wrapper-6">60/324g</div>
							</div>
						</div>
						<div class="view">
							<div class="frame-4">
								<div class="group-3">
									<div class="overlap-group-3">
										<div class="rectangle"></div>
										<div class="rectangle-3"></div>
									</div>
								</div>
								<div class="text-wrapper-4">75%</div>
							</div>
							<div class="frame-7">
								<div class="text-wrapper-5">당류</div>
								<div class="text-wrapper-6">60/324g</div>
							</div>
						</div>
					</div>
					<div class="message">
						<div class="timestamp">구도락’s message</div>
						<div class="message-2">
							<div class="overlap-group-4">
								<p class="text">
									<span class="span">1일 섭취 기준인 2,000kcal 중 </span> <span
										class="text-wrapper-7">574 kcal</span> <span class="span">를
										섭취할 수 있어요 👨‍🍳</span>
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
					<div class="text-wrapper-9">24+</div>
					<div class="text-wrapper-10">사진 및 동영상 후기</div>
				</div>
				<div class="auto-layout-vertical">
					<div class="text-wrapper-11">53개의 리뷰</div>
					<div class="text-wrapper-10">Burger eaters and counting</div>
				</div>
				<div class="auto-layout-vertical">
					<div class="text-wrapper-9">+31</div>
					<div class="text-wrapper-10">텍스트 리뷰</div>
				</div>
			</div>
			<div class="picture-reviews">
				<div class="group-5">
					<div class="group-6">
						<div class="overlap-group-5">
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<div class="overlap-wrapper">
						<div class="overlap-4">
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<div class="group-7">
						<div class="overlap-5">
							<p class="p">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또 먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
					<div class="group-8">
						<div class="overlap-6">
							<img class="rectangle-5" src="img/rectangle-614.png" />
							<p class="text-wrapper-12">진짜 너무너무 맛있어요 눈물이 나올 지경이에요 다음에도 또
								먹고 싶어요 ㅜㅡㅠㅠㅠ</p>
						</div>
					</div>
				</div>
				<div class="frame-8">
					<div class="text-wrapper-13">사진 및 동영상 후기</div>
					<div class="view-2">
						<div class="text-wrapper-13">모아보기</div>
						<img class="img-2" src="${cpath}/resources/images/menu/right-forward.svg" />
					</div>
				</div>
			</div>
			<div class="text-reviews-and">
				<div class="frame-9">
					<div class="text-wrapper-13">텍스트 리뷰</div>
					<div class="frame-10">
						<div class="frame-11">
							<div class="text-wrapper-13">최근등록순</div>
							<img class="img-2" src="${cpath}/resources/images/menu/filter.svg" />
						</div>
						<div class="frame-12">
							<div class="text-wrapper-13">추천순</div>
							<img class="img-2" src="${cpath}/resources/images/menu/filter.svg" />
						</div>
					</div>
				</div>
				<div class="reviews-texts">
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
									<img class="happy" src="${cpath}/resources/images/menu/happy-unfill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">0</div>
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
									<img class="happy" src="${cpath}/resources/images/menu/happy-fill.svg" />
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
									<img class="happy" src="${cpath}/resources/images/menu/happy-unfill.svg" />
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
									<img class="happy" src="${cpath}/resources/images/menu/happy-unfill.svg" />
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
									<img class="happy" src="${cpath}/resources/images/menu/happy-unfill.svg" />
									<div class="text-wrapper-18">유용해요</div>
									<div class="text-wrapper-18">5</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="pagination">
					<div class="page">
						<img class="carat" src="img/carat-2.svg" />
					</div>
					<div class="page-active-wrapper">
						<div class="page-active">
							<div class="num">1</div>
						</div>
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
					<div class="carat-wrapper">
						<img class="carat" src="img/carat.svg" />
					</div>
				</div>
			</div>
		</div>


		<footer class="footer">
			<div class="company-loco">
				<div class="company">
					<p class="text-wrapper-19">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Commodo libero viverra dapibus odio
						sit malesuada in quis. Arcu tristique elementum viverra integer
						id.</p>
					<img class="untitled" src="img/untitled-1-2.png" />
				</div>
				<div class="social-icon">
					<div class="facebook">
						<img class="mask-group" src="img/mask-group-3.png" />
					</div>
					<div class="instagram">
						<img class="mask-group-2" src="img/mask-group.png" />
					</div>
					<div class="twitter">
						<img class="mask-group-3" src="img/mask-group-2.png" />
					</div>
					<div class="linkind">
						<img class="mask-group-3" src="img/mask-group-4.png" />
					</div>
				</div>
			</div>
			<div class="contact-us">
				<div class="text-wrapper-20">Contact Us</div>
				<div class="group-10">
					<div class="text-wrapper-21">1234 Country Club Ave</div>
					<div class="text-wrapper-22">NC 123456, London, UK</div>
					<div class="text-wrapper-23">+0123 456 7891</div>
				</div>
				<div class="group-11">
					<div class="overlap-group-6">
						<div class="img-wrapper">
							<img class="vector-2" src="img/vector-2.svg" />
						</div>
						<div class="text-wrapper-24">Enter your email....</div>
					</div>
				</div>
			</div>
			<div class="user-link">
				<div class="text-wrapper-25">User Link</div>
				<div class="group-12">
					<div class="text-wrapper-21">About Us</div>
					<div class="text-wrapper-22">Contact Us</div>
					<div class="text-wrapper-23">Order Delivery</div>
					<div class="payment-tex">Payment &amp; Tex</div>
					<div class="text-wrapper-26">Terms of Services</div>
				</div>
			</div>
			<div class="opening-restaurant">
				<div class="text-wrapper-25">Opening Restaurant</div>
				<div class="group-13">
					<div class="text-wrapper-21">Sat-Wet: 09:00am-10:00PM</div>
					<div class="text-wrapper-22">Thursdayt: 09:00am-11:00PM</div>
					<div class="text-wrapper-23">Friday: 09:00am-8:00PM</div>
				</div>
			</div>
		</footer>

		<header class="header">
			<div class="top-nav">
				<div class="navbar">
					<div class="text-wrapper-27">이벤트</div>
					<div class="text-wrapper-28">메뉴보기</div>
					<div class="text-wrapper-29">구독하기</div>
					<div class="text-wrapper-30">요모조모</div>
					<div class="text-wrapper-31">도란도란</div>
				</div>
				<img class="untitled-2" src="img/untitled-1-1.png" />
				<div class="div-2">
					<div class="text-wrapper-32">로그인 | 회원가입</div>
					<div class="group-14">
						<div class="overlap-group-7">
							<img class="group-15" src="img/group-1.svg" />
							<div class="ellipse"></div>
							<div class="text-wrapper-33">2</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>



</body>
</html>