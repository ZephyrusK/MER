<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set value="${pageContext.request.contextPath }" scope="page"	var="ctx"></c:set>

<style type="text/css">
.am-table tbody>tr>td {
	padding-left: 0px; ! important;
	padding-right: 0px; ! important;	
}

.am-table tbody>tr>td>select, .am-table tbody>tr>td>input{
	width: 95%;	
}

</style>

<script type="text/javascript">
	function GaiBian(osel,tbody){//使用值改变事件           为ICD码绑定数据
        var drugID=osel.options[osel.selectedIndex].value;
         $.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/byDrugID.do',
				data : { "drugID" : drugID},
				success : function(data) {				
					tbody.rows[ $(osel).parent().parent().index()].cells[3].innerHTML=data.specificationName;
					tbody.rows[ $(osel).parent().parent().index()].cells[4].innerHTML=data.unitName;
					tbody.rows[ $(osel).parent().parent().index()].cells[5].innerHTML=data.wayName;
			}
		});
   }	
	function addRow(tbody) {//增加行
		var rightTbody = document.getElementById(tbody);
		var tr = document.createElement("tr");
		var td0 = document.createElement("td");
		var td1 = document.createElement("td");
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		var td4 = document.createElement("td");
		var td5 = document.createElement("td");
		var td6 = document.createElement("td");
		var td7 = document.createElement("td");
		var td8 = document.createElement("td");
		var td9 = document.createElement("td");
		var td10 = document.createElement("td");		
		td1.innerHTML = "<select class='adviceCategoryID' name='adviceCategoryID'>"+
							"<option value=''>--请选择-</option>"+
							"<c:forEach items='${adviceCategory}' var='item'>"+
								"<option value='${item.adviceCategoryID}' >${item.adviceCategoryName}</option>"+
							"</c:forEach></select>";
		if(tbody=="tbody_YiZhu"){
				td0.innerHTML = "<input type='checkbox' id='check_one' name='item_YiZhu'>";
				td2.innerHTML = "<select class='drugID' name='drugID' onChange='GaiBian(this,tbody_YiZhu)'>"+
							"<option value=''>--请选择-</option>"+
						  	"<c:forEach items='${drug_Xi}' var='item'>"+
								"<option value='${item.drugID}' >${item.drugName}</option>"+
							"</c:forEach></select>";
		}else{
				td0.innerHTML = "<input type='checkbox' id='check_one' name='item_CaoYao'>";
				td2.innerHTML = "<select class='drugID' name='drugID' onChange='GaiBian(this,tbody_CaoYao)'>"+
							"<option value=''>--请选择-</option>"+
						  	"<c:forEach items='${drug_Zhong}' var='item'>"+
								"<option value='${item.drugID}' >${item.drugName}</option>"+
							"</c:forEach></select>";			
		}
							
		td3.innerHTML = "<label id='specificationName' ></label>";	
		td4.innerHTML = "<label id='unitName' ></label>";
		td5.innerHTML = "<label id='wayName' ></label>";
		td6.innerHTML = "<input type='text' class='dose' style='width:70px;' name='dose'/>";	
		td7.innerHTML = "<input type='text' class='dayNum' style='width:70px;' name='dayNum'/>";
		td8.innerHTML = "<input type='text' class='total' style='width:70px;' name='total'/>";
		td9.innerHTML = "<select class='frequencyID' name='frequencyID'>"+
							"<option value=''>--请选择-</option>"+
						  	"<c:forEach items='${frequency}' var='item'>"+
								"<option value='${item.frequencyID}' >${item.frequencyName}</option>"+
							"</c:forEach></select>";
		td10.innerHTML = "<input type='text' class='doctoNote'  name='doctoNote'/>";
		tr.appendChild(td0);
		tr.appendChild(td1);
		tr.appendChild(td2);
		tr.appendChild(td3);
		tr.appendChild(td4);
		tr.appendChild(td5);
		tr.appendChild(td6);
		tr.appendChild(td7);
		tr.appendChild(td8);
		tr.appendChild(td9);
		tr.appendChild(td10);
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
	function adviceInsert(tbody){		
		var adviceCategoryID = $(tbody).find(".adviceCategoryID option:selected");
		var drugID = $(tbody).find(".drugID option:selected");
		var frequencyID = $(tbody).find(".frequencyID option:selected");
		var list = new Array();
		var adviceTypeID=null;
		if(tbody=="#tbody_YiZhu"){
			adviceTypeID=1;
		}else{
			adviceTypeID=2;
		}
		for(var i =0;i<drugID.length;i++){
		  list.push({
		  				adviceTypeID : adviceTypeID,
		  			adviceCategoryID : adviceCategoryID[i].value,
		  					  drugID : drugID[i].value,
		  						dose : $(tbody).find(".dose")[i].value,
							  dayNum : $(tbody).find(".dayNum")[i].value,
							   total : $(tbody).find(".total")[i].value,		  			
		  				 frequencyID : frequencyID[i].value,
		  				   doctoNote : $(tbody).find(".doctoNote")[i].value,
		  			});		  			
		}
		var obj = JSON.stringify(list);
		console.log(obj);
		$.ajax({
				type : 'post',
				url : '${ctx}/diagnosis/advice_Insert.do',
				contentType:"application/json", 
				data: obj,//参数
                datatype: "json",
				success : function(html) {
					$("#main-content").html(html);
				}
		});
	}	
</script>
<div style="padding-left:10px;">
	<div class="widget am-cf">
		<div class="widget-head am-cf">
			<div class="widget-title am-fl">医嘱编辑：</div>
		</div>
		<div class="am-tabs" data-am-tabs>
			<ul class="am-tabs-nav am-nav am-nav-tabs">
				<li class="am-active"><a href="#tab1">医嘱</a></li>
				<li><a href="#tab2">草药</a></li>
			</ul>
			<div class="am-tabs-bd">
				<div class="am-tab-panel am-fade am-in am-active" id="tab1">
					<div class="widget-body-lg" style="width:100%">
						<table class="am-table am-table-bordered am-table-centered"id="example-r">
<%-- 							<colgroup>
								<col width="13%"/>
							</colgroup> --%>
							<thead>
								<tr>
									<th>选择</th>
									<th>类别</th>
									<th>药物</th>
									<th>规格</th>
									<th>单位</th>
									<th>途径</th>									
									<th>剂量</th>									
									<th>天数</th>
									<th>总量</th>
									<th>频率</th>									
									<th>医生说明</th>
								</tr>
							</thead>
							<tbody id="tbody_YiZhu">
								<tr>
									<td><input type="checkbox" id="check_one" name="item_YiZhu"/></td>
									<td>
										<select class="adviceCategoryID" name="adviceCategoryID">
											<option value="">--请选择-</option>
											<c:forEach items="${adviceCategory}" var="item">
												<option value="${item.adviceCategoryID}" >${item.adviceCategoryName}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<select class="drugID" name="drugID" onChange="GaiBian(this,tbody_YiZhu)">
											<option value="">--请选择-</option>
											<c:forEach items="${drug_Xi}" var="item">
												<option value="${item.drugID}" >${item.drugName}</option>
											</c:forEach>
										</select>
									</td>
									<td><label id="specificationName" ></label></td>
									<td><label id="unitName" ></label></td>
									<td><label id="wayName" ></label></td>
									<td><input type='text' class="dose" style="width:70px;" name="dose"/></td>
									<td><input type='text' class="dayNum" style="width:70px;" name="dayNum"/></td>
									<td><input type='text' class="total" style="width:70px;" name="total"/></td>
									<td>
										<select class="frequencyID" name="frequencyID">
											<option value="">--请选择-</option>
											<c:forEach items="${frequency}" var="item">
												<option value="${item.frequencyID}" >${item.frequencyName}</option>
											</c:forEach>
										</select>
									</td>
									<td><input type='text' class="doctoNote" name="doctoNote"/></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row" style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="addRow('tbody_YiZhu')">增加行</button>
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="removeRow('item_YiZhu','tbody_YiZhu')">移除行</button>　　
<!-- 						<button type="button" class="am-btn am-btn-primary am-radius"
						data-am-modal="{target: '#disease', closeViaDimmer: 0,dimmer:0, width: 970, height: 500}">医嘱套餐</button> -->
						<button type="button" class="am-btn am-btn-warning am-radius" onclick="adviceInsert('#tbody_YiZhu')">提交</button>
					</div>
				</div>
				<div class="am-tab-panel am-fade" id="tab2">
					<div class="widget-body-lg" style="width: 100%">
						<table class="am-table am-table-bordered am-table-centered"id="example-r">
							<thead>
								<tr>
									<th>选择</th>
									<th>类别</th>
									<th>中草药</th>
									<th>规格</th>
									<th>单位</th>
									<th>途径</th>									
									<th>剂量</th>									
									<th>剂数</th>
									<th>总量</th>
									<th>频率</th>
									<th>医生说明</th>
								</tr>
							</thead>
							<tbody id="tbody_CaoYao">
								<tr>
									<td><input type="checkbox" id="check_one" name="item_CaoYao"></td>
									<td>
										<select class="adviceCategoryID" name="adviceCategoryID">
											<option value="">--请选择-</option>
											<c:forEach items="${adviceCategory}" var="item">
												<option value="${item.adviceCategoryID}" >${item.adviceCategoryName}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<select class="drugID" name="drugID" onChange="GaiBian(this,tbody_CaoYao)">
											<option value="">--请选择-</option>
											<c:forEach items="${drug_Zhong}" var="item">
												<option value="${item.drugID}" >${item.drugName}</option>
											</c:forEach>
										</select>
									</td>
									<td><label id="specificationName" ></label></td>
									<td><label id="unitName" ></label></td>
									<td><label id="wayName" ></label></td>
									<td><input type='text' class="dose" style="width:70px;" name="dose"/></td>
									<td><input type='text' class="dayNum" style="width:70px;" name="dayNum"/></td>
									<td><input type='text' class="total" style="width:70px;" name="total"/></td>
									<td>
										<select class="frequencyID" name="frequencyID">
											<option value="">--请选择-</option>
											<c:forEach items="${frequency}" var="item">
												<option value="${item.frequencyID}" >${item.frequencyName}</option>
											</c:forEach>
										</select>
									</td>
									<td><input type='text' class="doctoNote" name="doctoNote"/></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row" style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="addRow('tbody_CaoYao')">增加行</button>
						<button type="button" class="am-btn am-btn-primary am-radius" onclick="removeRow('item_CaoYao','tbody_CaoYao')">移除行</button>　　
						<!-- <button type="button" class="am-btn am-btn-primary am-radius"
						data-am-modal="{target: '#herbal', closeViaDimmer: 0,dimmer:0, width: 970, height: 500}">草药套餐</button> -->
						<button type="button" class="am-btn am-btn-warning am-radius" onclick="adviceInsert('#tbody_CaoYao')">提交</button>					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 医嘱套餐 -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="disease"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">医嘱套餐
		    <a href="javascript: void(0)" class="am-close am-close-spin"data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<div class="am-g">
					  <div class="am-u-sm-3">
					  	123
				  			<br>
				  				+123
				  				<br>
				  					+123
				  		<ul id="leftTree" class="ztree"></ul>
					  </div>
					  <div class="am-u-sm-9" style="border: 1px solid;color:black;">
					  	<div class="row" style="text-align:center;background-color:rgba(0,180,242,.25)">医嘱套餐</div>
					    	<table  class="am-table am-table-bordered am-table-centered">
							  	<tbody>
									<tr>
										<td><input type="checkbox"></td>
										<td>雷公藤多苷片</td>
										<td>10mg*50片</td>
										<td>口服</td>
										<td>50mg</td>
										<td>bid</td>
										<td>　　</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>葡萄糖注射液</td>
										<td>20ml:10g</td>
										<td>静滴</td>
										<td>20ml</td>
										<td>bid</td>
										<td>　　</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>头孢拉定针</td>
										<td>1g冻干粉针</td>
										<td>　　</td>
										<td>1g</td>
										<td>　　</td>
										<td>　　</td>
									</tr>									
								</tbody>
							</table>
					  </div>
					</div>
					<br>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">导入</button>
						<button type="button" class="am-btn am-btn-primary am-radius">关闭</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<!-- 草药套餐  herbal  -->
<div class="am-modal am-modal-no-btn" tabindex="-1" id="herbal"style="background-color: rgba(105,105,105,.6)">
	<div class="am-modal-dialog"style="margin-top: 50px;margin-left: 220px;">
		<div class="am-modal-hd"style="padding:0px;background-color: rgba(0,180,242,.75);">草药套餐
		    <a href="javascript: void(0)" class="am-close am-close-spin"data-am-modal-close>&times;</a>
		</div>
		<div class="am-modal-bd">
			<form method="post" class="am-form am-form-horizontal">
				<fieldset>
					<div class="am-g">
					  <div class="am-u-sm-3">
					  	123
				  			<br>
				  				+123
				  				<br>
				  					+123
				  		<ul id="leftTree" class="ztree"></ul>
					  </div>
					  <div class="am-u-sm-9" style="border: 1px solid;color:black;">
					  	<div class="row" style="text-align:center;background-color:rgba(0,180,242,.25)">草药套餐</div>
					    	<table  class="am-table am-table-bordered am-table-centered">
							  	<tbody>
									<tr>
										<td><input type="checkbox"></td>
										<td>金樱子</td>
										<td>10mg*50片</td>
										<td>包煎</td>
										<td>50mg</td>
										<td>bid</td>
										<td>　　</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>金银花</td>
										<td>20ml:10g</td>
										<td>水煎</td>
										<td>20ml</td>
										<td>bid</td>
										<td>　　</td>
									</tr>
									<tr>
										<td><input type="checkbox"></td>
										<td>蝉壳</td>
										<td>1g冻干粉针</td>
										<td>　　</td>
										<td>磨粉</td>
										<td>　　</td>
										<td>　　</td>
									</tr>									
								</tbody>
							</table>
					  </div>
					</div>
					<br>
					<div style="text-align: center;">
						<button type="button" class="am-btn am-btn-primary am-radius">导入</button>
						<button type="button" class="am-btn am-btn-primary am-radius">关闭</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>