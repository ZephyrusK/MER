<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<style type="text/css">
.am-table .tbodychoice>tr>td {
	padding: 0rem;!important;
}
</style>
<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');//重新加载js的方法
	reloadjs('${ctx}/assets/js/amazeui.min.js');//重新加载js的方法
	(function($) {
		$("#select").on("click", function() {// 根据 查询按钮的id属性创建onclick事件
			var name = $("#name").val();
			$.ajax({
				type : 'post',
				url : '${ctx}/main/choice_select.do',
				data : { "name" : name, },
				success : function(html) {
					$("#fromfrom").html(html);
				}
			});
		});		
		$("#choice").on("click", function() {	// 选择病人
			var tableID = document.getElementById('tableID');
			var patientID = null;
			var name=null;
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					patientID = tableID.rows[key].cells[1].innerHTML;
					name = tableID.rows[key].cells[2].innerHTML;	
					$.ajax({
						type : 'post',
						url : '${ctx}/main/choice.do',
						data : { "patientID" : patientID },
						success : function() {
							$("#binren").text("病人:"+name); 
						}
					});
				}
			});			
		});		
	})(jQuery);
</script>


<div class="am-cf" style="background-color: #fff">
<div class="am-modal-hd" style="padding:0px;background-color: rgba(0,180,242,.75);">选择病人
	<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
</div>
<div class="am-modal-bd">
	<form method="post" id="insertForm" class="am-form tpl-form-border-form tpl-form-border-br">
			<div>
				<label style="float: left;">姓名：</label> 
				<input id="name" name="name" type="text" value="${name}"
					style="width:30%;float:left;"class="tpl-form-no-bg tpl-form-input">
				<button type="button" style="float: left;margin-left:10px;" class="am-btn am-btn-primary am-radius" id="select">查询</button>					
				<button type="button" style="float: left;margin-left:10px;" class="am-btn am-btn-primary am-radius" id="choice" data-am-modal-close>选择</button>
			</div>
			<div class="am-scrollable-horizontal" style="margin-top:40px;">
				<table id="tableID"	class="am-table am-table-bordered am-table-centered">
					<tbody class="tbodychoice">
					<tr>
						<th><input type="radio" name="doc-radio-1"></th>
						<th>姓名</th>
						<th>性别</th>
						<th>血型</th>
						<th>籍贯</th>
						<th>民族</th>
						<th>出生日期</th>							
					</tr>
					<c:forEach items="${choice}" var="item">
						<tr>
							<td><input type="radio" name="doc-radio-1"></td>
							<td style="display:none">${item.patientID}</td>
							<td>${item.name}</td>
							<td>
								<c:if test="${item.sex==1}">男</c:if>
								<c:if test="${item.sex==0}">女</c:if>
							
							</td>
							<td>
								<c:if test="${item.blood==1}">A型</c:if>
								<c:if test="${item.blood==2}">B型</c:if>
								<c:if test="${item.blood==3}">AB型</c:if>
								<c:if test="${item.blood==4}">O型</c:if>
							</td>
							<td>${item.origin}</td>
							<td>${item.nation}</td>
							<td><fmt:formatDate value="${item.birthdate}" type="date" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>	
	</form>
</div>
</div>