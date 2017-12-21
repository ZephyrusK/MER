<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	(function($) {
		$("#select").on("click", function() {// 根据 查询按钮的id属性创建onclick事件
			var patientName = $("#patientName").val();
			var applyTime = $("#applyTime").val();
			$.ajax({
				type : 'post',
				url : '${ctx}/report/selectTest.do',
				data : { "name" : patientName, "applyTime" : applyTime},
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});
		
		$("#edit").on("click", function() {// 根据 修改按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					testID = tableID.rows[key+1].cells[1].innerHTML;
					openFrom('/report/toeditTest.do?testID='+testID);
				}
			});
		});		
	})(jQuery);
	function cancel(){
		var msg = "您真的确定要删除吗？\n\n请确认！";
		if (confirm(msg)==true){
			var tableID = document.getElementById('tableID');
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					testID = tableID.rows[key+1].cells[1].innerHTML;
					$.ajax({
						type : 'post',
						url : '${ctx}/report/cancle.do',
						data : { "testID" : testID},
						success : function(html) {
							$("#main-content").html(html);
						}
					});
				}
			});
		}else{
		
		} 
			
	}	
</script>
<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">检验单：</div>
		</div>
		<form class="am-form am-form-horizontal">
			<fieldset>
			<div style="margin-bottom: 10px;">
					<label style="float: left;">病人姓名：</label> 
					<input id="patientName" name="patientName" type="text" value="${patientName}"
						style="width:20%;float:left;margin-right:10px;"class="tpl-form-no-bg tpl-form-input">
					<label style="float: left;">申请日期：</label> 
					<input type="text" name="applyTime" id="applyTime" class="tpl-form-no-bg tpl-form-input"
						style="width:20%;float:left;margin-right:10px;" data-am-datepicker readonly >
					<button type="button" id="select" class="am-btn am-btn-primary am-radius">查询</button>
					<button type="button" class="am-btn am-btn-primary am-radius" id="edit"
					    data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 960, height: 400}">编辑</button>					
					<button type="button" class="am-btn am-btn-primary am-radius" onclick="cancel()">作废</button>					
				</div>
				<div class="am-scrollable-horizontal">
					<table class="am-table am-table-bordered am-table-centered"	id="tableID">						
						<tr>
							<th>选择</th>
							<th>病人姓名</th>
							<th>检验名</th>
							<th>样本</th>
							<th>申请时间</th>
							<th>备注</th>
							<th>加急否</th>
						</tr>
						<tr>
							<td><input type="Checkbox" id="Choose_one" name="Choose-name"/></td>
							<td><input type='text' class="PatientName" name="PatientName"/></td>
							<td><input type='text' class="CheckName" name="CheckName"/></td>
							<td><input type='text' class="Example" name="Example"/></td>
							
							<td><input type="text" id="applyTime" name="applyTime" class="tpl-form-no-bg tpl-form-input" 						
						style="width:100%;float:left;margin-right:10px;" data-am-datepicker readonly></td>	
						
							<td><input type='text' class="Remark" name="Remark"/></td>								
							<td><input type="radio" name="urgent" value="1"> <label class="am-form-label">加急</label>
			        <input type="radio" name="urgent" value="2"> <label class="am-form-label">明晨</label>  </td>
						</tr>
						<c:forEach items="${test}" var="item">
							<tr>
								<td><input type="radio" name="radio"/></td>
								<td style="display:none">${item.testID}</td>
								<td>${item.patientName}</td>
								<td>${item.testName}</td>
								<td>${item.sampleName}</td>
								<td>${item.applyTime}</td>
								<td>${item.remark}</td>
								<td>${"1" == item.urgent ? "加急":"明晨"}</td>						
							</tr>
						</c:forEach>
					</table>
				</div>
			</fieldset>
		</form>
	</div>
</div>