<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<script>
	var c = "${comments}";
	console.log(c);
</script>
<body>
	<div
		style="width: 1920px; height: 2688px; position: relative; overflow: hidden; background: #fff;">
		<div style="width: 1535px; height: 56px;">
			<div style="width: 1535px; height: 56px;">
				<div style="width: 551px; height: 22px;">
					<p
						style="position: absolute; left: 722px; top: 50px; font-size: 18px; font-weight: 600; text-align: left; color: #000;">
						메뉴보기</p>
					<p
						style="position: absolute; left: 846px; top: 50px; font-size: 18px; font-weight: 600; text-align: left; color: #000;">
						구독하기</p>
					<p
						style="position: absolute; left: 1223px; top: 50px; font-size: 18px; font-weight: 600; text-align: left; color: #000;">
						이벤트</p>
					<p
						style="position: absolute; left: 969px; top: 50px; font-size: 18px; font-weight: 600; text-align: left; color: #000;">
						요모조모</p>
					<p
						style="position: absolute; left: 1101px; top: 50px; font-size: 18px; font-weight: 600; text-align: left; color: #f38820;">
						도란도란</p>
				</div>
				<img src="untitled-1-1.png"
					style="width: 94px; height: 56px; position: absolute; left: 179.5px; top: 32.5px; object-fit: cover;" />
				<div
					style="width: 193px; height: 30px; filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.1));">
					<p
						style="position: absolute; left: 1522px; top: 47px; font-size: 18px; font-weight: 600; text-align: left; color: #000;">
						김수인님</p>
					<div style="width: 28px; height: 30px;">
						<svg width="23" height="25" viewBox="0 0 23 25" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="width: 21px; height: 23px; position: absolute; left: 1687px; top: 50px;"
							preserveAspectRatio="none">
            <path
								d="M4.5 1L1 5.6V21.7C1 22.31 1.24583 22.895 1.68342 23.3263C2.121 23.7577 2.71449 24 3.33333 24H19.6667C20.2855 24 20.879 23.7577 21.3166 23.3263C21.7542 22.895 22 22.31 22 21.7V5.6L18.5 1H4.5Z"
								stroke="black" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"></path>
            <path d="M1 6H22" stroke="black" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round"></path>
            <path
								d="M16 10C16 11.3261 15.5259 12.5979 14.682 13.5355C13.8381 14.4732 12.6935 15 11.5 15C10.3065 15 9.16193 14.4732 8.31802 13.5355C7.47411 12.5979 7 11.3261 7 10"
								stroke="black" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"></path></svg>
						<svg width="59" height="59" viewBox="0 0 59 59" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="position: absolute; left: 1699.5px; top: 43.5px;"
							preserveAspectRatio="xMidYMid meet">
            <g filter="url(#filter0_d_856_1578)">
              <circle cx="29.5" cy="29.5" r="7.5" fill="#F48E28"></circle>
            </g>
            <defs>
              <filter id="filter0_d_856_1578" x="0" y="0" width="59"
								height="59" filterUnits="userSpaceOnUse"
								color-interpolation-filters="sRGB">
                <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
                <feColorMatrix in="SourceAlpha" type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
								result="hardAlpha"></feColorMatrix>
                <feOffset></feOffset>
                <feGaussianBlur stdDeviation="11"></feGaussianBlur>
                <feComposite in2="hardAlpha" operator="out"></feComposite>
                <feColorMatrix type="matrix"
								values="0 0 0 0 0.8 0 0 0 0 0 0 0 0 0 0 0 0 0 0.8 0"></feColorMatrix>
                <feBlend mode="normal" in2="BackgroundImageFix"
								result="effect1_dropShadow_856_1578"></feBlend>
                <feBlend mode="normal" in="SourceGraphic"
								in2="effect1_dropShadow_856_1578" result="shape"></feBlend>
              </filter>
            </defs>
          </svg>
						<p
							style="position: absolute; left: 1704px; top: 43px; font-size: 13px; text-align: left; color: #fff;">
							2</p>
					</div>
				</div>
			</div>
		</div>
		<div
			style="width: 1702px; height: 1976px; position: absolute; left: 109px; top: 157px;">
			<div style="width: 400px; height: 280px;">
				<div style="width: 400px; height: 280px;">
					<div
						style="width: 400px; height: 280px; position: absolute; left: -0.5px; top: -0.5px; border-top-right-radius: 30px; border-bottom-left-radius: 30px; border-bottom-right-radius: 30px; background: #f48e28;"></div>
					<div
						style="width: 60px; height: 60px; position: absolute; left: 308px; top: 24px;">
						<div
							style="width: 44px; height: 44px; position: absolute; left: 8px; top: 8px; border-radius: 100px; background: rgba(255, 255, 255, 0.2);">
							<p
								style="position: absolute; left: 12px; top: 10px; font-size: 20px; text-align: center; color: #fff;">
								􀍠</p>
						</div>
					</div>
					<div
						style="width: 160px; height: 32px; position: absolute; left: 32px; top: 38px; overflow: hidden;"></div>
					<div
						style="display: flex; justify-content: flex-start; align-items: center; width: 336px; position: absolute; left: 32px; top: 116px; gap: 16px; padding-top: 12px; padding-bottom: 12px; border-radius: 100px; background: transparent;">
						<svg width="36" height="37" viewBox="0 0 36 37" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="flex-grow: 0; flex-shrink: 0; width: 32px; height: 32px; position: relative;"
							preserveAspectRatio="xMidYMid meet">
            <g filter="url(#filter0_d_856_1589)">
              <path
								d="M26.1614 17.7583C29.3257 17.7583 31.5388 20.3816 31.5388 23.608C31.5388 25.2308 30.2247 26.5495 28.6109 26.5495H27.6831C27.2769 26.5495 26.9719 26.2014 27.0206 25.8075C27.0441 25.6018 27.0567 25.3926 27.0567 25.1799V24.306C27.0567 22.2735 26.4249 20.3799 25.3418 18.7974C25.0386 18.3526 25.3418 17.7583 25.887 17.7583H26.1614ZM24.7696 16.0001C22.7785 16.0001 21.1593 14.226 21.1593 12.044C21.1593 9.64227 22.5764 8.08799 24.7696 8.08799C26.9628 8.08799 28.3799 9.64227 28.3799 12.044C28.3799 14.226 26.7607 16.0001 24.7696 16.0001ZM16.5057 16.8792C20.8128 16.8792 24.3183 20.2111 24.3183 24.306V25.1799C24.3183 26.9047 22.8435 28.3078 21.0276 28.3078H7.75266C5.9367 28.3078 4.46191 26.9047 4.46191 25.1799V24.306C4.46191 20.2111 7.96567 16.8792 12.2745 16.8792H16.5057ZM19.3542 8.96711C19.3542 11.877 17.1285 14.2418 14.3901 14.2418C11.6535 14.2418 9.42602 11.877 9.42602 8.96711C9.42602 5.71436 11.3286 3.69238 14.3901 3.69238C17.4534 3.69238 19.3542 5.71436 19.3542 8.96711Z"
								fill="white"></path>
            </g>
            <defs>
              <filter id="filter0_d_856_1589" x="-2" y="0" width="40"
								height="40" filterUnits="userSpaceOnUse"
								color-interpolation-filters="sRGB">
                <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
                <feColorMatrix in="SourceAlpha" type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
								result="hardAlpha"></feColorMatrix>
                <feOffset dy="4"></feOffset>
                <feGaussianBlur stdDeviation="2"></feGaussianBlur>
                <feComposite in2="hardAlpha" operator="out"></feComposite>
                <feColorMatrix type="matrix"
								values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"></feColorMatrix>
                <feBlend mode="normal" in2="BackgroundImageFix"
								result="effect1_dropShadow_856_1589"></feBlend>
                <feBlend mode="normal" in="SourceGraphic"
								in2="effect1_dropShadow_856_1589" result="shape"></feBlend>
              </filter>
            </defs>
          </svg>
						<p
							style="flex-grow: 0; flex-shrink: 0; font-size: 20px; font-weight: 600; text-align: left; color: rgba(255, 255, 255, 0.9);">
							도란도란</p>
					</div>
					<div
						style="display: flex; justify-content: flex-start; align-items: center; width: 336px; position: absolute; left: 32px; top: 188px; gap: 16px; padding-top: 12px; padding-bottom: 12px; border-radius: 100px; background: transparent;">
						<svg width="32" height="32" viewBox="0 0 32 32" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="flex-grow: 0; flex-shrink: 0; width: 32px; height: 32px; position: relative;"
							preserveAspectRatio="xMidYMid meet">
            <path
								d="M19.7497 26.2271H24.3033C24.7469 26.2271 25.1069 25.8671 25.1069 25.4235V15.7806H25.1401C24.9611 15.6917 24.7919 15.5824 24.6365 15.4528L24.2069 15.0938C24.1072 15.0124 23.9636 15.0124 23.864 15.0949L23.6883 15.2417C23.0615 15.7624 22.2729 16.0485 21.4586 16.0485H21.2165C20.4076 16.0485 19.6233 15.7667 18.9997 15.2513L18.8026 15.0885C18.7029 15.0071 18.5604 15.0071 18.4619 15.0885L18.2636 15.2524C17.639 15.7667 16.8547 16.0485 16.0469 16.0485H15.9001C15.1019 16.0485 14.3272 15.7742 13.7079 15.2717L13.4765 15.0842C13.3769 15.0038 13.2344 15.0049 13.1369 15.0863L12.9515 15.2417C12.3247 15.7635 11.5361 16.0485 10.7219 16.0485H10.5311C9.72436 16.0485 8.94329 15.7688 8.31972 15.2567L8.11186 15.0853C8.01222 15.0038 7.87079 15.0038 7.77115 15.0853L7.26651 15.501C7.13472 15.6092 6.99115 15.7035 6.84115 15.7806H6.89258V25.4235C6.89258 25.8671 7.25258 26.2271 7.69615 26.2271H12.2497V19.5306C12.2497 18.7913 12.8497 18.1913 13.589 18.1913H18.4104C19.1497 18.1913 19.7497 18.7913 19.7497 19.5306V26.2271ZM4.93508 10.1556H27.0644C27.0354 10.0592 27.0044 9.96384 26.969 9.86955L25.7358 6.51812C25.4529 5.80348 24.7619 5.33419 23.9936 5.33419H8.00686C7.23758 5.33419 6.54651 5.80348 6.27008 6.49991L5.03044 9.86955C4.99508 9.96384 4.96401 10.0592 4.93508 10.1556ZM27.2497 11.7628H4.74972V13.6378C4.74972 14.0813 5.10972 14.4413 5.55329 14.4413H5.73651C5.92294 14.4413 6.10294 14.3771 6.24651 14.2592L6.75115 13.8446C7.44222 13.2756 8.44079 13.2756 9.13186 13.8446L9.33972 14.0149C9.67508 14.2903 10.0961 14.4413 10.5311 14.4413H10.7219C11.1601 14.4413 11.5854 14.2881 11.9219 14.0074L12.1083 13.852C12.7961 13.2788 13.7936 13.2724 14.4879 13.836L14.7194 14.0224C15.0536 14.2935 15.4704 14.4413 15.9001 14.4413H16.0469C16.4819 14.4413 16.904 14.2892 17.2404 14.0128L17.4386 13.8488C18.1308 13.2767 19.1326 13.2767 19.8258 13.8488L20.0229 14.0128C20.3583 14.2892 20.7804 14.4413 21.2165 14.4413H21.4586C21.8969 14.4413 22.3222 14.2871 22.6597 14.0063L22.8354 13.8606C23.5297 13.2799 24.5411 13.2799 25.2354 13.8596L25.6661 14.2185C25.8386 14.3621 26.0572 14.4413 26.2833 14.4413C26.8179 14.4413 27.2497 14.0096 27.2497 13.4771V11.7628ZM26.714 16.0131V25.4235C26.714 26.7553 25.6351 27.8342 24.3033 27.8342H7.69615C6.36436 27.8342 5.28544 26.7553 5.28544 25.4235V16.0335C4.08008 15.9006 3.14258 14.8785 3.14258 13.6378V11.4424C3.14258 10.7149 3.27115 9.99491 3.52186 9.31348L4.76901 5.92562C5.29615 4.59812 6.57865 3.72705 8.00686 3.72705H23.9936C25.4208 3.72705 26.7033 4.59812 27.2369 5.94384L28.4776 9.31348C28.7283 9.99491 28.8569 10.7149 28.8569 11.4424V13.4771C28.8569 14.751 27.9301 15.8085 26.714 16.0131ZM18.1426 26.2271V19.7985H13.8569V26.2271H18.1426Z"
								fill="white"></path>
          </svg>
						<p
							style="flex-grow: 0; flex-shrink: 0; font-size: 20px; font-weight: 500; text-align: left; color: rgba(255, 255, 255, 0.9);">
							내가 쓴 글</p>
					</div>
				</div>
				<p
					style="position: absolute; left: 32px; top: 30px; font-size: 40px; font-weight: 600; text-align: left; color: #fff;">
					도란도란</p>
			</div>
			<div
				style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-end; position: absolute; left: 475px; top: 1px; gap: 40px; filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));">
				<div
					style="flex-grow: 0; flex-shrink: 0; width: 752px; height: 993px;">
					<div
						style="width: 752px; height: 993px; position: absolute; left: -0.5px; top: -0.5px; border-radius: 10px; background: #fff;"></div>
					<img
						style="width: 689px; height: 724.76px; position: absolute; left: 31.5px; top: 135.94px; border-radius: 10px;"
						src="unsplash:blihvfxbi9s.png" />
					<p
						style="width: 689px; height: 64.38px; position: absolute; left: 31px; top: 867px; font-size: 20px; font-weight: 500; text-align: left; color: #7c7c7c;">
						엄마가 사준 디저트 매우 맛있다 학교 앞에도 있었으면 좋겠다!!! #반모#중2#슬릭백장인</p>
					<div
						style="width: 25px; height: 41.92px; position: absolute; left: 32px; top: 682.68px; overflow: hidden;"></div>
					<div
						style="width: 27px; height: 29.94px; position: absolute; left: 262px; top: 685.67px; overflow: hidden;"></div>
					<div
						style="display: flex; justify-content: flex-start; align-items: center; height: 42px; position: absolute; left: 32px; top: 937px; gap: 9px;">
						<svg width="23" height="22" viewBox="0 0 23 22" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="flex-grow: 0; flex-shrink: 0;" preserveAspectRatio="none">
            <path
								d="M11.0188 3.53838L11.4583 4.34876L11.8979 3.53838C12.9171 1.65905 14.6882 0.5 16.6667 0.5C19.7561 0.5 22.4167 3.4982 22.4167 7.33333C22.4167 9.03854 21.749 10.7791 20.7023 12.4538C19.6576 14.1253 18.2563 15.6975 16.8412 17.056C15.4279 18.4127 14.0126 19.5452 12.9496 20.3389C12.4185 20.7355 11.9764 21.0467 11.6679 21.2582C11.5895 21.312 11.5198 21.3593 11.4594 21.3999C11.3989 21.3589 11.3288 21.311 11.2501 21.2567C10.9416 21.0435 10.4994 20.7302 9.96825 20.3312C8.90507 19.5326 7.48948 18.3943 6.07593 17.0335C4.66062 15.6711 3.25909 14.0967 2.21416 12.4277C1.16715 10.7552 0.5 9.02254 0.5 7.33333C0.5 3.4982 3.16061 0.5 6.25 0.5C8.22844 0.5 9.99955 1.65905 11.0188 3.53838Z"
								fill="white" stroke="#F44336"></path>
          </svg>
						<p
							style="flex-grow: 0; flex-shrink: 0; width: 45px; height: 18px; font-size: 18px; font-weight: 500; text-align: left; color: #b4b4b4;">
							23.5K</p>
						<svg width="29" height="28" viewBox="0 0 29 28" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="flex-grow: 0; flex-shrink: 0; width: 28px; height: 28px; position: relative;"
							preserveAspectRatio="none">
            <g clip-path="url(#clip0_856_1612)">
              <path
								d="M8.98221 30C8.51421 30 8.13438 29.6117 8.13438 29.1333C8.13438 28.6549 8.51421 28.2667 8.98221 28.2667H20.8518C21.3198 28.2667 21.6996 28.6549 21.6996 29.1333C21.6996 29.6117 21.3198 30 20.8518 30H8.98221ZM18.4926 15.6665L12.7183 19.2221C12.1938 19.5445 11.5257 19.1597 11.5257 18.5334V11.421C11.5257 10.7958 12.1938 10.4099 12.7183 10.7323L18.4926 14.2891C19.0001 14.6011 19.0001 15.3533 18.4926 15.6665ZM23.6779 24.2222C25.0819 24.2222 26.2213 23.0574 26.2213 21.6222V8.33333C26.2213 6.89813 25.0819 5.73333 23.6779 5.73333H6.15612C4.75212 5.73333 3.61264 6.89813 3.61264 8.33333V21.6222C3.61264 23.0574 4.75212 24.2222 6.15612 24.2222H23.6779ZM23.6779 25.9556H6.15612C3.81499 25.9556 1.91699 24.0154 1.91699 21.6222V8.33333C1.91699 5.94018 3.81499 4 6.15612 4H23.6779C26.019 4 27.917 5.94018 27.917 8.33333V21.6222C27.917 24.0154 26.019 25.9556 23.6779 25.9556Z"
								fill="#B9C6F5" fill-opacity="0.764331"></path>
            </g>
            <defs>
              <clipPath id="clip0_856_1612">
                <rect width="28" height="28" fill="white"
								transform="translate(0.916992)"></rect>
              </clipPath>
            </defs>
          </svg>
						<p
							style="flex-grow: 0; flex-shrink: 0; width: 24px; height: 18px; font-size: 18px; font-weight: 500; text-align: left; color: #b4b4b4;">
							3.5</p>
						<svg width="34" height="34" viewBox="0 0 34 34" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="flex-grow: 0; flex-shrink: 0; width: 33px; height: 33px; position: relative;"
							preserveAspectRatio="none">
            <path fill-rule="evenodd" clip-rule="evenodd"
								d="M3.66699 8.75C3.66699 7.65598 4.10159 6.60677 4.87518 5.83318C5.64876 5.0596 6.69797 4.625 7.79199 4.625H27.042C28.136 4.625 29.1852 5.0596 29.9588 5.83318C30.7324 6.60677 31.167 7.65598 31.167 8.75V22.5C31.167 23.594 30.7324 24.6432 29.9588 25.4168C29.1852 26.1904 28.136 26.625 27.042 26.625H11.4591C11.1616 26.625 10.8721 26.7215 10.6341 26.9L5.86699 30.475C5.66271 30.6282 5.4198 30.7215 5.16547 30.7444C4.91115 30.7674 4.65547 30.719 4.42707 30.6048C4.19868 30.4906 4.00659 30.3151 3.87235 30.0979C3.7381 29.8807 3.66699 29.6304 3.66699 29.375V8.75ZM10.542 8.75C10.1773 8.75 9.82758 8.89487 9.56972 9.15273C9.31186 9.41059 9.16699 9.76033 9.16699 10.125C9.16699 10.4897 9.31186 10.8394 9.56972 11.0973C9.82758 11.3551 10.1773 11.5 10.542 11.5H24.292C24.6567 11.5 25.0064 11.3551 25.2643 11.0973C25.5221 10.8394 25.667 10.4897 25.667 10.125C25.667 9.76033 25.5221 9.41059 25.2643 9.15273C25.0064 8.89487 24.6567 8.75 24.292 8.75H10.542ZM10.542 14.25C10.1773 14.25 9.82758 14.3949 9.56972 14.6527C9.31186 14.9106 9.16699 15.2603 9.16699 15.625C9.16699 15.9897 9.31186 16.3394 9.56972 16.5973C9.82758 16.8551 10.1773 17 10.542 17H24.292C24.6567 17 25.0064 16.8551 25.2643 16.5973C25.5221 16.3394 25.667 15.9897 25.667 15.625C25.667 15.2603 25.5221 14.9106 25.2643 14.6527C25.0064 14.3949 24.6567 14.25 24.292 14.25H10.542ZM10.542 19.75C10.1773 19.75 9.82758 19.8949 9.56972 20.1527C9.31186 20.4106 9.16699 20.7603 9.16699 21.125C9.16699 21.4897 9.31186 21.8394 9.56972 22.0973C9.82758 22.3551 10.1773 22.5 10.542 22.5H16.042C16.4067 22.5 16.7564 22.3551 17.0143 22.0973C17.2721 21.8394 17.417 21.4897 17.417 21.125C17.417 20.7603 17.2721 20.4106 17.0143 20.1527C16.7564 19.8949 16.4067 19.75 16.042 19.75H10.542Z"
								fill="#B9C6F5" fill-opacity="0.764331"></path>
          </svg>
						<p
							style="flex-grow: 0; flex-shrink: 0; width: 21px; height: 16px; font-size: 18px; font-weight: 500; text-align: left; color: #b4b4b4;">
							2K</p>
					</div>
					<div style="width: 280px; height: 105.19px;">
						<img style="position: absolute; left: 32.5px; top: 17.38px;"
							src="unsplash:y3kc_7qhmjk.png" />
						<div
							style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; position: absolute; left: 152px; top: 29.98px; gap: 5px;">
							<div
								style="display: flex; justify-content: flex-start; align-items: center; flex-grow: 0; flex-shrink: 0; position: relative; gap: 7px;">
								<p
									style="flex-grow: 0; flex-shrink: 0; font-size: 30px; font-weight: 500; text-align: left; color: #000;">
									ksween</p>
								<p
									style="flex-grow: 0; flex-shrink: 0; font-size: 20px; font-weight: 500; text-align: left; color: #ff9a23;">
									낑깡</p>
							</div>
							<div
								style="flex-grow: 0; flex-shrink: 0; width: 50px; height: 24px;">
								<p
									style="position: absolute; left: 0px; top: 42px; font-size: 20px; font-weight: 500; text-align: left; color: #8a8a8a;">
									8분전</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; position: absolute; left: 475px; top: 1035px; gap: 40px;">

				<c:forEach items="${comments}" var="comment">
					<tr>
						<td>${comment.comment_no}</td>
						<td>${comment.comment_cont}</td>
						<td>${comment.comment_date}</td>
						<td>${comment.doran_no}</td>
					</tr>
				</c:forEach>


				<p
					style="flex-grow: 0; flex-shrink: 0; font-size: 30px; font-weight: 600; text-align: left; color: #000;">
					COMMENTS ☁️</p>

				<div
					style="flex-grow: 0; flex-shrink: 0; width: 752px; height: 865px;">

					<div
						style="width: 752px; height: 865px; position: absolute; left: 0px; top: 76px;">
						<div
							style="width: 752px; height: 865px; position: absolute; left: -1px; top: -1px; border-radius: 10px; background: #f8f8f8;"></div>
						<div
							style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; position: absolute; left: 32px; top: 51px; gap: 28px;">
							<div
								style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 13px;">
								<div
									style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 6px;">
									<p
										style="flex-grow: 0; flex-shrink: 0; font-size: 12px; text-align: left; color: #808080;">
										Name</p>
									<div
										style="flex-grow: 0; flex-shrink: 0; width: 215px; height: 47.95px;">
										<div
											style="display: flex; justify-content: flex-start; align-items: flex-start; width: 207.59px; height: 47.95px; position: absolute; left: 215px; top: 21px; padding-left: 13px; padding-right: 13px; padding-top: 10px; padding-bottom: 10px; border-radius: 20px; background: #e3e3e5;">
											<p
												style="flex-grow: 0; flex-shrink: 0; font-size: 15px; text-align: left; color: #434343;">
												Here’s some feedback...</p>
										</div>
										<svg width="22" height="23" viewBox="0 0 22 23" fill="none"
											xmlns="http://www.w3.org/2000/svg"
											style="position: absolute; left: 21.5px; top: 39.5px;"
											preserveAspectRatio="none">
                    <path
												d="M9.51351 10.9153C9.51351 7.01695 8.12613 0 8.12613 0L22 16.7627C14.4208 21.2921 9.1136 22.7404 0 23C3.96289 19.837 9.51351 14.8136 9.51351 10.9153Z"
												fill="#E2E1E6"></path>
                  </svg>
									</div>
								</div>
								<p
									style="flex-grow: 0; flex-shrink: 0; width: 115px; height: 20px; font-size: 15px; text-align: left; color: #8c8c8c;">
									2023.11.22</p>
							</div>
							<div
								style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 13px;">
								<div
									style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 6px;">
									<p
										style="flex-grow: 0; flex-shrink: 0; font-size: 12px; text-align: left; color: #808080;">
										Name</p>
									<div
										style="flex-grow: 0; flex-shrink: 0; width: 215px; height: 47.95px;">
										<div
											style="display: flex; justify-content: flex-start; align-items: flex-start; width: 207.59px; height: 47.95px; position: absolute; left: 215px; top: 21px; padding-left: 13px; padding-right: 13px; padding-top: 10px; padding-bottom: 10px; border-radius: 20px; background: #e3e3e5;">
											<p
												style="flex-grow: 0; flex-shrink: 0; font-size: 15px; text-align: left; color: #434343;">
												Here’s some feedback...</p>
										</div>
										<svg width="22" height="24" viewBox="0 0 22 24" fill="none"
											xmlns="http://www.w3.org/2000/svg"
											style="position: absolute; left: 21.5px; top: 39.5px;"
											preserveAspectRatio="none">
                    <path
												d="M9.51351 11.8674C9.51351 7.9691 8.12613 0.952148 8.12613 0.952148L22 17.7149C14.4208 22.2443 9.1136 23.6926 0 23.9521C3.96289 20.7891 9.51351 15.7657 9.51351 11.8674Z"
												fill="#E2E1E6"></path>
                  </svg>
									</div>
								</div>
								<p
									style="flex-grow: 0; flex-shrink: 0; width: 115px; height: 20px; font-size: 15px; text-align: left; color: #8c8c8c;">
									2023.11.22</p>
							</div>
							<div
								style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 13px;">
								<div
									style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 6px;">
									<p
										style="flex-grow: 0; flex-shrink: 0; font-size: 12px; text-align: left; color: #808080;">
										Name</p>
									<div
										style="flex-grow: 0; flex-shrink: 0; width: 215px; height: 47.95px;">
										<div
											style="display: flex; justify-content: flex-start; align-items: flex-start; width: 207.59px; height: 47.95px; position: absolute; left: 215px; top: 21px; padding-left: 13px; padding-right: 13px; padding-top: 10px; padding-bottom: 10px; border-radius: 20px; background: #e3e3e5;">
											<p
												style="flex-grow: 0; flex-shrink: 0; font-size: 15px; text-align: left; color: #434343;">
												Here’s some feedback...</p>
										</div>
										<svg width="22" height="24" viewBox="0 0 22 24" fill="none"
											xmlns="http://www.w3.org/2000/svg"
											style="position: absolute; left: 21.5px; top: 39.5px;"
											preserveAspectRatio="none">
                    <path
												d="M9.51351 11.82C9.51351 7.92173 8.12613 0.904785 8.12613 0.904785L22 17.6675C14.4208 22.1969 9.1136 23.6452 0 23.9048C3.96289 20.7418 9.51351 15.7183 9.51351 11.82Z"
												fill="#E2E1E6"></path>
                  </svg>
									</div>
								</div>
								<p
									style="flex-grow: 0; flex-shrink: 0; width: 115px; height: 20px; font-size: 15px; text-align: left; color: #8c8c8c;">
									2023.11.22</p>
							</div>
							<div
								style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 13px;">
								<div
									style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; flex-grow: 0; flex-shrink: 0; position: relative; gap: 6px;">
									<p
										style="flex-grow: 0; flex-shrink: 0; font-size: 12px; text-align: left; color: #808080;">
										Name</p>
									<div
										style="flex-grow: 0; flex-shrink: 0; width: 215px; height: 47.95px;">
										<div
											style="display: flex; justify-content: flex-start; align-items: flex-start; width: 207.59px; height: 47.95px; position: absolute; left: 215px; top: 21px; padding-left: 13px; padding-right: 13px; padding-top: 10px; padding-bottom: 10px; border-radius: 20px; background: #e3e3e5;">
											<p
												style="flex-grow: 0; flex-shrink: 0; font-size: 15px; text-align: left; color: #434343;">
												Here’s some feedback...</p>
										</div>
										<svg width="22" height="24" viewBox="0 0 22 24" fill="none"
											xmlns="http://www.w3.org/2000/svg"
											style="position: absolute; left: 21.5px; top: 39.5px;"
											preserveAspectRatio="none">
                    <path
												d="M9.51351 11.7722C9.51351 7.87388 8.12613 0.856934 8.12613 0.856934L22 17.6196C14.4208 22.1491 9.1136 23.5974 0 23.8569C3.96289 20.6939 9.51351 15.6705 9.51351 11.7722Z"
												fill="#E2E1E6"></path>
                  </svg>
									</div>
								</div>
								<p
									style="flex-grow: 0; flex-shrink: 0; width: 115px; height: 20px; font-size: 15px; text-align: left; color: #8c8c8c;">
									2023.11.22</p>
							</div>
						</div>
					</div>
					<div style="width: 752px; height: 220px;">
						<div style="width: 752px; height: 220px;">
							<pre>
