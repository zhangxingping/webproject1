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
<title>登陆界面</title>
<link href="css/css1.css" rel="stylesheet" type="text/css" />
<link href="css/movie1.css" rel="stylesheet" type="text/css" />
<link href="css/css31.css" rel="stylesheet" type="text/css" />
<link href="css/body1.css" rel="stylesheet" type="text/css" />
<link href="css/panel1.css" rel="stylesheet" type="text/css" />
<link href="css/Text1.css" rel="stylesheet" type="text/css" />
<link href="css/timage1.css" rel="stylesheet" type="text/css" />
<link href="css/Edit1.css" rel="stylesheet" type="text/css" />
<link href="css/button1.css" rel="stylesheet" type="text/css" />
<link href="css/reset1.css" rel="stylesheet" type="text/css" />
<link href="css/config1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script language="javascript" type="text/javascript">
	var code; //在全局 定义验证码   
	function createCode() {
		code = "";
		var codeLength = 4;//验证码的长度   
		var checkCode = document.getElementById("page2_jEdit4");
		var selectChar = new Array(3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd',
				'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'r', 's', 't',
				'u', 'v', 'w', 'x', 'y', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
				'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U',
				'V', 'W', 'X', 'Y', 'Z');//所有候选组成验证码的字符，当然也可以用中文的      
		for ( var i = 0; i < codeLength; i++) {
			var charIndex = Math.floor(Math.random() * 52);
			code += selectChar[charIndex];
		}
		if (checkCode) {
			page2_jEdit4.value = code+" 换一张";
			page2_jEdit4.blur();
		}
	}
	//验证码正确并且用户名或密码不为空的时候才提交表单
	function validate() {
		var uname = document.getElementById("page2_jEdit1").value;//用户名
		var upwd = document.getElementById("page2_jEdit2").value;//密码
		var inputCode = document.getElementById("page2_jEdit3").value;//验证码
		code = code.toUpperCase();
		if(uname.length<=0){
			alert("用户名不能为空！");
		}else if(upwd.length<=0){
			alert("密码为空 重新输入！");
		}else if(inputCode.length <= 0) {
			alert("请输入验证码！");
		} else if (inputCode.toUpperCase() != code) {
			alert("验证码输入错误！");
			createCode();//刷新验证码   
		}else {
			document.getElementById("page2_jHtmlForm1").submit();
		}
	}
</script>
</head>
<body class="body_style1" onLoad="createCode()">

	<div style="margin:auto;width:1024px">
		<div style="position:absolute;width:1024px">
			<div id="page2_jPanel1" class="Panel Panel_Null">
				<div id="page2_jImages1" class="Timage Timage_style1 Timage_auto">
					<img src="images/log_box.PNG" alt="images/log_box.PNG" title="" />
				</div>
				<map name="page2_jImages1_map" id="page2_jImages1_map">
				</map>
				<div id="page2_jHtmlForm1_form">
					<form id="page2_jHtmlForm1" name="page2_jHtmlForm1" method="post"
						action="AdminLoginServlet">
						<input type="text" class="Edit Edit_style1"
							id="page2_jEdit1" name="aname"/> 
						<input type="password" class="Edit Edit_style1" 
						id="page2_jEdit2" name="apwd"/> 
						<input type="text"
							class="Edit Edit_style1" id="page2_jEdit3" /> 
						<input type="text"
							onClick="createCode()" readonly="readonly"
						 class="Edit Edit_style12" id="page2_jEdit4" />
						<div id="page2_jButton1"
							class="vjbutton vjbutton_c_style1 btn_font4 border_radius_8">
							<div class="vjbutton_txtR" onclick="validate()">登录</div>
						</div>
						<div id="page2_jLabel1" class="text">${login_error }</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/Timage.js"></script>
</html>

