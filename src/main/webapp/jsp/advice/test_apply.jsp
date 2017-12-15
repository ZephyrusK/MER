<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<style type="text/css">
.am-table .ttbody>tr>td {
	border-top: 0px solid #ddd; ! important;
	vertical-align: inherit; ! important;
	text-align: center;
}

.am-table .ttbody>tr>td input[type=text] {
	border: 0px;
	border-bottom: #000000 1px solid;
	background-color: #fff;
}
</style>

<script type="text/javascript">
	reloadjs('${ctx}/assets/js/jquery.min.js');
	reloadjs('${ctx}/assets/js/amazeui.min.js');
    function GaiBian(osel,tbody){//使用值改变事件           为单位、参考范围绑定数据
        var testItemID=osel.options[osel.selectedIndex].value;
         $.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/byTestItemID.do',
				data : { "testItemID" : testItemID},
				success : function(data) {
					if(data.unit == undefined){					
						tbody.rows[ $(osel).parent().parent().index()].cells[2].innerHTML="";
					}else{
						tbody.rows[ $(osel).parent().parent().index()].cells[2].innerHTML=data.unit;
					}
					if(data.rrs == undefined){
						tbody.rows[ $(osel).parent().parent().index()].cells[3].innerHTML="";
					}else{
						tbody.rows[ $(osel).parent().parent().index()].cells[3].innerHTML=data.rrs;
					}
			}
		});
    }	
	function addRow() {//增加行
		var rightTbody = document.getElementById("test_tbody");
		var tr = document.createElement("tr");
		var td0 = document.createElement("td");
		var td1 = document.createElement("td");
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		var td4 = document.createElement("td");	
		td0.innerHTML = "<input type='checkbox' id='check_one' name='item'>";
		td1.innerHTML = "<select class='testItemID' name='testItemID' onclick='GaiBian(this,test_tbody)'>"+
							"<option value=''>--请选择-</option>"+
							"<c:forEach items='${testItem}' var='item'>"+
								"<option value='${item.testItemID}' >${item.testItemName}</option>"+
							"</c:forEach></select>";					
		td2.innerHTML = "<label id='unit' ></label>";	
		td3.innerHTML = "<label id='rrs' ></label>";
		td4.innerHTML = "<input type='text' class='remark' name='remarks'>";
		tr.appendChild(td0);
		tr.appendChild(td1);
		tr.appendChild(td2);
		tr.appendChild(td3);
		tr.appendChild(td4);
		rightTbody.appendChild(tr);
	}
	function removeRow(checkbox,tbody) {//移除表格的所选行 
		var items = document.getElementsByName(checkbox);
		var tbodys = document.getElementById(tbody);
		for ( var i = 0; i < items.length; i++) {
			if (items[i].checked) {
				tbodys.deleteRow(i);	
				i--;	
			}
		}
	}
	function testInsert(tbody){		
		//document.getElementById("insertForm").submit();
		/* var testItemID = $(tbody).find(".testItemID option:selected");
		var list = {};		
		list[0] = {};
		list[0].id = "1";		
		list[1] = {};
		list[1].id = "1"; 		
		var obj = {
		"id":"jdjdj",
		"list":list
		};		
		var list = new Array();
		for(var i =0;i<testItemID.length;i++){
		  list.push({	  			
		  				 testItemID : testItemID[i].value,
	  				   		 remark : $(tbody).find(".remark")[i].value,
		  			});		  			
		}
		var obj = JSON.stringify(list);
		console.log(obj);*/
		$.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/test_Insert.do',
				data: $("#insertForm").serialize(),//参数
				success : function(html) {
					$("#main-content").html(html);
				}
		}); 
	}	
</script>
<div style="padding-left: 10px;">	
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">检验申请：</div>
		</div>
		<form class="am-form am-form-horizontal" id="insertForm" method="post">
			<fieldset>				
				<div class="am-panel am-panel-secondary">
					<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">检验单：</div>					
					<table class="am-table">
						<tbody class="ttbody">
							<tr>
								<td>检验名：</td>
								<td>
									<input type="text" class="testName" name="testName">									
								</td>
								<td>样本：</td>
								<td>
									<select name="sampleID" id="sampleID">
										<option value="">-----请选择-----</option>
										<c:forEach items="${sample}" var="item">
											<option value="${item.sampleID}" >${item.sampleName}</option>
										</c:forEach>
									</select>
								</td>						
							</tr>
							<tr>
								<td>申请日期：</td>
								<td>
									<input type="text" name="applyTime" 
									class="tpl-form-no-bg tpl-form-input" data-am-datepicker readonly >
								</td>
								<td>备注：</td>
								<td><input type="text" class="tpl-form-input" name="remark"></td>
							</tr>
							<tr>
								<td>加急否：</td>
								<td>
									<input type="radio" name="urgent" value="1" >加急　　　　
									<input type="radio" name="urgent" value="2" >明晨　　
								</td>
							</tr>					
						</tbody>
					</table>
				</div>
				<div class="am-panel am-panel-secondary">
					<div class="am-panel-hd" style="padding-top: 0px;padding-bottom: 0px;">检验项目：</div>
					<table class="am-table am-table-bordered am-table-centered"style="margin-top: 10px; margin-bottom: 10px;">
						<thead>
							<tr>
								<th>选择</th>
								<th>项目名称</th>								
								<th>单位</th>
								<th>参考范围</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody id="test_tbody">
							<tr>
								<td><input type="checkbox" id="check_one" name="item"/></td>
								<td>
									<select name="testItemID" class="testItemID" onclick="GaiBian(this,test_tbody)">
										<option value="">-----请选择-----</option>
										<c:forEach items="${testItem}" var="item">
											<option value="${item.testItemID}" >${item.testItemName}</option>
										</c:forEach>
									</select>
								</td>
								<td><label id="unit" ></label></td>
								<td><label id="rrs" ></label></td>
								<td>
									<input type="text" class="remark" name="remarks">
								</td>
							</tr>
						</tbody>
					</table>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="addRow()">增加行</button>
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="removeRow('item','test_tbody')">移除行</button>
					</div>
				</div>
				<div style="text-align: center;">
					<button type="button" class="am-btn am-btn-warning am-radius" onclick="testInsert(test_tbody)">提交</button>
					<!-- <button type="button" class="am-btn am-btn-primary am-radius">退出</button> -->
				</div>
			</fieldset>
		</form>
	</div>
</div>