Failed to transform RECTANGLE Rectangle 6
TypeError: cannot convert symbol to number</pre>
							<img style="position: absolute; left: 23.5px; top: 748.5px;"
								src="unsplash:u3pi6hhsyew-2.png" />
							<div style="width: 626px; height: 126px;">
								<div style="width: 626px; height: 126px;">
									<div
										style="width: 626px; height: 126px; position: absolute; left: 99.5px; top: 735.5px; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px; background: #f9f9f9;"></div>
								</div>
								<p
									style="width: 405px; height: 76px; position: absolute; left: 121px; top: 749px; font-size: 17px; font-weight: 500; text-align: left; color: #797979;">
									자유롭게 작성해 보세요 ..</p>
							</div>
							<div
								style="display: flex; justify-content: flex-start; align-items: flex-end; position: absolute; left: 26px; top: 882px; gap: 361px;">
								<div
									style="flex-grow: 0; flex-shrink: 0; width: 123px; height: 36px;">
									<p
										style="width: 59px; height: 19px; position: absolute; left: 39px; top: 5px; font-size: 20px; font-weight: 700; text-align: left; color: #fff;">
										Paylaş</p>
									<div
										style="width: 123px; height: 36px; position: absolute; left: -0.5px; top: -0.5px; border-radius: 10px; background: #e3e3e5;"></div>
									<p
										style="position: absolute; left: 39px; top: 5px; font-size: 20px; font-weight: 700; text-align: left; color: #8c8c8c;">
										댓글달기</p>
									<svg width="34" height="25" viewBox="0 0 34 25" fill="none"
										xmlns="http://www.w3.org/2000/svg"
										style="width: 34px; height: 25px; position: absolute; left: 0px; top: 6px;"
										preserveAspectRatio="none">
                  <path
											d="M29.4419 3.35155C29.2985 3.24661 29.1174 3.17395 28.9197 3.14212C28.7221 3.11029 28.5162 3.12061 28.3263 3.17186L4.95131 9.42186C4.74972 9.47809 4.57616 9.57807 4.45369 9.70855C4.33122 9.83902 4.26562 9.9938 4.26562 10.1523C4.26562 10.3109 4.33122 10.4656 4.45369 10.5961C4.57616 10.7266 4.74972 10.8266 4.95131 10.8828L14.0782 13.5625L20.8144 8.59374L22.3126 9.6953L15.5444 14.6719L19.1994 21.3828C19.2782 21.5282 19.4145 21.6528 19.5906 21.7405C19.7668 21.8283 19.9748 21.8751 20.1876 21.875C20.4023 21.8717 20.6106 21.8207 20.7851 21.7287C20.9596 21.6366 21.0921 21.5079 21.1651 21.3594L29.6651 4.17186C29.7374 4.03364 29.7549 3.88314 29.7154 3.7379C29.6759 3.59266 29.5811 3.45867 29.4419 3.35155Z"
											fill="white"></path>
                </svg>
								</div>
							</div>
						</div>
						<svg width="752" height="5" viewBox="0 0 752 5" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="position: absolute; left: -2.5px; top: 938.5px;"
							preserveAspectRatio="none">
            <line y1="2.5" x2="752" y2="2.5" stroke="#E2E1E6"
								stroke-width="5"></line>
          </svg>
					</div>
				</div>
			</div>
			<div style="width: 342px; height: 475px;">
				<div
					style="width: 342px; height: 371px; filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));">
					<div
						style="width: 342px; height: 309.91px; position: absolute; left: 1359.85px; top: 60.94px; border-radius: 20px; background: #fff; border-width: 0.3px; border-color: #ababab;"></div>
					<img style="position: absolute; left: 1443.21px; top: -0.5px;"
						src="unsplash:u3pi6hhsyew.png" />
					<div
						style="display: flex; flex-direction: column; justify-content: center; align-items: center; width: 110.01px; height: 57.76px; position: absolute; left: 1472.41px; top: 165.51px; gap: 5px;">
						<p
							style="flex-grow: 0; flex-shrink: 0; font-size: 20px; text-align: left; color: #000;">
							외국잼민이</p>
						<p
							style="flex-grow: 0; flex-shrink: 0; font-size: 20px; text-align: left; color: #9f9f9f;">
							Lv.낑깡</p>
					</div>
					<svg width="229" height="5" viewBox="0 0 229 5" fill="none"
						xmlns="http://www.w3.org/2000/svg"
						style="width: 228.4px; height: 0px;" preserveAspectRatio="none">
          <line x1="0.00683594" y1="2.1377" x2="167.419" y2="2.1377"
							stroke="#FFA654" stroke-width="4"></line>
          <line x1="167.419" y1="2.1377" x2="228.405" y2="2.1377"
							stroke="#9F9F9F" stroke-width="4"></line>
        </svg>
					<p
						style="width: 49.03px; height: 25.55px; position: absolute; left: 1614.71px; top: 246.59px; font-size: 20px; text-align: left; color: #ffa654;">
						70점</p>
					<p
						style="width: 111.21px; height: 21.1px; position: absolute; left: 1413.81px; top: 244.37px; font-size: 16px; text-align: left; color: #000;">
						보유한 포인트</p>
					<div
						style="width: 229.59px; height: 43.32px; position: absolute; left: 1413.31px; top: 298.3px; border-radius: 10px; background: #f38820;"></div>
					<p
						style="width: 144.69px; height: 23.33px; position: absolute; left: 1459.25px; top: 308.8px; font-size: 18px; font-weight: 700; text-align: left; color: #fff;">
						프로필 설정하기</p>
				</div>
				<div style="width: 342px; height: 69px;">
					<p
						style="width: 177px; height: 36.42px; position: absolute; left: 1477px; top: 415.58px; font-size: 20px; font-weight: 700; text-align: left; color: #fff;">
						Paylaş</p>
					<div
						style="width: 342px; height: 69px; position: absolute; left: 1359.5px; top: 405.5px; border-radius: 10px; background: rgba(255, 141, 35, 0.76);"></div>
					<p
						style="position: absolute; left: 1483px; top: 428px; font-size: 20px; font-weight: 700; text-align: left; color: #fff;">
						글 작성하기</p>
					<svg width="50" height="48" viewBox="0 0 50 48" fill="none"
						xmlns="http://www.w3.org/2000/svg"
						style="width: 50px; height: 47.92px; position: absolute; left: 1431px; top: 416px;"
						preserveAspectRatio="none">
          <path
							d="M40.1583 8.16191C40.0436 8.03587 39.9045 7.9344 39.7495 7.86362C39.5945 7.79284 39.4267 7.75423 39.2563 7.75012C39.086 7.74601 38.9165 7.77649 38.7582 7.83971C38.6 7.90293 38.4562 7.99759 38.3355 8.11795L37.3645 9.0843C37.2468 9.20207 37.1807 9.36174 37.1807 9.52823C37.1807 9.69472 37.2468 9.85439 37.3645 9.97216L38.2547 10.8608C38.313 10.9194 38.3824 10.9659 38.4588 10.9977C38.5352 11.0294 38.6171 11.0458 38.6998 11.0458C38.7825 11.0458 38.8644 11.0294 38.9408 10.9977C39.0172 10.9659 39.0865 10.9194 39.1449 10.8608L40.0916 9.91878C40.5705 9.4407 40.6152 8.66197 40.1583 8.16191Z"
							fill="white"></path>
          <path
							d="M35.4096 11.0312L21.3045 25.1113C21.219 25.1965 21.1568 25.3023 21.124 25.4184L20.4716 27.3617C20.456 27.4144 20.4548 27.4704 20.4684 27.5237C20.4819 27.577 20.5096 27.6256 20.5485 27.6645C20.5874 27.7034 20.636 27.7311 20.6893 27.7446C20.7426 27.7581 20.7986 27.757 20.8513 27.7414L22.793 27.089C22.9092 27.0561 23.0149 26.994 23.1001 26.9085L37.1802 12.8018C37.3105 12.6701 37.3835 12.4924 37.3835 12.3072C37.3835 12.122 37.3105 11.9442 37.1802 11.8126L36.4028 11.0312C36.2709 10.8997 36.0924 10.8259 35.9062 10.8259C35.72 10.8259 35.5415 10.8997 35.4096 11.0312Z"
							fill="white"></path>
          <path
							d="M34.3938 19.1297L24.8711 28.6711C24.5031 29.04 24.0507 29.3138 23.5531 29.4688L21.5297 30.1461C21.0495 30.2817 20.5418 30.2868 20.0589 30.1609C19.5761 30.035 19.1356 29.7826 18.7827 29.4298C18.4299 29.0769 18.1775 28.6364 18.0516 28.1536C17.9257 27.6707 17.9308 27.163 18.0664 26.6828L18.7438 24.6594C18.8982 24.162 19.1715 23.7096 19.5398 23.3414L29.0813 13.8172C29.1687 13.7298 29.2283 13.6185 29.2525 13.4973C29.2767 13.376 29.2644 13.2503 29.2171 13.1361C29.1699 13.0219 29.0898 12.9242 28.987 12.8555C28.8843 12.7868 28.7635 12.7501 28.6399 12.75H12.3359C11.1756 12.75 10.0628 13.2109 9.24235 14.0314C8.42187 14.8519 7.96094 15.9647 7.96094 17.125V35.875C7.96094 37.0353 8.42187 38.1481 9.24235 38.9686C10.0628 39.7891 11.1756 40.25 12.3359 40.25H31.0859C32.2463 40.25 33.3591 39.7891 34.1795 38.9686C35 38.1481 35.4609 37.0353 35.4609 35.875V19.5711C35.4609 19.4475 35.4242 19.3267 35.3554 19.2239C35.2867 19.1211 35.1891 19.0411 35.0748 18.9938C34.9606 18.9466 34.8349 18.9343 34.7137 18.9585C34.5925 18.9826 34.4811 19.0422 34.3938 19.1297Z"
							fill="white"></path>
        </svg>
				</div>
			</div>
		</div>
		<div style="width: 1920px; height: 429px;">
			<div
				style="width: 1920px; height: 429px; position: absolute; left: -0.5px; top: 2258.5px; background: #fafaff;"></div>
			<div style="width: 375px; height: 284px;">
				<div style="width: 375px; height: 227px;">
					<p
						style="width: 375px; height: 89px; position: absolute; left: 180px; top: 2454px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo
						libero viverra dapibus odio sit malesuada in quis. Arcu tristique
						elementum viverra integer id.</p>
					<img src="untitled-1-1.png"
						style="width: 181px; height: 108px; position: absolute; left: 179.5px; top: 2315.5px; object-fit: cover;" />
				</div>
				<div style="width: 222px; height: 42px;">
					<div style="width: 42px; height: 42px;">
						<svg width="42" height="42" viewBox="0 0 42 42" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="width: 42px; height: 42px;" preserveAspectRatio="none">
            <circle cx="21" cy="21" r="21" fill="#F5DDC4"></circle>
          </svg>
						<div style="width: 22px; height: 22px;">
							<img src="facebook-1.png"
								style="width: 22px; height: 22px; position: absolute; left: 189.5px; top: 2567.5px; object-fit: cover;" />
							<div
								style="width: 31.73px; height: 30.04px; position: absolute; left: 187.38px; top: 2563.27px; background: #f48e28;"></div>
						</div>
					</div>
					<div style="width: 42px; height: 42px;">
						<svg width="42" height="42" viewBox="0 0 42 42" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="width: 42px; height: 42px;" preserveAspectRatio="none">
            <circle cx="21" cy="21" r="21" fill="#F5DDC4"></circle>
          </svg>
						<div style="width: 18px; height: 18px;">
							<img src="instagram-1.png"
								style="width: 18px; height: 18px; position: absolute; left: 371.5px; top: 2569.5px; object-fit: cover;" />
							<div
								style="width: 33.75px; height: 23.63px; position: absolute; left: 362.5px; top: 2566.13px; background: #f48e28;"></div>
						</div>
					</div>
					<div style="width: 42px; height: 42px;">
						<svg width="42" height="42" viewBox="0 0 42 42" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="width: 42px; height: 42px;" preserveAspectRatio="none">
            <circle cx="21" cy="21" r="21" fill="#F5DDC4"></circle>
          </svg>
						<div style="width: 23px; height: 23px;">
							<img src="twitter.png"
								style="width: 23px; height: 23px; position: absolute; left: 249.5px; top: 2567.5px; object-fit: cover;" />
							<div
								style="width: 27.6px; height: 25.76px; position: absolute; left: 246.74px; top: 2564.74px; background: #f48e28;"></div>
						</div>
					</div>
					<div style="width: 42px; height: 42px;">
						<svg width="42" height="42" viewBox="0 0 42 42" fill="none"
							xmlns="http://www.w3.org/2000/svg"
							style="width: 42px; height: 42px;" preserveAspectRatio="none">
            <circle cx="21" cy="21" r="21" fill="#F5DDC4"></circle>
          </svg>
						<div style="width: 23px; height: 23px;">
							<img src="linkedin.png"
								style="width: 23px; height: 23px; position: absolute; left: 309.5px; top: 2567.5px; object-fit: cover;" />
							<div
								style="width: 29.44px; height: 24.84px; position: absolute; left: 306.74px; top: 2567.5px; background: #f48e28;"></div>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 287px; height: 277px;">
				<p
					style="position: absolute; left: 1452px; top: 2354px; font-size: 26px; font-weight: 700; text-align: left; color: #000;">
					Contact Us</p>
				<div style="width: 209px; height: 90px;">
					<p
						style="position: absolute; left: 1452px; top: 2454px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						1234 Country Club Ave</p>
					<p
						style="position: absolute; left: 1452px; top: 2488px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						NC 123456, London, UK</p>
					<p
						style="position: absolute; left: 1452px; top: 2522px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						+0123 456 7891</p>
				</div>
				<div style="width: 287px; height: 58px;">
					<div
						style="width: 287px; height: 58px; position: absolute; left: 1451.5px; top: 2572.5px; border-radius: 32.5px; background: #fff; box-shadow: 0px 0px 15px 0 rgba(0, 0, 0, 0.05);"></div>
					<svg width="42" height="42" viewBox="0 0 42 42" fill="none"
						xmlns="http://www.w3.org/2000/svg"
						style="width: 42px; height: 42px; position: absolute; left: 1687px; top: 2581px;"
						preserveAspectRatio="none">
          <circle cx="21" cy="21" r="21" fill="#F48E28"></circle>
          <path d="M16 31L26 21L16 11" stroke="white" stroke-width="2"
							stroke-linecap="round" stroke-linejoin="round"></path>
        </svg>
					<p
						style="position: absolute; left: 1475px; top: 2594px; font-size: 13px; text-align: left; color: #b6b6b6;">
						Enter your email....</p>
				</div>
			</div>
			<div style="width: 159px; height: 258px;">
				<p
					style="position: absolute; left: 1139px; top: 2354px; font-size: 26px; font-weight: 700; text-align: left; color: #000;">
					User Link</p>
				<div style="width: 159px; height: 158px;">
					<p
						style="position: absolute; left: 1139px; top: 2454px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						About Us</p>
					<p
						style="position: absolute; left: 1139px; top: 2488px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Contact Us</p>
					<p
						style="position: absolute; left: 1139px; top: 2522px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Order Delivery</p>
					<p
						style="position: absolute; left: 1139px; top: 2556px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Payment &#x26; Tex</p>
					<p
						style="position: absolute; left: 1139px; top: 2590px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Terms of Services</p>
				</div>
			</div>
			<div style="width: 276px; height: 190px;">
				<p
					style="position: absolute; left: 709px; top: 2354px; font-size: 26px; font-weight: 700; text-align: left; color: #000;">
					Opening Restaurant</p>
				<div style="width: 260px; height: 90px;">
					<p
						style="position: absolute; left: 717px; top: 2454px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Sat-Wet: 09:00am-10:00PM</p>
					<p
						style="position: absolute; left: 717px; top: 2488px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Thursdayt: 09:00am-11:00PM</p>
					<p
						style="position: absolute; left: 717px; top: 2522px; font-size: 18px; font-weight: 500; text-align: left; color: #b6b6b6;">
						Friday: 09:00am-8:00PM</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>