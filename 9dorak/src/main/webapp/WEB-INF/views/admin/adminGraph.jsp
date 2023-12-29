<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<h1>그래프 페이지 수인 작업 중</h1>
	<div>
		<canvas id="myChart" width="200" height="200"></canvas>
	</div>
	<script>
		const ctx = document.getElementById('myChart');

		new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" ],
				datasets : [ {
					label : "Population (millions)",
					backgroundColor : [ "#3e95cd", "#8e5ea2", "#3cba9f",
							"#e8c3b9", "#c45850", "#c45850", "#c45850" ],
					data : [ 2478, 5267, 734, 784, 433, 433, 433 ],
				} ]
			},
			options : {
				legend : {
					display : false
				},
			
				title : {
					display : true,
					text : 'Predicted world population (millions) in 2050'
				}
			}
		});
	</script>
</body>
</html>