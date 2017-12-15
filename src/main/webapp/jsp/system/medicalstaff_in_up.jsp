<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page" var="ctx"></c:set>


<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	(function($) {	
		$("#insertSave").on("click", function() {
			$.ajax({
				type : 'post',
				url : '${ctx}/medicalstaff/insertOrUpdate.do',
				data : $('#insertForm').serialize(),
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});
	
	})(jQuery);
</script>


<%--  新增---------医务人员----------修改    --%>

<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);">${title}
	<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
</div>
<div class="am-modal-bd">
	<form method="post" id="insertForm" class="am-form am-form-horizontal">
		<fieldset>
			<input type="hidden" name="medicalStaffID" value="${vo.medicalStaffID}">
			<input type="hidden" name="effectiveNot" value="1">
			<div class="am-panel-bd">
				<div class="am-g">
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">姓名：</div>
							<div class="am-u-sm-8">
								<input type="text" name="name" class="tpl-form-input" value="${vo.name}">
							</div>
						</div>
					</div>
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">性别:</div>
							<div class="am-u-sm-8">
								<select name="sex" id="sex">
									<option>-----请选择-----</option>
									<option value="0" ${0 eq vo.sex ? "selected='selected'":""}>女</option>
									<option value="1" ${1 eq vo.sex ? "selected='selected'":""}>男</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">籍贯:</div>
							<div class="am-u-sm-8">
								<input type="text" name="birth" class="tpl-form-input" value="${vo.birth}">
							</div>
						</div>
					</div>
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">民族：</div>
							<div class="am-u-sm-8">
								<input type="text" name="nationality" class="tpl-form-input" value="${vo.nationality}">
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">身份证：</div>
							<div class="am-u-sm-8">
								<input type="text" name="idcard" class="tpl-form-input" value="${vo.idcard}">
							</div>
						</div>
					</div>
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">出生日期：</div>
							<div class="am-u-sm-8">
								<input type="text" name="birthdate"
									class="tpl-form-no-bg tpl-form-input" data-am-datepicker readonly 
									value="<fmt:formatDate value="${vo.birthdate}" type="date" pattern="yyyy-MM-dd" />">
									
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">电话号码:</div>
							<div class="am-u-sm-8">
								<input type="text" name="phone" class="tpl-form-input" value="${vo.phone}">
							</div>
						</div>
					</div>
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">学历学位：</div>
							<div class="am-u-sm-8">
								<select name="academicID" id="academicID">
									<option value="">-----请选择-----</option>
									<c:forEach items="${academic}" var="item">
										<option value="${item.academicID}" 
										${item.academicID eq vo.academicID ? "selected='selected'":""}>${item.academicName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="am-g">
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">毕业学校:</div>
							<div class="am-u-sm-8">
								<input type="text" name="graduateSchool"class="tpl-form-input" value="${vo.graduateSchool}">
							</div>
						</div>
					</div>
					<div class="am-u-sm-6">
						<div class="am-g">
							<div class="am-u-sm-4">专业：</div>
							<div class="am-u-sm-8">
								<input type="text" name="professional" class="tpl-form-input" value="${vo.professional}">
							</div>
						</div>
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