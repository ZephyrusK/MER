<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<style type="text/css">
.am-g {
	margin-bottom: 10px;
}
.am-table>tbody>tr>td {
	padding: 0rem;!important;
}
</style>
<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');//重新加载js的方法
	reloadjs('${ctx}/assets/js/amazeui.min.js');//重新加载js的方法
	(function($) {
		$("#select").on("click", function() {// 根据 查询按钮的id属性创建onclick事件
			var titleID = $("#titleID").val();
			var departmentID=$("#departmentID").val();
			$.ajax({
				type : 'post',
				url : '${ctx}/doctor/select.do',
				data : { "titleID" : titleID, "departmentID" : departmentID},
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});
		
		$("#updateById").on("click", function() {// 根据 修改按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			var doctorID = null;		
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					doctorID = tableID.rows[key].cells[1].innerHTML;
					openFrom('/doctor/toaddupdate.do?doctorID='+doctorID);					
				}
			});
		});		
		$("#deteleById").on("click", function() {// 根据 删除按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			var doctorID = null;
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					doctorID = tableID.rows[key].cells[1].innerHTML;	
					$.ajax({
						type : 'post',
						url : '${ctx}/doctor/delete.do',
						data : { "doctorID" : doctorID, },
						success : function(html) {
							$("#main-content").html(html);
						}
					});
				}
			});
		});
	})(jQuery);
</script>

<div style="padding-left: 10px;">
	<div class="am-cf" style="background-color: #fff">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">用户维护：</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-form tpl-form-border-br">
				<div style="margin-bottom: 10px;">
					<label style="float: left;">职称：</label> 
						<select name="titleID" id="titleID" style="width: 15%;float: left;margin-right: 10px;">
							<option value="0">-----请选择-----</option>
							<c:forEach items="${title}" var="item">
								<option value="${item.titleID}" 
								${item.titleID eq titleID ? "selected='selected'":""}>${item.titleName}</option>
							</c:forEach>
						</select>
					<label style="float: left;">科室：</label> 
						<select name="departmentID" id="departmentID" style="width: 15%;float: left;margin-right: 10px;">
							<option value="0">-----请选择-----</option>
							<c:forEach items="${department}" var="item">
								<option value="${item.departmentID}" 
								${item.departmentID eq departmentID ? "selected='selected'":""}>${item.departmentName}</option>
							</c:forEach>
						</select>
					<button type="button" id="select" class="am-btn am-btn-primary am-radius">查询</button>
					<button type="button" class="am-btn am-btn-primary am-radius" onclick="openFrom('/doctor/toaddupdate.do?doctorID=-1')"
						data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 500, height: 390}">新增</button>
					<button type="button" class="am-btn am-btn-primary am-radius"	id="updateById"
						data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 500, height: 390}">修改</button>
					<button type="button" class="am-btn am-btn-primary am-radius" id="deteleById">删除</button>
				</div>
				<div class="am-scrollable-horizontal">
					<table id="tableID"
						class="am-table am-table-bordered am-table-centered">
						<tr>
							<th><input type="radio" name="doc-radio-1"></th>
							<th>姓名</th>
							<th>职称</th>
							<th>科室</th>
							<th>诊疗组</th>
						</tr>
						<c:forEach items="${doctor}" var="item">
							<tr>
								<td><input type="radio" name="doc-radio-1"></td>
								<td style="display:none">${item.doctorID}</td>
								<td>${item.name}</td>
								<td>${item.titleName}</td>
								<td>${item.departmentName}</td>
								<td>${item.groupName}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>