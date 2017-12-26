<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<script type="text/javascript">
	reloadjs('${ctx}/assets/js/app.js');//重新加载js的方法
	
	function Method(url) {//跳转到对应的jsp页面
		openContent(url);
	}
	$(function() {// 二级菜单的刻印
		$(".left-link").on("click", function() {
			$(".left-link").removeClass("active");
			$(this).addClass("active");
		});
	});
</script>	
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 入院资料
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link"  onClick="Method('/patientInfo/patientmedical_base.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 基本信息 </a></li>
		<li class="sidebar-nav-link"  onClick="Method('/patientInfo/**')"><a href="javascript:;"  class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	入院记录 </a></li>
		<li class="sidebar-nav-link"  onClick="Method('/patientInfo/patientmedical_disease.do')"><a href="javascript:;"  class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	既往病历 </a></li>
	</ul>
</li>
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 住院资料
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检查情况 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	会诊情况 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>手术情况记录</a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>住院记录 </a></li>
	</ul>
</li>
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 出院资料
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 出院检查 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	出院药房 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/**')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 出院记录 </a></li>
		
	</ul>
</li>

