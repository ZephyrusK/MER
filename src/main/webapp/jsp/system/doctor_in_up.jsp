<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page" var="ctx"></c:set>


<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	(function($) {	
		$("#insertSave").on("click", function() {
			var name= $("#medicalStaffID").find("option:selected").text();
			$.ajax({
				type : 'post',
				url : '${ctx}/doctor/insertOrUpdate.do',
				data : $('#insertForm').serialize() + "&name="+name,
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});
	
	})(jQuery);
</script>

<%--  新增---------用户维护----------修改    --%>
<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);">${tibiao}
	<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
</div>
<div class="am-modal-bd">
	<form method="post" id="insertForm" class="am-form am-form-horizontal">
		<fieldset>
			<input type="hidden" name="doctorID" value="${vo.doctorID}">
			<input type="hidden" name="effectiveNot" value="1">
			<div class="am-panel-bd">					
				<div class="am-g">
					<div class="am-u-sm-4">姓名:</div>
					<div class="am-u-sm-8">
						<select name="medicalStaffID" id="medicalStaffID">
							<option value="">-----请选择-----</option>
							<c:forEach items="${medicalStaff}" var="item">
								<option value="${item.medicalStaffID}" 
								${item.medicalStaffID eq vo.medicalStaffID ? "selected='selected'":""}>${item.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-4">密码:</div>
					<div class="am-u-sm-8">
						<input type="password" name="password" class="tpl-form-input" value="${vo.password}">
					</div>
				</div>				
				<div class="am-g">
					<div class="am-u-sm-4">职称：</div>
					<div class="am-u-sm-8">
						<select name="titleID" id="titleID">
							<option value="">-----请选择-----</option>
							<c:forEach items="${title}" var="item">
								<option value="${item.titleID}" 
								${item.titleID eq vo.titleID ? "selected='selected'":""}>${item.titleName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-4">科室：</div>
					<div class="am-u-sm-8">
						<select name="departmentID" id="departmentID">
							<option value="">-----请选择-----</option>
							<c:forEach items="${department}" var="item">
								<option value="${item.departmentID}" 
								${item.departmentID eq vo.departmentID ? "selected='selected'":""}>${item.departmentName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-4">诊疗组：</div>
					<div class="am-u-sm-8">
						<select name="treatmentGroupID" id="treatmentGroupID">
							<option value="">-----请选择-----</option>
							<c:forEach items="${treatmentGroup}" var="item">
								<option value="${item.treatmentGroupID}" 
								${item.treatmentGroupID eq vo.treatmentGroupID ? "selected='selected'":""}>${item.groupName}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div style="text-align: center;">
				<button type="button" id="insertSave"
					class="am-btn am-btn-primary am-radius" data-am-modal-close>保存</button>
				<button type="button" class="am-btn am-btn-primary am-radius" data-am-modal-close>退出</button>
			</div>
		</fieldset>
	</form>
</div>