<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	$('#testdata').DataTable({

	});
	
</script>


<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">检验报告单</div>
		</div>
		<div class="am-g" style="margin: 5px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">附件：检验报告单.jpg</label> 	
		
		
		</div>
		<button type="button" id="UpLoading" class="am-btn am-btn-primary am-radius">上传</button>
		<button type="button" id="DownLoading" class="am-btn am-btn-primary am-radius" 	>下载</button>
		<button type="button" id="Print" class="am-btn am-btn-primary am-radius"">打印</button>
		<button type="button" id="SeeOnline" class="am-btn am-btn-primary am-radius"">在线浏览</button>
	</div>
</div>





