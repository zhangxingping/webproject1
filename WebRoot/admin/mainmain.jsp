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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主界面</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/movie.css" rel="stylesheet" type="text/css" />
<link href="css/css3.css" rel="stylesheet" type="text/css" />
<link href="css/body.css" rel="stylesheet" type="text/css" />
<link href="css/panel.css" rel="stylesheet" type="text/css" />
<link href="css/Text.css" rel="stylesheet" type="text/css" />
<link href="css/link.css" rel="stylesheet" type="text/css" />
<link href="css/MenuV.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/config.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
</head>
<body class="body_style1">
	<div style="margin:auto;width:1024px">
		<div style="position:absolute;width:1024px">
			<div id="page3_jPanel2" class="Panel Panel_Null">
				<div id="page3_jLabel1" class="text">贵财女生美吧社区 后台管理</div>
				<div class="linkbox link_01" id="page3_jLink1">
					<a href="#" target="">首页</a>
				</div>
				<div class="linkbox link_01" id="page3_jLink2">
					<a href="#" target="">修改密码</a>
				</div>
				<div class="linkbox link_01" id="page3_jLink3">
					<a href="#" target="">重新登录</a>
				</div>
				<div class="linkbox link_01" id="page3_jLink4">
					<a href="#" target="">退出</a>
				</div>
				<div id="page3_jLabel2" class="text">|</div>
				<div id="page3_jLabel3" class="text">|</div>
				<div id="page3_jLabel4" class="text">|</div>
			</div>
			<div id="page3_jPanel3" class="Panel Panel_Null colorp_grain3">
				<div id="page3_jLabel5" class="text">当前登录用户：admin</div>
				<div id="page3_jLabel6" class="text">现在时间：2014-3-18 10:24</div>
				<div id="page3_jLabel7" class="text">星期二</div>
			</div>
			<div id="page3_jIframe1_div">
				<iframe id="page3_jIframe1" name="page3_jIframe1" src="mainpage.jsp"
					frameborder="0" scrolling="auto" width=100%; height=100%></iframe>
			</div>

			<div class="MenuV MenuV_style1" id="page3_jMenuV1">
				<ul>
					<li><a href="mainpage.jsp" target="page3_jIframe1"><span>主页</span>
					</a>
					</li>
					<li><a href="userManager.jsp" target="page3_jIframe1"><span>用户管理</span>
					</a>
					</li>
					<li><a href="contentManager.jsp" target="page3_jIframe1"><span>内容管理</span>
					</a>
					</li>
					<li><a href="contentObserve.jsp" target="page3_jIframe1"><span>内容审核</span>
					</a>
					</li>
					<li><a href="versionControl.jsp" target="page3_jIframe1"><span>新版本上传</span>
					</a>
					</li>
					<li><a href="adsUpload.jsp" target="page3_jIframe1"><span>广告位图片</span>
					</a>
					</li>
					<li class="last"><a href="reportHandle.jsp" target="page3_jIframe1"><span>举报处理</span>
					</a>
					</li>
				</ul>
			</div>

		</div>
	</div>
</body>
<script type="text/javascript" src="js/TmenuV.js"></script>
</html>