<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
	(function($){
		$("#medical_Insert").on("click", function() {
			$.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/medical_Insert.do',
				data : $('#PatientForm').serialize(),
				success : function(data){
					alert("病人病历提交成功！！！");
					$("#main-content").html(data);
				}
			});
		});		
	})(jQuery);
	
</script>

<div style="padding-left: 10px;">
<div class="widget am-cf">
    <div class="widget-head am-cf">
        <div class="widget-title am-fl">病历信息：</div>        
    </div>
    <div class="widget-body am-fr">
        <form class="am-form tpl-form-border-form tpl-form-border-br" method="post" id="PatientForm" >
        	<div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">病程类型</label>
                <div class="am-u-sm-9">
                   <select name="courseTypeID" id="courseTypeID">
						<option value="">-----请选择-----</option>
						<c:forEach items="${courseType}" var="item">
							<option value="${item.courseTypeID}" >${item.courseTypeName}</option>
						</c:forEach>
					</select>                  
                </div>
            </div>
            <br/>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">主诉</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" name="ZhuSu" placeholder="请输入主诉文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">现病史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" name="XianBingShi" placeholder="请输入现病史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">既往史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" name="JiWangShi" placeholder="请输入既往史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">个人史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" name="GeRenShi" placeholder="请输入个人史文字">                   
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-name" class="am-u-sm-3 am-form-label">家族史</label>
                <div class="am-u-sm-9">
                    <input type="text" class="tpl-form-input" id="user-name" name="JiaZuShi" placeholder="请输入家族史文字">                   
                </div>
            </div>
             <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">体格检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="4" id="user-intro" name="TiGeJianCha" placeholder="请输入体格检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">专科检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="4" id="user-intro" name="ZhuanKeJianCha" placeholder="请输入专科检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-intro" class="am-u-sm-3 am-form-label">辅助检查</label>
                <div class="am-u-sm-9">
                    <textarea class="" rows="4" id="user-intro" name="FuZhuJianCha" placeholder="请输入辅助检查内容"></textarea>
                </div>
            </div>
            <div class="am-form-group">
                <div class="am-u-sm-9 am-u-sm-push-3">
                    <button id="medical_Insert" type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                </div>
            </div>
          </form>
        </div>
</div>
</div>
