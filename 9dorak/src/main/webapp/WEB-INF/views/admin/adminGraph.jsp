<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
@import
	url("https://cdn.jsdelivr.net/gh/wanteddev/wanted-sans@v1.0.1/packages/wanted-sans/fonts/webfonts/variable/complete/WantedSansVariable.min.css")
	;

body {
	font-family: "Wanted Sans Variable" !important;
}

* {
	font-family: "Wanted Sans Variable";
}

.chart-wrapper {
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 400px;
	width: 700px;
}

.my-chart {
	position: relative;
	left: 11%;
	display: block;
	box-sizing: border-box;
	height: 514px;
	width: 900px;
}

.sold-text {
	top: -1.5rem;
	left: 10%;
	position: relative;
	color: #1B2559;
	font-size: 20px;
	font-style: normal;
	font-weight: 700;
	line-height: 30px;
}

.pie-wrapper {
	display: flex;
	flex-direction: column;
	justify-content: center;
	width: 450px;
	height: 700px;
	border-radius: 16px;
	background: #FFF;
	box-shadow: 0px 8px 32px 0px rgba(51, 38, 174, 0.05);
	margin-top: 3rem;
}

.pie-chart {
	position: relative;
}

.weekly-wrapper {
	display: flex;
	align-items: center;
	border-radius: 20px;
	background: #FFF;
	box-shadow: 0px 8px 32px 0px rgba(0, 0, 0, 0.08);
	width: 880px;
	height: 500px;
}

.under-wrapper {
	position: relative;
	top: 1rem;
	left:10%;
	display: flex;
	flex-direction: row;
	align-items: center;
}

.under-div {
	display: flex;
	flex-direction: column;
}

.under-left {
	padding: 5px;
	gap: 10px;
	display: flex;
	flex-direction: row;
	align-items: center;
}

.price {
	font-weight: 700;
	color: #1C2A53;
	font-size: 14px;
	font-style: normal;
	line-height: 22px; /* 157.143% */
}

.name {
	color: #8E95A9;
	font-size: 14px;
	font-style: normal;
	font-weight: 600;
	line-height: 22px;
}
</style>
</head>
<body>
	<div class="weekly-wrapper">
		<div class="chart-wrapper">
			<div class="sold-text">Weekly Revenue</div>
			<canvas class="my-chart" id="myChart" width="700" height="400"></canvas>
		</div>
	</div>
	<div class="pie-wrapper">
		<div class="sold-text">가장 많이 팔린 상품</div>
		<div>
			<canvas class="pie-chart" id="pie-chart" width="200" , height="200"></canvas>
		</div>
		<div class="under-wrapper">
			<div class="under-div">
				<div class="under-left" >
					<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
						viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#FFBADF" />
</svg>
					<p class="name">김수인</p>
					<p class="price">5000원</p>
					<p class="name">5%</p>
				</div>
				<div class="under-left" >
					<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
						viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#FF766C" />
</svg>
					<p class="name">김수인</p>
					<p class="price">5000원</p>
					<p class="name">25%</p>
				</div>
			</div>

			<div class="under-div">
				<div class="under-left">
					<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
						viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#2F80ED" />
</svg>
					<p class="name">김수인</p>
					<p class="price">5000원</p>
					<p class="name">25%</p>
				</div>
				<div class="under-left">
					<svg xmlns="http://www.w3.org/2000/svg" width="8" height="8"
						viewBox="0 0 8 8" fill="none">
<circle cx="4" cy="4" r="4" fill="#6FACFF" />
</svg>
					<p class="name">김수인</p>
					<p class="price">5000원</p>
					<p class="name">25%</p>
				</div>
			</div>
		</div>

	</div>
	<script>
		const ctx = document.getElementById('myChart');
		Chart.defaults.borderColor = '#F5F7FB';
		Chart.defaults.color = '#8E95A9';
		Chart.defaults.font.family = 'Wanted Sans Variable';
		new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" ],
				datasets : [ {
					label : "주별 매출 금액",
					data : [ 2478, 5267, 734, 784, 433, 433, 433 ],
					backgroundColor : function(context) {
						var chart = context.chart;
						var ctx = context.chart.ctx;
						var gradient = ctx.createLinearGradient(0, 0, 0,
								chart.height);
						gradient.addColorStop(1, '#775FFC');
						gradient.addColorStop(0.5, '#84D9FD');
						gradient.addColorStop(0, '#E6EDF9');
						return gradient;
					},
					borderRadius : 90,
				} ]
			},
			options : {
				maintainAspectRatio : false,
				scales : {
					x : {
						barPercentage : 0.9,
						categoryPercentage : 0.8,
					},
					y : {
						beginAtZero : true,
					},
				},
				legend : {
					display : false,
				},
				title : {
					display : true,
					text : '매출 금액 (millions) in 2050',
					font : {
						family : "Wanted Sans Variable",
					},
				},
				plugins : {
					legend : {
						labels : {
							fontFamily : "Wanted Sans Variable",
						},
					},
				},
			},
		});

		const pie = document.getElementById('pie-chart');
		new Chart(pie, {
			type : 'pie',
			data : {
				labels : [ "차은우", "신민규", "한소희", "강동원" ],
				datasets : [ {
					label : "주문 건수 (millions)",
					backgroundColor : [ "#FFBADF", "#FF766C", "#6FACFF",
							"#74E1FF" ],
					data : [ 6900, 5267, 784, 433 ]
				} ]
			},
			options : {
				title : {
					display : true,
					text : '가장 많이 팔린 상품',
					font : {
						family : "Wanted Sans Variable",
					},
				}
			}
		});
	</script>
</body>
</html>