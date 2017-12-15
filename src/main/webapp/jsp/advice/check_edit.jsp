<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<script type="text/javascript">	
	function checkInsert(){
		$.ajax({
			type : 'post',
			url : '${ctx}/report/SaveeditCheck.do',
			data: $("#insertForm").serialize(),//参数
			success : function(html) {
				alert("提交成功！！！");
				$("#main-content").html(html);
			}
		}); 
	}
</script>
<style type="text/css">
.am-form input[type=text][readonly], .am-form textarea[readonly] {
	border: 0px;
	border-bottom: #000000 1px solid;
	background-color: #fff; !important
}
</style>
<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);margin-top: -100px;">检验编辑：
	<a href="javascript: void(0)" style="margin-top: -100px;" class="am-close am-close-spin" data-am-modal-close>&times;</a>
</div>
<div class="widget am-cf">
    <form class="am-form am-form-horizontal" id="insertForm" method="post">
    	<fieldset>
    		<input type="hidden" name="checkID" value="${check.checkID}"/>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">检查单：</label>
                <div class="am-u-sm-10">
                    <input style="float: right;"type="text" value="${check.checkList}" readonly/>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">检查室：</label>
                <div class="am-u-sm-10">
                	<input type="text" style="float: right;"class="tpl-form-input" value="${check.checkDepartmentName}" readonly/>                 
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">检查项目：</label>
                <div class="am-u-sm-10">
                	<input type="text" class="tpl-form-input" value="${check.checkItemName}" readonly>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">
				<label class="am-u-sm-2 am-form-label">加急：</label>
				<div class="am-u-sm-10">
					<input type="text" class="tpl-form-input" value="${1 eq check.urgent ? '加 急':'明 晨'}" readonly>
			    </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">临床诊断：</label>
                <div class="am-u-sm-10">
                	 <textarea  rows="4" readonly>${check.clinicalDiagnosis}</textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">简要病史：</label>
                <div class="am-u-sm-10">
                    <textarea  rows="4" readonly>${check.briefHistory}</textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 10px 0px;">					  
				<label class="am-u-sm-2 am-form-label">医生说明：</label>
                <div class="am-u-sm-10">
                    <textarea  rows="4" readonly>${check.doctoNote}</textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 10px 0px;">					  
				<label class="am-u-sm-2 am-form-label">检查所见：</label>
                <div class="am-u-sm-10">
                    <textarea  rows="4" name="checkSee">${check.checkSee}</textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 10px 0px;">					  
				<label class="am-u-sm-2 am-form-label">检查结论：</label>
                <div class="am-u-sm-10">
                    <textarea  rows="4" name="checkConclusion">${check.checkConclusion}</textarea>
                </div>
			</div>
      		<div style="text-align: center;">
				<button type="button" class="am-btn am-btn-primary am-radius" data-am-modal-close onclick="checkInsert()">提交</button>
			</div>
      </fieldset>
	</form>	
</div>