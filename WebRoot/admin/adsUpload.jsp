<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html class="no-js">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>广告位图片上传</title>
		<link rel="stylesheet" href="css/ads_reset.css" media="screen" />
		<link rel="stylesheet" href="css/ads_style.css" media="screen" />
		<link rel="stylesheet" href="css/css3_3d.css" media="screen" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/modernizr.js"></script>

		<script>
			if (!Modernizr.csstransforms) {
				$(document).ready(function() {
					$(".close").text("Back to top");
				});
			}
		</script>
		<style type="text/css">
			
			#ads_clearall_btn {
				width: 90px;
				height: 90px;
				position: absolute;
				margin-left: 700px;
				margin-top: -240px;
			}
		</style>
	</head>

	<body style="margin-top: 60px;">
		<div id="container">
			<ul id="grid" class="group">
				<li>
					<img src="images/a1.jpg" />
				</li>
				<li>
					<img src="images/a2.jpg" />
				</li>
				<li class="end">
					<img src="images/a3.jpg" />
				</li>
				<li>
					<img src="images/a4.jpg" />
				</li>
				<li>
					<img src="images/a5.jpg" />
				</li>
			</ul>
			<div id="ads_clearall_btn">
				<a href="adsUploadPics.jsp">图片上传</a>
			</div>
		</div>
	</body>

</html>