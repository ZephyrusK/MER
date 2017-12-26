<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>iHealth</title>
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${ctx}/assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="${ctx}/assets/css/select.dataTables.min.css" />
<link rel="stylesheet" href="${ctx}/assets/css/app.css">
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/jquery.messager.js"></script>
<script type="text/javascript">
	function reloadjs(path) {//重新加载JS文件
		var sc = document.createElement("script");
		sc.setAttribute("type", "text/javascript");
		sc.setAttribute("src", path);
		document.body.appendChild(sc);
	}
	function openContent(url) {//打开中间内容
		$.ajax({
			type : 'get',
			url : '${ctx}' + url,
			success : function(html) {
				$("#main-content").html(html);
			}
		});
	}
	function openLeftMenu(url) {//打开左侧菜单
		$.ajax({
			type : 'get',
			url : '${ctx}' + url,
			success : function(html) {
				$("#left-menu").html(html);
			}
		});
	}
	function openFrom(url) {//打开隐藏的窗体
		$.ajax({		
			type : 'get',
			url : '${ctx}' + url,
			success : function(html) {
				$("#fromfrom").html(html);
			}
		});
	}
	$(function() {	//头部菜单的刻印
		$(".top-menu").on("click", function() {
			$(this).siblings().removeClass("am-active");
			$(this).addClass("am-active");
		});

	});
	$(document).ready(function() {
		$.extend({
			loadDataTable : function(data) {//加载DataTbales
				var checkbox = {//
					"sClass" : "text-center",
					"data" : data.mainid,
					"bSortable" : false
				};
				var mainid = {
					data : data.mainid,
					"visible" : false,
					"searchable" : false,
				};
				var column = JSON.stringify(data.data);
				column = column.substring(1,
						column.Length);
				data.data = "["
						+ JSON.stringify(checkbox)
						+ "," + JSON.stringify(mainid)
						+ "," + column;
				var obj = eval("(" + data.data + ")");
				obj[0].render = function(data, type,
						full, meta) {
					return '<input type="checkbox"  class="checkchild"  value="'+data+'" />';
				};
				$(data.tableid).DataTable({
					select : true,
					"dom" : data.dom,//lrtip
					ajax : {
						url : data.url,
						dataSrc : ''
					},
					columns : obj,
				});
			},
		});
	});
</script>
</head>
<body data-type="widgets">
	<script src="${ctx}/assets/js/theme.js"></script>	
	<div class="am-g tpl-g">
		<%-- 头部 --%>
		<header class="am-topbar am-topbar-inverse admin-header">
			<!-- logo -->
			<div class="am-fl tpl-header-logo">
				<h1 class="">
					<a href="#" style="color:#666">iHealth EMR System</a>
				</h1>
			</div>
			<%-- 右侧内容 --%>
			<div class="tpl-header-fluid">
				<button	class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
					data-am-collapse="{target: '#topbar-collapse'}">
					<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
				</button>
				<%-- 其它功能 --%>
				<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
					<ul	class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
						<li class="top-menu"  onclick="openLeftMenu('/main/patient_menu.do');">
							<a class="am-dropdown-toggle tpl-header-list-link"href="javascript:;" style="color:#969696">病人病历</a>
						</li>
						<li class="top-menu" onclick="openLeftMenu('/main/inpatient_menu.do')">						
							<a href="#" style="color:#969696">留院观察</a>
						</li>
						<li class="top-menu" onclick="openLeftMenu('/main/doctor_menu.do')">
							<a href="javascript:;"style="color:#969696">医生信息</a>
						</li>
						<li class="top-menu" onclick="openLeftMenu('/main/download_menu.do')">						
							<a href="javascript:;"style="color:#969696">资料下载</a>
						</li>
						<li class="top-menu" onclick="openLeftMenu('/main/system_menu.do');">
							<a href="javascript:;" style="color:#969696">信息维护</a>
						</li>
						<!-- 退出 -->
						<li class="top-menu" class="am-text-sm">
							<a href="${ctx}/" style="color:#969696"> 
							<span class="am-icon-sign-out"></span> 退出 </a>
						</li>
					</ul>
				</div>
			</div>
		</header>
		<%-- 风格切换 --%>
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle am-icon-cog"></div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
				<div class="tpl-skiner-content-bar">
					<span class="skiner-color skiner-white" data-color="theme-white"></span>
					<span class="skiner-color skiner-black" data-color="theme-black"></span>
				</div>
			</div>
		</div>
		<%-- 侧边导航栏 --%>
		<div class="left-sidebar">
			<!-- 用户信息 -->
			<div class="tpl-sidebar-user-panel">
				<div class="tpl-user-panel-slide-toggleable">					
					<span class="user-panel-logged-in-text" style="color: #969696;">
					<i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>医生:${doctorName}</span> 
					<div id="binren" data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 770, height: 550}" 
							onclick="openFrom('/main/choice_patient.do')">
					<span class="am-icon-pencil"></span> 病人:</div>
				</div>
			</div>
			<%-- 菜单 --%>
			<ul class="sidebar-nav" id="left-menu">

			</ul>
		</div>
		<%-- 内容区域 --%>
		<div class="tpl-content-wrapper" id="main-content">
		
		</div>
	</div>
	<%--弹窗区域--%>
	<div class="am-modal am-modal-no-btn" tabindex="-1" id="ffrom"	style="background-color: rgba(105,105,105,.6)">
		<div class="am-modal-dialog" style="margin-top: 50px;margin-left: 220px;" id="fromfrom">
			
			
				
		</div>
	</div>
	<script type="text/javascript" src="${ctx}/assets/js/app.js"></script>
	<script type="text/javascript" src="${ctx}/assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="${ctx}/assets/js/amazeui.datatables.min.js"></script>
	<script type="text/javascript" src="${ctx}/assets/js/dataTables.select.min.js"></script>
	<script type="text/javascript" src="${ctx}/assets/js/dataTables.responsive.min.js"></script>
	
</body>

</html>