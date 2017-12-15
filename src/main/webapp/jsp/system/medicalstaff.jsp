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
			var name = $("#name").val();
			$.ajax({
				type : 'post',
				url : '${ctx}/medicalstaff/select.do',
				data : { "name" : name, },
				success : function(html) {
					$("#main-content").html(html);
				}
			});
		});
		
		$("#updateById").on("click", function() {// 根据 修改按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			var medicalStaffID = null;
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					medicalStaffID = tableID.rows[key].cells[1].innerHTML;	
					openFrom('/medicalstaff/toaddupdate.do?medicalStaffID='+medicalStaffID);					
				}
			});
		});		
		$("#deteleById").on("click", function() {// 根据 删除按钮的id属性创建onclick事件
			var tableID = document.getElementById('tableID');
			var medicalStaffID = null;
			$("table :radio").each(function(key, value) {				
				if ($(value).prop('checked')) {
					medicalStaffID = tableID.rows[key].cells[1].innerHTML;	
					$.ajax({
						type : 'post',
						url : '${ctx}/medicalstaff/delete.do',
						data : { "medicalStaffID" : medicalStaffID, },
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
			<div class="widget-title am-fl">医务人员维护：</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-form tpl-form-border-br">
				<div style="margin-bottom: 10px;">
					<label style="float: left;">姓名：</label> 
					<input id="name" name="name" type="text" value="${name}"
						style="width:30%;float:left;margin-right:10px;"class="tpl-form-no-bg tpl-form-input">
					<button type="button" id="select" class="am-btn am-btn-primary am-radius">查询</button>
					<button type="button" class="am-btn am-btn-primary am-radius" onclick="openFrom('/medicalstaff/toaddupdate.do?medicalStaffID=-1')"
						data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 700, height: 490}">新增</button>
					<button type="button" class="am-btn am-btn-primary am-radius"	id="updateById"
						data-am-modal="{target: '#ffrom', closeViaDimmer: 0,dimmer:0, width: 700, height: 490}">修改</button>
					<button type="button" class="am-btn am-btn-primary am-radius" id="deteleById">删除</button>
				</div>
				<div class="am-scrollable-horizontal">
					<table id="tableID"
						class="am-table am-table-bordered am-table-centered">
						<tr>
							<th><input type="radio" name="doc-radio-1"></th>
							<th>姓名</th>
							<th>性别</th>
							<th>籍贯</th>
							<th>民族</th>
							<th>出生日期</th>
							<th>身份证</th>
							<th>电话号码</th>
							<th>学历学位</th>
							<th>毕业学校</th>
							<th>专业</th>
						</tr>
						<c:forEach items="${medicalstaff}" var="item">
							<tr>
								<td><input type="radio" name="doc-radio-1"></td>
								<td style="display:none">${item.medicalStaffID}</td>
								<td>${item.name}</td>
								<td>${"1" == item.sex ? "男":"女"}</td>
								<td>${item.birth}</td>
								<td>${item.nationality}</td>
								<td><fmt:formatDate value="${item.birthdate}" type="date" pattern="yyyy-MM-dd" /></td>
								<td>${item.idcard}</td>
								<td>${item.phone}</td>
								<td>${item.academicName}</td>
								<td>${item.graduateSchool}</td>
								<td>${item.professional}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>