<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<style type="text/css">
.am-table .ttbody>tr>td {
	border-top: 0px solid #ddd; ! important;
	vertical-align: inherit; ! important;
	text-align: center;
}

.am-table .ttbody>tr>td input[type=text] {
	border: 0px;
	border-bottom: #000000 1px solid;
	background-color: #fff;
}
</style>

<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	function testInsert(){		
		$.ajax({
				type : 'post',
				url : '${ctx}/report/SaveeditTest.do',
				data: $("#insertForm").serialize(),//参数
				success : function(html) {
					alert("提交成功！！！");
					$("#main-content").html(html);
				}
		}); 
	}
</script>
<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);margin-top: -100px;">检验编辑：
	<a href="javascript: void(0)" style="margin-top: -100px;" class="am-close am-close-spin" data-am-modal-close>&times;</a>
</div>
<div class="am-modal-bd" style="padding-left: 0px;padding-right: 0px;">
	<div class="widget am-cf">
	<form class="am-form am-form-horizontal" id="insertForm" method="post">
		<fieldset>				
			<div class="am-panel am-panel-secondary">
				<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">检验单：</div>	
				<input type="hidden" class="tpl-form-input" name="testID" value="${test.testID}"/>				
				<table class="am-table">
					<tbody class="ttbody">							
						<tr>
							<td>检验名：</td>
							<td><input type="text" class="tpl-form-input" value="${test.testName}" readonly></td>
							<td>样本：</td>
							<td><input type="text" class="tpl-form-input" value="${test.sampleName}" readonly></td>						
						</tr>
						<tr>
							<td>申请日期：</td>
							<td><input type="text" class="tpl-form-input" value="${test.applyTime}" readonly></td>
							<td>备注：</td>
							<td><input type="text" class="tpl-form-input" value="${test.remark}" readonly></td>
						</tr>
						<tr>
							<td>加急否：</td>
							<td>
								<input type="text" class="tpl-form-input" value="${1 eq test.urgent ? '加 急':'明 晨'}" readonly>　
							</td>
						</tr>					
					</tbody>
				</table>
			</div>
			<div class="am-panel am-panel-secondary">
				<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">检验项目：</div>
				<table class="am-table am-table-bordered am-table-centered"style="margin-top: 10px; margin-bottom: 10px;">						
					<tr>
						<th>项目名称</th>								
						<th>单位</th>
						<th>参考范围</th>
						<th>结果</th>
						<th>备注</th>
					</tr>
					<c:forEach items="${testdetail}" var="item">
						<tr>
							<td style="display:none"><input type="hidden" name="testDetailID" value="${item.testDetailID}"></td>
							<td>${item.testItemName}</td>
							<td>${item.unit}</td>
							<td>${item.rrs}</td>
							<td><input type="text" class="result" name="result"></td>
							<td>${item.remark}</td>
						</tr>
					</c:forEach>
				</table>					
			</div>
			<div style="text-align: center;">
				<button type="button" class="am-btn am-btn-warning am-radius" 
					data-am-modal-close onclick="testInsert()">提交</button>
				<button type="button" class="am-btn am-btn-primary am-radius" 
					data-am-modal-close>退出</button>
			</div>
		</fieldset>
	</form>
	</div>
</div>