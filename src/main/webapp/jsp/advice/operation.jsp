<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<script type="text/javascript">	
	function checkInsert(){
		$.ajax({
			type : 'post',
			url : '${ctx}/diagnosis/checkInsert.do',
			data: $("#insertForm").serialize(),//参数
			success : function(html) {
				alert("提交成功！！！");
				$("#main-content").html(html);
			}
		}); 
	}
</script>
<div style="padding-left: 10px;">
<div class="widget am-cf">
    <div class="widget-head am-cf">
        <div class="widget-title am-fl">手术申请：</div>        
    </div>
    <form class="am-form am-form-horizontal" id="insertForm" method="post">
    	<fieldset>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">手术单：</label>
                <div class="am-u-sm-10">
                    <input style="float: right;"type="text" name="checkList"/>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">手术室：</label>
                <div class="am-u-sm-10">
                    <input style="float: right;"type="text" name="checkList"/>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">手术项目：</label>
                <div class="am-u-sm-10">
                    <input style="float: right;"type="text" name="checkList"/>					
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">
				<label class="am-u-sm-2 am-form-label">是否加急：</label>
				<div class="am-u-sm-10">
			        <input type="radio" name="urgent" value="1"> <label class="am-form-label">加急</label>
			        <input type="radio" name="urgent" value="2"> <label class="am-form-label">不急</label>
			    </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">手术预约时间：</label>
				<div class="am-u-sm-10">
                    <input style="float: right;"type="text" name="checkList"/>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">临床诊断：</label>
                <div class="am-u-sm-10">
                    <textarea class="" rows="4" name="clinicalDiagnosis" placeholder="请输入临床诊断内容"></textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 0px 0px;">					  
				<label class="am-u-sm-2 am-form-label">简要病史：</label>
                <div class="am-u-sm-10">
                    <textarea class="" rows="4" name="briefHistory" placeholder="请输入简要病史内容"></textarea>
                </div>
			</div>
			<div class="am-g" style="margin: 10px 0px 10px 0px;">					  
				<label class="am-u-sm-2 am-form-label">医生说明：</label>
                <div class="am-u-sm-10">
                    <textarea class="" rows="4" name="doctoNote" placeholder="请输入医生说明内容"></textarea>
                </div>
			</div>
      		<div style="text-align: center;">
				<button type="button" class="am-btn am-btn-primary am-radius" onclick="checkInsert()">提交</button>
			</div>
      </fieldset>
	</form>	
</div>
</div>