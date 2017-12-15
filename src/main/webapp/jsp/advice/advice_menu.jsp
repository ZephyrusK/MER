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
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 病人信息
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/advice_base.do')"><a href="javascript:;" class="left-link">  
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 基本信息 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/advice_allergy.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 过敏信息 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/advice_disease.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	既往病程 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/patientInfo/advice_health.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	健康报告 </a></li>
	</ul>
</li>
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 诊断信息
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_medical.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 病      历 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_diagnosis.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 诊      断 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_advice.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 医      嘱 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_test_apply.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检验申请 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_check_apply.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span>	检查申请 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/diagnosis/advice_operation.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 手术资料 </a></li>
	</ul>
</li>	
<li class="sidebar-nav-link">
	<a href="javascript:;"	class="sidebar-nav-sub-title"> 
		<i class="sidebar-nav-link-logo"></i> 报告信息
		 <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
	</a>
	<ul class="sidebar-nav sidebar-nav-sub">
		<li class="sidebar-nav-link" onClick="Method('/report/advice_test.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检验单 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/report/advice_check.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检查单 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/report/advice_test_report.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检验报告 </a></li>
		<li class="sidebar-nav-link" onClick="Method('/report/advice_check_report.do')"><a href="javascript:;" class="left-link"> 
			<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 检查报告 </a></li>
	</ul>
</li>	