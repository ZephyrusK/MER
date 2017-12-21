<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>
<style type="text/css">
.am-g {	margin-bottom: 10px;}
.am-table>tbody>tr>td {
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
				url : '${ctx}/patient/select.do',
				data : { "name" : name, },
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});		
		$("#detaileById").on("click", function() {// 根据 详细按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			var patientID = null;
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					patientID = tableID.rows[key].cells[1].innerHTML;	
					openContent("/patient/todetaile.do?patientID="+patientID);
				}
			});
			
		});		
	})(jQuery);
</script>

<div style="padding-left: 10px;">
	<div class="am-cf" style="background-color: #fff">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">病人信息维护：</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-form tpl-form-border-br">
				<div style="margin-bottom: 10px;">
					<label style="float: left;">姓名：</label> 
					<input id="name" name="name" type="text" value="${name}"
						style="width:30%;float:left;margin-right:10px;"class="tpl-form-no-bg tpl-form-input">
					<button type="button" id="select" class="am-btn am-btn-primary am-radius">查询</button>
					<button type="button" class="am-btn am-btn-primary am-radius" onclick="openFrom('/patient/alltoaddupdate.do?patientID=-1')"
					    data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 1070, height: 1000}">新增</button>
					<button type="button" class="am-btn am-btn-primary am-radius"	id="detaileById"	>详细</button>
				</div>
				<div class="am-scrollable-horizontal">
					<table id="tableID"
						class="am-table am-table-bordered am-table-centered">
						<tr>
							<th><input type="radio" name="doc-radio-1"></th>
							<th>姓名</th>
							<th>性别</th>
							<th>血型</th>
							<th>籍贯</th>
							<th>民族</th>
							<th>出生日期</th>
							<th>身份证</th>
							<th>文化程度</th>
							<th>婚姻状况</th>
						</tr>
						<c:forEach items="${basicdata}" var="item">
							<tr>
								<td><input type="radio" name="doc-radio-1"></td>
								<td style="display:none">${item.patientID}</td>
								<td>${item.name}</td>
								<td>${"1" == item.sex ? "男":"女"}</td>
								<td>
									<c:if test="${item.blood==1}">A型</c:if>
									<c:if test="${item.blood==2}">B型</c:if>
									<c:if test="${item.blood==3}">AB型</c:if>
									<c:if test="${item.blood==4}">O型</c:if>
								</td>
								<td>${item.origin}</td>
								<td>${item.birthplace}</td>
								<td><fmt:formatDate value="${item.birthdate}" type="date" pattern="yyyy-MM-dd" /></td>
								<td>${item.idcard}</td>
								<td>
									<c:if test="${item.culture==1}">中专/高中</c:if>
									<c:if test="${item.culture==2}">专科</c:if>
									<c:if test="${item.culture==3}">专科</c:if>
									<c:if test="${item.culture==4}">研究生</c:if>
									<c:if test="${item.culture==5}">研究生</c:if>
									<c:if test="${item.culture==6}">博士</c:if>
									<c:if test="${item.culture==7}">初中</c:if>
									<c:if test="${item.culture==8}">小学</c:if>
								</td>
								<td>
									<c:if test="${item.marital==1}">未婚</c:if>
									<c:if test="${item.marital==2}">已婚</c:if>
									<c:if test="${item.marital==3}">离异</c:if>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>