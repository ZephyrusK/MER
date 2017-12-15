<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<script type="text/javascript">
	function GaiBian(osel){//使用值改变事件           为ICD码绑定数据
        var diagnosisNameID=osel.options[osel.selectedIndex].value;
        $.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/icdCode.do',
				data : { "diagnosisNameID" : diagnosisNameID},
				success : function(data) {
					tab_sendValue.rows[ $(osel).parent().parent().index()].cells[3].innerHTML=data;
			}
		});
   }	
	function addRow() {//增加行
		var rightTbody = document.getElementById("tab_sendValue");
		var tr = document.createElement("tr");
		var td0 = document.createElement("td");
		var td1 = document.createElement("td");
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		td0.innerHTML = "<input type='checkbox' id='check_one' name='item'>";
		td1.innerHTML = "<select class='diagnosisTypeID' name='diagnosisTypeID'>"+
							"<option value=''>-----请选择-----</option>"+
						  	"<c:forEach items='${diagnosistype}' var='item'>"+
								"<option value='${item.diagnosisTypeID}' >${item.diagnosisTypeName}</option>"+
							"</c:forEach></select>";
		td2.innerHTML = "<select class='diag_name' name='diagnosisNameID' onChange='GaiBian(this)'>"+
							"<option value=''>-----请选择-----</option>"+
						  	"<c:forEach items='${diagnosisname}' var='item'>"+
								"<option value='${item.diagnosisNameID}' >${item.diagnosisName}</option>"+
							"</c:forEach></select>";
		td3.innerHTML = "<label id='icdCode' name='icdCode'></label>";
		tr.appendChild(td0);
		tr.appendChild(td1);
		tr.appendChild(td2);
		tr.appendChild(td3);
		rightTbody.appendChild(tr);
	}
	function removeRow() {//移除表格的所选行 
		var items = document.getElementsByName("item");
		var tbody = document.getElementById("tab_sendValue");
		for ( var i = 0; i < items.length; i++) {
			if (items[i].checked) {
				tbody.deleteRow(i);	
				i--;	
			}
		}			
	}
	function diagnosisInsert(){		
		var $selName = $("#tab_sendValue").find(".diag_name option:selected");
		var $selType = $("#tab_sendValue").find(".diagnosisTypeID option:selected");
		var list = new Array();
		var obj = new Object();
		for(var i =0;i<$selType.length;i++){
		console.log(i);
		  list.push({
		  			diagnosisTypeID:$selType[i].value,
		  			diagnosisNameID:$selName[i].value});		  			
		}
		var obj = JSON.stringify(list);
		console.log(obj);
		$.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/diagnosis_Insert.do',
				contentType:"application/json", 
				data: obj,//参数
                datatype: "json",
				success : function(html) {
					$("#main-content").html(html);
				}
			});		
	}
</script>

<div style="padding-left: 10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">诊断编辑：</div>
		</div>
		<div class="widget-body am-fr">
			<form class="am-form tpl-form-border-form tpl-form-border-br">
				<div class="am-scrollable-horizontal">
					<table id="table" class="am-table am-table-bordered am-table-centered">
						<thead>
							<tr>
								<th>选择</th>
								<th>类型</th>
								<th>诊断名</th>
								<th>ICD码</th>
							</tr>
						</thead>
						<tbody id="tab_sendValue">
							<tr>
								<td><input type="checkbox" id="check_one" name="item"></td>
								<td>
									<select class="diagnosisTypeID" name="diagnosisTypeID">
										<option value="">-----请选择-----</option>
										<c:forEach items="${diagnosistype}" var="item">
											<option value="${item.diagnosisTypeID}" >${item.diagnosisTypeName}</option>
										</c:forEach>
									</select>
								</td>
								<td>
									<select class="diag_name" name="diagnosisNameID" onChange="GaiBian(this)">
										<option value="">-----请选择-----</option>
										<c:forEach items="${diagnosisname}" var="item">
											<option value="${item.diagnosisNameID}" >${item.diagnosisName}</option>
										</c:forEach>
									</select>
								</td>
								<td><label id="icdCode" ></label></td>
							</tr>							
						</tbody>
					</table>
					<div style="text-align: center;">						
						<!-- <button type="button" class="am-btn am-btn-primary am-radius"
							data-am-modal="{target: '#insert', closeViaDimmer: 0,dimmer:0, width: 500, height: 390}">新增</button>
						<button type="button" class="am-btn am-btn-primary am-radius"
							data-am-modal="{target: '#update', closeViaDimmer: 0,dimmer:0, width: 500, height: 390}">修改</button> -->
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="addRow()">增加行</button>
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="removeRow()">移除行</button>　　
						<button type="button" class="am-btn am-btn-warning am-radius" onclick="diagnosisInsert()">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	<!-- 新增诊断
<div class="am-modal am-modal-no-btn" tabindex="-1" id="insert"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">新增诊断
			<a href="javascript: void(0)" class="am-close am-close-spin"data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">诊断</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" id="user-name">
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">诊断类型</div>
							<div class="am-u-sm-8">
								<select>
										<option>测试一</option>
										<option>测试二</option>
								</select>
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">ICD码</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" id="user-name">
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
					  	<div class="am-g">
	                       <div class="am-u-sm-4">确诊时间</div>
	                       <div class="am-u-sm-8">
	                           <input type="text" class="tpl-form-no-bg tpl-form-input"data-am-datepicker="">
	                       </div>
	                    </div>
	                </div>
					<br/>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<div class="am-modal am-modal-no-btn" tabindex="-1" id="update"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">修改诊断
			<a href="javascript: void(0)" class="am-close am-close-spin"data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>					
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">诊断</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" id="user-name">
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">诊断类型</div>
							<div class="am-u-sm-8">
								<select>
										<option>测试一</option>
										<option>测试二</option>
								</select>
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
						<div class="am-g">
							<div class="am-u-sm-4">确诊人</div>
							<div class="am-u-sm-8">
								<input type="text" class="tpl-form-input" id="user-name">
							</div>
						</div>
					</div>
					<div class="am-panel-bd">
					  	<div class="am-g">
	                       <div class="am-u-sm-4">确诊时间</div>
	                       <div class="am-u-sm-8">
	                           <input type="text" class="tpl-form-no-bg tpl-form-input"data-am-datepicker="">
	                       </div>
	                    </div>
	                </div>
					<br/>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">保存</button>
						<button type="button" class="am-btn am-btn-primary am-radius">退出</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>  -->
