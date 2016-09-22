<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>由html5实现的文件上传预览功能--zyUpload</title>
		<!-- 引用控制层插件样式 -->
		<link rel="stylesheet" href="control/css/zyUpload.css" type="text/css">
		<script src="control/js/jquery-1.7.2.js"></script>
		<!-- 引用核心层插件 -->
		<script src="core/zyFile.js"></script>
		<!-- 引用控制层插件 -->
		<script src="control/js/zyUpload.js"></script>
		<!-- 引用初始化JS -->
		<script src="core/fileupload.js"></script>
	</head>

	<body>
		<h1 style="text-align:center;">zyUpload示例</h1>
		<div id="demo" class="demo">
			<a href="adsUpload.jsp">查看现有图片</a>
		</div>

	</body>

</html>