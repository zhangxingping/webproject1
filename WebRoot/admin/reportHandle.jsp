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
<title>举报处理</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/movie.css" rel="stylesheet" type="text/css" />
<link href="css/css3.css" rel="stylesheet" type="text/css" />
<link href="css/jqueryui.css" rel="stylesheet" type="text/css" />
<link href="css/body.css" rel="stylesheet" type="text/css" />
<link href="css/extpanel.css" rel="stylesheet" type="text/css" />
<link href="css/panel.css" rel="stylesheet" type="text/css" />
<link href="css/button.css" rel="stylesheet" type="text/css" />
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
		jQuery('#page13_jDataGrid1_table').jqGrid({
			datatype : 'local',
			multiselect : true,
			viewrecords : true,
			colNames : [ '编号', '标题', '作者', '类型', '被举报数' ],
			colModel : [ {
				name : 'A0',
				index : 'A0',
				width : 92
			}, {
				name : 'A1',
				index : 'A1',
				width : 244
			}, {
				name : 'A2',
				index : 'A2',
				width : 157
			}, {
				name : 'A3',
				index : 'A3',
				width : 163
			}, {
				name : 'A4',
				index : 'A4',
				width : 136
			} ],
			width : 850,
			height : 456,
			rowNum : 20,
			pager : jQuery('#page13_jDataGrid1_pager')
		}).navGrid('#page13_jDataGrid1_pager', {
			edit : false,
			add : false,
			del : false
		});
		$('#page13_jDataGrid1_table').closest('.ui-jqgrid-bdiv').css({
			'overflow-y' : 'auto'
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 1, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 2, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 3, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 4, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 5, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 6, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 7, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 8, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 9, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 10, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 11, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 12, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 13, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 14, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 15, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 16, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 17, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 18, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').jqGrid('addRowData', 19, {
			A0 : '',
			A1 : '',
			A2 : '',
			A3 : '',
			A4 : ''
		});
		$('#page13_jDataGrid1_table').trigger('reloadGrid');
	})
</script>
</head>
<body class="body_style1">
	<div style="margin:auto;width:1024px">
		<div style="position:absolute;width:1024px">
			<div id="page13_jExtPanel1"
				class="Panelbar Panelbar_grain Panelbar_TT14">
				<div class=" PanelBarCaptionbox">
					<div class="PanelBarCaption colorp_grain2 border_grain01">
						<span>举报处理</span>
					</div>
				</div>
				<div class="PanelContent colorp_grain5 ">
					<div id="page13_jPanel1" class="Panel Panel_Null">
						<div id="page13_jButton1"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img src="images/jedit.png"
									width="16" height="16" />
								</span><span class="btniconcum2"><img src="images/jedit.png"
									width="16" height="16" />
								</span><span class="btntxt"></span>处理意见
							</div>
						</div>
						<div id="page13_jButton2"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img
									src="images/jPngButtonOk.png" width="16" height="16" />
								</span><span class="btniconcum2"><img
									src="images/jPngButtonOk.png" width="16" height="16" />
								</span><span class="btntxt"></span>通过
							</div>
						</div>
						<div id="page13_jButton3"
							class="vjbutton vjbutton_c_style2 border_radius_3">
							<div class="vjbutton_txtR">
								<span class="btniconcum1"><img
									src="images/jPngButtonCancel.png" width="16" height="16" />
								</span><span class="btniconcum2"><img
									src="images/jPngButtonCancel.png" width="16" height="16" />
								</span><span class="btntxt"></span>退回
							</div>
						</div>
					</div>
					<div class="TDataGrid" id="page13_jDataGrid1">
						<table id="page13_jDataGrid1_table"></table>
						<div id="page13_jDataGrid1_pager"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
