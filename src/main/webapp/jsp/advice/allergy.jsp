<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page" var="ctx"></c:set>

<script type="text/javascript">
	function allergicInsert(){//新增过敏药物  ---提交按钮
        $.ajax({
				type : 'post',
				url : '${ctx}/patientInfo/allergyInsert.do',
				data : $('#insertForm').serialize(),
				success : function(html) {
					$("#main-content").html(html);
			}
		});
   }
   
   function toUpdate(){//绑定过敏药物到修改页面
   		var tableID = document.getElementById('tableID');
		$("table :radio").each(function(key, value) {				
			if ($(value).prop('checked')) {
				document.getElementById("allergicID").value = tableID.rows[key+1].cells[1].innerHTML;	
				document.getElementById("allergicTypeID").value = tableID.rows[key+1].cells[2].innerHTML;
				document.getElementById("allergicDescribe").value = tableID.rows[key+1].cells[4].innerHTML;					
			}
		});
   }
   
   function allergicUpadte(){//修改过敏药物  ---提交按钮
        $.ajax({
				type : 'post',
				url : '${ctx}/patientInfo/allergyInsert.do',
				data : $('#updateForm').serialize(),
				success : function(html) {
					$("#main-content").html(html);
			}
		});
   }	
</script>
<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">过敏药物：</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-form tpl-form-border-br">
				<div class="am-scrollable-horizontal">
					<c:if test="${empty allergic}">没有过敏记录</c:if>
					<c:if test="${not empty allergic}">
						<table id="tableID" class="am-table am-table-bordered am-table-centered">
							<thead>
								<tr>
									<td>选择</td>
									<td>类型</td>
									<td>过敏药物描述</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${allergic}" var="item">
									<tr>
										<td><input type="radio" name="doc-radio-1"></td>
										<td style="display:none">${item.allergicID}</td>
										<td style="display:none">${item.allergicTypeID}</td>
										<td>${item.allergicTypeName}</td>
										<td>${item.allergicDescribe}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius"
							data-am-modal="{target: '#insert', closeViaDimmer: 0,dimmer:0, width: 500, height: 300}">新增</button>
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="toUpdate()"
							data-am-modal="{target: '#update', closeViaDimmer: 0,dimmer:0, width: 500, height: 300}">修改</button>
						<button type="button" class="am-btn am-btn-primary am-radius" >删除</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- 新增过敏药物 -->	
<div class="am-modal am-modal-no-btn" tabindex="-1" id="insert"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">新增过敏药物
				<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post"  id="insertForm" class="am-form am-form-horizontal">
				<fieldset>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">类型</div>
							<div class="am-u-sm-8">
								<select  name="allergicTypeID">
									<option value="">-----请选择-----</option>
									<c:forEach items="${allergicType}" var="item">
										<option value="${item.allergicTypeID}" >${item.allergicTypeName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">过敏药物描述</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" name="allergicDescribe">
							</div>
						</div>
					</div>
					<br/>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="allergicInsert()">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius" data-am-modal-close>退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<!-- 修改诊断 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="update"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">修改过敏药物
				<a href="javascript: void(0)" class="am-close am-close-spin"data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" id="updateForm" class="am-form am-form-horizontal">
				<fieldset>
					<input type="hidden" name="allergicID" id="allergicID">
					<div class="am-panel-bd">					
						<div class="am-g">
							<div class="am-u-sm-4">类型</div>
							<div class="am-u-sm-8">
								<select name="allergicTypeID" id="allergicTypeID">
									<option value="">-----请选择-----</option>
									<c:forEach items="${allergicType}" var="item">
										<option value="${item.allergicTypeID}" >${item.allergicTypeName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">过敏药物描述</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" id="allergicDescribe" name="allergicDescribe">
							</div>
						</div>
					</div>
					<br/>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="allergicUpadte()">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius" data-am-modal-close>退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>