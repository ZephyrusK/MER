<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<script type="text/javascript">
	reloadjs('${ctx}/assets/js/app.js');//重新加载js的方法
	
	function Method(url) {//跳转到对应的jsp页面
		openContent(url);
	}
	$(function() { // 二级菜单的刻印
		$(".left-link").on("click", function() {
			$(".left-link").removeClass("active");
			$(this).addClass("active");
		});
	});
</script>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link">  
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>药品常用剂量维护 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>中草药常用剂量 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>诊疗组维护</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>诊疗计划安排</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>快速检索</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>科室套餐</a></li>
