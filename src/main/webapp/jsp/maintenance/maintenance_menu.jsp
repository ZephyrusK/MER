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
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>住院医嘱套餐 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>出院医嘱套餐 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>住院草药套餐</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>出院草药套餐</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>文本模板</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>检验套餐</a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>检查套餐 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>病案借阅 </a></li>
<li class="sidebar-nav-link" onClick="Method('/main/**.do')"><a href="javascript:;" class="left-link"> 
	<span class="am-icon-angle-right sidebar-nav-link-logo"></span>密码修改</a></li>

