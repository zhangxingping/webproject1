<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/default.css">
		<style type="text/css">
			.chart_left {
				width: 60%;
				margin: 77px 0px 30px 30px;
			}
			.chart_middle{
				position: relative;
				margin-left: 540px;
				margin-top: -400px;
			}
			.pie_right {
				position: absolute;
				margin-left: 650px;
				margin-top: 70px;
			}
			#show_right{
				margin-left: 82px;
				margin-top: -300px;
			}
			body{
				width: 850px;
			}
		</style>
		<script src="mainpage_js/Chart.min.js"></script>
		<script>
			var randomScalingFactor = function() {
				return Math.round(Math.random() * 100)
			};
			var barChartData = {
				labels: ["1月", "2月", "3月", "4月", "5月", "6月",
					"7月", "8月", "9月", "10月", "11月", "12月"
				],
				datasets: [{
					fillColor: "rgba(220,220,220,0.5)",
					strokeColor: "rgba(220,220,220,0.8)",
					highlightFill: "rgba(220,220,220,0.75)",
					highlightStroke: "rgba(220,220,220,1)",
					data: [randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor()
					]
				}, {
					fillColor: "rgba(151,187,205,0.5)",
					strokeColor: "rgba(151,187,205,0.8)",
					highlightFill: "rgba(151,187,205,0.75)",
					highlightStroke: "rgba(151,187,205,1)",
					data: [randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor(),
						randomScalingFactor(), randomScalingFactor()
					]
				}]
			}
			var pieData = [{
				value: 300,
				color: "#F7464A",
				highlight: "#FF5A5E",
				label: "Red"
			}, {
				value: 50,
				color: "#46BFBD",
				highlight: "#5AD3D1",
				label: "Green"
			}, {
				value: 100,
				color: "#FDB45C",
				highlight: "#FFC870",
				label: "Yellow"
			}, {
				value: 40,
				color: "#949FB1",
				highlight: "#A8B3C5",
				label: "Grey"
			}, {
				value: 120,
				color: "#4D5360",
				highlight: "#616774",
				label: "Dark Grey"
			}];
			window.onload = function() {
				//设置柱形图表的数据
				var ctx = document.getElementById("canvas").getContext("2d");
				window.myBar = new Chart(ctx).Bar(barChartData, {
					responsive: true
				});
				//设置扇形图表的数据
				var ctx1 = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx1).Pie(pieData);
			}
		</script>
	</head>

	<body>
		<div id="left">
			<div class="chart_left">
				<center><p id="show_user">用户概况（新用户/总用户）</p></center>
				<canvas id="canvas" height="200" width="300"></canvas>
			</div>
		</div>
		<div id="middle" class="chart_middle">
			<img src="images/mainpage.png" />
		</div>
		<div id="right">
			<div id="canvas-holder" class="pie_right">
				<p id="show_right">帖子分布</p>
				<canvas id="chart-area" width="180" height="180" />
			</div>
		</div>
	</body>

</html>
