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
<title>内容审核</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/movie.css" rel="stylesheet" type="text/css" />
<link href="css/css3.css" rel="stylesheet" type="text/css" />
<link href="css/jqueryui.css" rel="stylesheet" type="text/css" />
<link href="css/body.css" rel="stylesheet" type="text/css" />
<link href="css/extpanel.css" rel="stylesheet" type="text/css" />
<link href="css/panel.css" rel="stylesheet" type="text/css" />
<link href="css/button.css" rel="stylesheet" type="text/css" />
<link href="css/timage.css" rel="stylesheet" type="text/css" />
<link href="css/Text.css" rel="stylesheet" type="text/css" />
<link href="css/Edit.css" rel="stylesheet" type="text/css" />
<link href="css/cum.css" rel="stylesheet" type="text/css" />
<link href="css/ui.jqgrid.css" rel="stylesheet" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/config.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/grid.locale-cn.js"></script>
<script type="text/javascript" src="js/jquery.jqGrid.min.js"></script>
<script>
	jQuery().ready(function() {
		jQuery('#page15_jDataGrid1_table').jqGrid({
			datatype : 'local',
			multiselect : true,
			viewrecords : true,
			colNames : [ '编号', '标题', '作者', '发布时间', '审核状态' ],
			colModel : [ {
				name : 'A0',
				index : 'A0',
				width : 87
			}, {
				name : 'A1',
				index : 'A1',
				width : 231
			}, {
				name : 'A2',
				index : 'A2',
				width : 188
			}, {
				name : 'A3',
				index : 'A3',
				width : 166
			}, {
				name : 'A4',
				index : 'A4',
				width : 153
			} ],
			width : 850,
			height : 445,
			rowNum : 20,
			pager : jQuery('#page15_jDataGrid1_pager')
		}).navGrid('#page15_jDataGrid1_pager', {
			edit : false,
			add : false,
			del : false
		});
		$('#page15_jDataGrid1_table').closest('.ui-jqgrid-bdiv').css({
			'overflow-y' : 'auto'
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 1, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 2, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 3, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 4, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 5, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 6, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 7, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 8, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 9, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 10, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 11, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 12, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 13, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 14, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 15, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 16, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 17, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 18, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').jqGrid('addRowData', 19, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page15_jDataGrid1_table').trigger('reloadGrid');
	})
</script>
</head>
<body class="body_style1">
	<div style="margin:auto;width:1024px">
		<div style="position:absolute;width:1024px">
			<div id="page15_jExtPanel1"
				class="Panelbar Panelbar_grain Panelbar_TT14">
				<div class=" PanelBarCaptionbox">
					<div class="PanelBarCaption colorp_grain2 border_grain01">
						<span>内容审核</span>
					</div>
				</div>
				<div class="PanelContent colorp_grain5 ">
					<div id="page15_jPanel1" class="Panel Panel_Null">
						<div id="page15_jButton1"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img src="images/jedit.png"
									width="16" height="16" /> </span><span class="btniconcum2"><img
									src="images/jedit.png" width="16" height="16" /> </span><span
									class="btntxt"></span>审核意见
							</div>
						</div>
						<div id="page15_jButton2"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img src="images/jaccept.png"
									width="16" height="16" /> </span><span class="btniconcum2"><img
									src="images/jaccept.png" width="16" height="16" /> </span><span
									class="btntxt"></span>通过
							</div>
						</div>
						<div id="page15_jButton3"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img
									src="images/jPngButtonCancel.png" width="16" height="16" /> </span><span
									class="btniconcum2"><img
									src="images/jPngButtonCancel.png" width="16" height="16" /> </span><span
									class="btntxt"></span>删除
							</div>
						</div>
						<div id="page15_jImages1" class="Timage Timage_style1 Timage_auto">
							<img src="images/jToolsSeparator.jpg"
								alt="images/jToolsSeparator.jpg" title="" />
						</div>
						<map name="page15_jImages1_map" id="page15_jImages1_map">
						</map>
						<div id="page15_jLabel1" class="text Text_th">关键字：</div>
						<input type="text" class="Edit Edit_style1" value=""
							id="page15_jEdit1" />
						<div id="page15_jButton5"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img src="images/jzoom.png"
									width="16" height="16" /> </span><span class="btniconcum2"><img
									src="images/jzoom.png" width="16" height="16" /> </span><span
									class="btntxt"></span>查找
							</div>
						</div>
					</div>
					<div class="TDataGrid" id="page15_jDataGrid1">
						<table id="page15_jDataGrid1_table"></table>
						<div id="page15_jDataGrid1_pager"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>


