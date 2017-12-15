<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" scope="page" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${ctx}/assets/css/zTreeStyle/zTreeStyle.css" type="text/css"></link>
<script type="text/javascript" src="${ctx}/assets/js/jquery.ztree.all.js"></script>
<script type="text/javascript">
	reloadjs("assets/js/amazeui.min.js");
	
   $(document).ready(function() {
			tree();
		});

		var setting = {
			//必不可少
			data : {
				simpleData : {
					enable : true
				}
			},
			//单击事件
			callback : {
				onClick : zTreeOnClick
			}
		};

		var zNodes;
		function tree() {
		alert(123);
			$.ajax({
				type : "post",
				url : "${ctx}/report/tree.do",
				dataType : "json",
				success : function(data) {
				alert(data);
					zNodes = data;
					$.fn.zTree.init($("#treeDemo"), setting, zNodes);
				}
			});
		}
		
		function zTreeOnClick(event, treeId, treeNode) {
    alert(treeNode.getParentNode().getParentNode().name + ", " + treeNode.getParentNode().name + ", " + treeNode.name);
	};
</script>

<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">检验报告</div>
		</div>
		<div class="am-u-sm-12 am-u-md-4 am-u-lg-3">
			<ul id="treeDemo" class="ztree"></ul>
		</div>
		<div class="am-u-sm-12 am-u-md-8 am-u-lg-9">
			<c:forEach items="${test}" var="items">
				<div class="am-panel am-panel-secondary">
					<div class="am-panel-hd">${items.applyTime}${items.testName}${items.sampleID}完成${items.reportTime}${test.remark}</div>
					<table class="am-table am-table-bordered am-table-centered">						
						<tr>
							<th>项目名</th>
							<th>结果</th>							
							<th>单位</th>
							<th>参考范围</th>
							<th>备注</th>
						</tr>							
						<c:forEach items="${testdetail}" var="item">
							<c:if test="items.testID eq item.testID">
								<tr>							
									<td>${item.testItemName}</td>
									<td>${item.unit}</td>
									<td>${item.rrs}</td>
									<td>${item.result}</td>
									<td>${item.remark}</td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>
</div>





